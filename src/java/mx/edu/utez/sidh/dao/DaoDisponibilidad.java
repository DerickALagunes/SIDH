package mx.edu.utez.sidh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import mx.edu.utez.sidh.bean.Disponibilidad;
import mx.edu.utez.sidh.bean.Usuario;
import static mx.edu.utez.sidh.utils.Conexion.getConexion;

/**
 * Clase Dao para el Disponibilidad, CRUD.
 *
 * @author Nancy
 * @author x
 */
public class DaoDisponibilidad {

    /**
     * Método create, recibe un objeto Disponibilidad y lo registra en la Base
     * de Datos
     *
     * @param disponibilidad
     * @param user
     * @return boolean
     * @author Nancy
     * @author x
     * @throws java.sql.SQLException
     */
    public boolean createDisponibilidad(Disponibilidad disponibilidad, Usuario user) throws SQLException {
        boolean registrado = false;

        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO disponibilidad(dia, h7, h8, h9, h10, h11, h12, "
                    + "h13, h14, h15, h16, h17, h18, h19, h20, "
                    + "notas, estado) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, disponibilidad.getDia());
            ps.setString(2, String.valueOf(disponibilidad.getH7()));
            ps.setString(3, String.valueOf(disponibilidad.getH8()));
            ps.setString(4, String.valueOf(disponibilidad.getH9()));
            ps.setString(5, String.valueOf(disponibilidad.getH10()));
            ps.setString(6, String.valueOf(disponibilidad.getH11()));
            ps.setString(7, String.valueOf(disponibilidad.getH12()));
            ps.setString(8, String.valueOf(disponibilidad.getH13()));
            ps.setString(9, String.valueOf(disponibilidad.getH14()));
            ps.setString(10, String.valueOf(disponibilidad.getH15()));
            ps.setString(11, String.valueOf(disponibilidad.getH16()));
            ps.setString(12, String.valueOf(disponibilidad.getH17()));
            ps.setString(13, String.valueOf(disponibilidad.getH18()));
            ps.setString(14, String.valueOf(disponibilidad.getH19()));
            ps.setString(15, String.valueOf(disponibilidad.getH20()));
            ps.setString(16, disponibilidad.getNotas());
            ps.setBoolean(17, true);

            registrado = (ps.executeUpdate() > 0);
            ResultSet id = ps.getGeneratedKeys();

            if (registrado) {
                //ligarlo al usuario y periodo

                id.next();
                Connection con2 = getConexion();
                PreparedStatement ps2 = con.prepareStatement("INSERT INTO "
                        + "usuario_tiene_disponibilidad(id_usuario, id_disponibilidad) "
                        + "VALUES (?,?)");
                ps2.setInt(1, user.getId());
                ps2.setInt(2, id.getInt(1));

                DaoPeriodo daoPeriodo = new DaoPeriodo();

                Connection con3 = getConexion();
                PreparedStatement ps3 = con.prepareStatement("INSERT INTO "
                        + "disponibilidad_tiene_periodos(id_periodo, id_disponibilidad) "
                        + "VALUES (?,?)");
                ps3.setInt(1, daoPeriodo.getIdNuevoPeriodo());
                ps3.setInt(2, id.getInt(1));

                registrado = (ps2.executeUpdate() > 0 && ps3.executeUpdate() > 0);

                ps2.close();
                con2.close();
                ps3.close();
                con3.close();

            }

            ps.close();
            con.close();

        } catch (SQLException e) {
            System.out.println("Error:" + e.getMessage());
            throw e;
        }

        return registrado;

    }

    /**
     * Método para borrar el registro de disponibilidad actual de un usuario
     * 
     * @param idUser
     * @return
     * @author derick
     */
    public Boolean borrarDisponibilidadDe(int idUser) {
        boolean flag = false;
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("DELETE FROM Disponibilidad where id IN (SELECT dp.id FROM disponibilidad_tiene_periodos AS dp JOIN usuario_tiene_disponibilidad AS ud ON ud.id_disponibilidad=dp.id_disponibilidad WHERE dp.id_periodo IN(SELECT MAX(id) FROM periodos) and ud.id_usuario = ?)");
            ps.setInt(1, idUser);

            if (ps.executeUpdate() >= 1) {
                flag = true;
            }

            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("UsuarioDao.obtenerUsuario \n" + e.getMessage());
        }
        return flag;
    }
    
    /**
     * Método para saber si un usuario ya tiene disp en el periodo actual
     * 
     * @author Derick
     * @param idUser
     * @return 
     */
    public Boolean UsuarioTieneDisponibilidad(int idUser) {
        boolean flag = false;
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("Select COUNT(id) FROM Disponibilidad where id IN (SELECT dp.id FROM disponibilidad_tiene_periodos AS dp JOIN usuario_tiene_disponibilidad AS ud ON ud.id_disponibilidad=dp.id_disponibilidad WHERE dp.id_periodo IN(SELECT MAX(id) FROM periodos) and ud.id_usuario = ?)");
            ps.setInt(1, idUser);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                if (rs.getInt(1)!=0) {
                    flag = true;
                }                         
            }

            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("" + e.getMessage());
        }
        return flag;
    }

}
