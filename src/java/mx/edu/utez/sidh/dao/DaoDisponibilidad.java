package mx.edu.utez.sidh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
     * Método create, recibe un objeto Disponibilidad y lo registra en la Base de Datos
     *
     * @param disponibilidad
     * @return boolean
     * @author Nancy
     * @author x
     */
    public boolean createDisponibilidad(Disponibilidad disponibilidad) {
        return false;
    }

    /**
     * Método update, recibe un objeto Disponibilidad y lo actualiza en la Base de
     * Datos
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
     * Método delete, recibe un objeto Disponibilidad y lo borra de la Base de Datos
     *
     * @param disponibilidad
     * @return boolean
     * @author Nancy
     * @author x
     */
    public boolean deleteDisponibilidad(Disponibilidad disponibilidad) {
        return false;
    }
    
    
    public Boolean borrarDisponibilidadDe(int idUser) {
        boolean flag = false;
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("DELETE FROM Disponibilidad where id IN (SELECT dp.id FROM disponibilidad_tiene_periodos AS dp JOIN usuario_tiene_disponibilidad AS ud ON ud.id_disponibilidad=dp.id_disponibilidad WHERE dp.id_periodo IN(SELECT MAX(id) FROM periodos) and ud.id_usuario = ?)");
            ps.setInt(1, idUser);
            
            if (ps.executeUpdate()>=1) {
                flag=true;
            }
            
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("UsuarioDao.obtenerUsuario \n" + e.getMessage());
        }
       return flag;
    }
    
}
