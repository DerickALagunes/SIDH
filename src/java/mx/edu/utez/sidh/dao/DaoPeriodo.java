package mx.edu.utez.sidh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import mx.edu.utez.sidh.bean.Periodo;
import static mx.edu.utez.sidh.utils.Conexion.getConexion;

/**
 * Clase Dao para el Periodo, CRUD.
 *
 * @author Nancy
 * @author x
 */
public class DaoPeriodo {
    
    /**
     * Método R(Listar), obtiene todos los periodos de la Base de Datos
     *
     * @return Lista
     * @author Nancy
     * @author x
     */
    public ArrayList<Periodo> getPeriodos() {
        ArrayList<Periodo> lista = new ArrayList();

        return lista;
    }

    /**
     * Método para buscar un periodo en especifico de la Base de Datos
     *
     * @return periodo
     * @author Nancy
     * @author x
     */
    public Periodo getPeriodo(int id) {
        Periodo periodo = new Periodo();

        return periodo;

    }

    /**
     * Método create, recibe un objeto Periodo y lo registra en la Base de Datos
     *
     * @param periodo
     * @return boolean
     * @author Nancy
     * @author x
     */
    public boolean createPeriodo(Periodo periodo) {
        return false;
    }

    /**
     * Método update, recibe un objeto Periodo y lo actualiza en la Base de
     * Datos
     *
     * @param periodo
     * @return boolean
     * @author Nancy
     * @author x
     */
    public boolean updatePeriodo(Periodo periodo) {
        return false;
    }

    /**
     * Método delete, recibe un objeto Periodo y lo borra de la Base de Datos
     *
     * @param periodo
     * @return boolean
     * @author Nancy
     * @author x
     */
    public boolean deletePeriodo(Periodo periodo) {
        return false;
    }

    /**
     * 
     * @author Derick
     * @return 
     */
    public int getIdNuevoPeriodo() {       
        int id = 0;
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("Select MAX(id) from periodos");
            ResultSet res = ps.executeQuery();
            while (res.next()) {
               id = res.getInt(1);
            }

            res.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("" + e.getMessage());
        }
        return id;
        
    }
}
