package mx.edu.utez.sidh.dao;

import java.sql.Connection;
import java.sql.Date;
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

        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("Select * from periodos ");
            ResultSet res = ps.executeQuery();
            while (res.next()) {
                Periodo periodo = new Periodo();
                periodo.setId(res.getInt(1));
                periodo.setPeriodo(res.getString(2));
                periodo.setInicio(res.getDate(3));
                periodo.setFin(res.getDate(4));
                // obj.setDepartamento(DepartamentoDao.consultarDepartamento(res.getInt(9)));           
            }
            res.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("DaoPeriodo.getPeriodos \n" + e.getMessage());
        }
        return lista;
    }

    
    public static ArrayList<Periodo> getPeriodosActivos() {
        ArrayList<Periodo> lista = new ArrayList();
        
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("Select * from periodos WHERE estado=1");
            ResultSet res = ps.executeQuery();
            while (res.next()) {
                Periodo periodo = new Periodo();
                periodo.setId(res.getInt(1));
                periodo.setPeriodo(res.getString(2));
                periodo.setInicio(res.getDate(3));
                periodo.setFin(res.getDate(4));
                lista.add(periodo);         
            }
            res.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("DaoPeriodo.getPeriodosActivos \n" + e.getMessage());
        }
        return lista;
    }
    /**
     * Método para buscar un periodo en especifico de la Base de Datos
     *
     * @return periodo
     * @author Nancy
     * @author x
     */
   public static Periodo getPeriodo(int id) {
        Periodo periodo = new Periodo();
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("Select * from periodos WHERE id=?");
            ps.setInt(1, id);
            ResultSet res = ps.executeQuery();
            while (res.next()) {
                periodo.setId(res.getInt(1));
                periodo.setPeriodo(res.getString(2));
                periodo.setInicio(res.getDate(3));
                periodo.setFin(res.getDate(4));
                // obj.setDepartamento(DepartamentoDao.consultarDepartamento(res.getInt(9)));           
            }
            res.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("DaoPeriodo.getPeriodo \n" + e.getMessage());
        }
        return periodo;

    }
   
        public static Boolean check() {
        boolean esUltimo = false;
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("Select COUNT(id) from periodos WHERE estado=1");
            ResultSet res = ps.executeQuery();
            while (res.next()) {
                if (res.getInt(1)==1) {
                    esUltimo=true;     
                }  
            }
            res.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("DaoPeriodo.getPeriodo \n" + e.getMessage());
        }
        return esUltimo;
    }

    /**
     * Método create, recibe un objeto Periodo y lo registra en la Base de Datos
     *
     * @param periodo
     * @param inicio
     * @param fin
     * @return boolean
     * @author Nancy
     * @author x
     */
     public static boolean createPeriodo(String periodo, Date inicio ,  Date fin) {
        boolean registrado = false;
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("INSERT INTO periodos(periodo,inicio,fin) "
                    + "VALUES(?,?,?)");

            ps.setString(1, periodo);
            ps.setDate(2, inicio);
            ps.setDate(3,  fin);
            ps.execute();
            registrado = true;
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("DaoPeriodo.createPeriodo \n" + e.getMessage());
        }
        return registrado;
    }

    /**
     * Método update, recibe un objeto Periodo y lo actualiza en la Base de
     * Datos
     *
     * @param id
     * @param periodo
     * @param inicio
     * @param fin
     * @return boolean
     * @author Nancy
     * @author x
     */
     public static boolean updatePeriodo( int id, String periodo, Date inicio ,  Date fin) {
        boolean actualizado = false;
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("UPDATE periodos SET periodo=?, inicio=?, fin=? WHERE id=?");
            ps.setString(1, periodo);
            ps.setDate(2, inicio);
            ps.setDate(3,fin);
            ps.setInt(4, id);
            
            actualizado = ps.executeUpdate() != 0;
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("DaoPeriodo.updatePeriodo \n" + e.getMessage());
        }
        return actualizado;
    }

    /**
     * Método delete, recibe un objeto Periodo y lo borra de la Base de Datos
     *
     * @param periodo
     * @return boolean
     * @author Nancy
     * @author x
     */
   public static boolean deletePeriodo(Periodo periodo) {
        boolean eliminado = false;
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("Update periodos set estado=0 WHERE id=?");
            ps.setInt(1, periodo.getId());            
            ps.execute();
            eliminado = true;
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("DaoPeriodo.deletePeriodo \n" + e.getMessage());
        }
        return eliminado;
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
    public boolean updatePeriodo(Periodo periodo) throws SQLException {
        boolean editar = false;

        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("UPDATE periodos"
                    + "  set periodo=?, inicio=?, fin=?, disponibilidad=?, where id=?");
            ps.setString(1, periodo.getPeriodo());
            ps.setDate(2, (Date) periodo.getInicio());
            ps.setDate(3, (Date) periodo.getFin());
            ps.setInt(4, periodo.getDisponibilidad().getId());
            ps.setInt(5, periodo.getId());

            editar = (ps.executeUpdate() > 0);
            ps.close();
            con.close();

        } catch (SQLException e) {
            System.out.println("Error ocurrido en DaoPeriodo.updatePeriodo :" + e.getMessage());
            throw e;
        }

        return editar;
    }

    /**
     * Método delete, recibe un objeto Periodo y lo borra de la Base de Datos
     *
     * @param periodo
     * @return boolean
     * @author Nancy
     * @author x
     */
    public static boolean deletePeriodo(int id) {
        boolean eliminado = false;

        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("UPDATE periodos SET estatus=0 WHERE id=?");
            ps.setInt(1, id);
            eliminado = (ps.executeUpdate() > 0);

            ps.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Error ocurrido en DaoPeriodo.deletePeriodo :" + e.getMessage());
        }
        return eliminado;
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
