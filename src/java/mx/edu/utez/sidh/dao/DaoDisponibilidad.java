package mx.edu.utez.sidh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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
     * Método R(Listar), obtiene todos los disponibilidades de la Base de Datos
     *
     * @return Lista
     * @author Nancy
     * @author x
     */
    public ArrayList<Disponibilidad> getDisponibilidades() {
        ArrayList<Disponibilidad> lista = new ArrayList();

        return lista;
    }

    /**
     * Método para buscar un disponibilidad en especifico de la Base de Datos
     *
     * @return disponibilidad
     * @author Nancy
     * @author x
     */
    public Disponibilidad getDisponibilidad(int id) {
        Disponibilidad disponibilidad = new Disponibilidad();

        return disponibilidad;

    }

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
            ps.setBoolean(2, disponibilidad.isH7());
            ps.setBoolean(3, disponibilidad.isH8());
            ps.setBoolean(4, disponibilidad.isH9());
            ps.setBoolean(5, disponibilidad.isH10());
            ps.setBoolean(6, disponibilidad.isH11());
            ps.setBoolean(7, disponibilidad.isH12());
            ps.setBoolean(8, disponibilidad.isH13());
            ps.setBoolean(9, disponibilidad.isH14());
            ps.setBoolean(10, disponibilidad.isH15());
            ps.setBoolean(11, disponibilidad.isH16());
            ps.setBoolean(12, disponibilidad.isH17());
            ps.setBoolean(13, disponibilidad.isH18());
            ps.setBoolean(14, disponibilidad.isH19());
            ps.setBoolean(15, disponibilidad.isH20());
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
     * Método update, recibe un objeto Disponibilidad y lo actualiza en la Base
     * de Datos
     *
     * @param disponibilidad
     * @return boolean
     * @author Nancy
     * @author x
     */
    public boolean updateDisponibilidad(Disponibilidad disponibilidad) {
        return false;
    }

    /**
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
