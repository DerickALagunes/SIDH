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
 * Clase Dao para el Usuario, CRUD.
 *
 * @author Nancy
 * @author x
 */
public class DaoUsuario {

    /**
     * Método R(Listar), obtiene todos los usuarios de la Base de Datos
     *
     * @return Lista
     * @author Nancy
     * @author x
     */
    /**
     * Método para buscar un usuario en especifico de la Base de Datos
     *
     * @param u
     * @return usuario
     * @author Nancy
     * @author x
     */
    public static Usuario getUsuario(Usuario u) {
        Usuario obj = new Usuario();
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("Select * from usuario where email=? AND contrasena=?");
            ps.setString(1, u.getEmail());
            ps.setString(2, u.getContrasena());
            ResultSet res = ps.executeQuery();
            while (res.next()) {
                obj.setId(res.getInt(1));
                obj.setNombre(res.getString(2));
                obj.setApellidoPaterno(res.getString(3));
                obj.setApellidoMaterno(res.getString(4));
                obj.setEmail(res.getString(5));
                obj.setContrasena(res.getString(6));
                obj.setEstado(res.getBoolean(7));
                obj.setTipoUsuario(res.getInt(8));
            }

            res.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("UsuarioDao.obtenerUsuario \n" + e.getMessage());
        }
        return obj;
    }

    public Usuario getUsuarioById(Usuario u) {
        Usuario obj = new Usuario();
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("Select * from usuario where id=? ");
            ps.setInt(1, u.getId());
            ResultSet res = ps.executeQuery();
            while (res.next()) {
                obj.setId(res.getInt(1));
                obj.setNombre(res.getString(2));
                obj.setApellidoPaterno(res.getString(3));
                obj.setApellidoMaterno(res.getString(4));
                obj.setEmail(res.getString(5));
                obj.setContrasena(res.getString(6));
                obj.setEstado(res.getBoolean(7));
                obj.setTipoUsuario(res.getInt(8));
            }

            res.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.err.println("UsuarioDao.obtenerUsuario \n" + e.getMessage());
        }
        return obj;
    }

    public static ArrayList<Usuario> getUsuarios() {
        ArrayList<Usuario> lista = new ArrayList();
        DaoDisponibilidad dao = new DaoDisponibilidad();
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement(" SELECT  id,nombre, apellido1, apellido2, email, contrasena "
                    + "FROM usuario where estado=1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt(1));
                usuario.setNombre(rs.getString(2));
                usuario.setApellidoPaterno(rs.getString(3));
                usuario.setApellidoMaterno(rs.getString(4));
                usuario.setEmail(rs.getString(5));
                usuario.setContrasena(rs.getString(6));
                usuario.setEstado(dao.UsuarioTieneDisponibilidad(rs.getInt(1)));
                lista.add(usuario);
            }
            rs.close();
            ps.close();;
            con.close();
        } catch (SQLException e) {
            System.out.println("Error ocurrido en DaoUsuario.getUsuarios:" + e.getMessage());
        }
        return lista;
    }

    /**
     *
     * @return @author Derick
     */
    public ArrayList<Usuario> getUsuariosDisponibilidades() {
        ArrayList<Usuario> lista = new ArrayList();
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement(" "
                    + "SELECT u.id,u.nombre, u.apellido1, u.apellido2, u.email, u.contrasena,"
                    + "d.id, d.dia, d.h7, d.h8, d.h9, d.h10, d.h11, d.h12, d.h13, d.h14, d.h15, d.h16, d.h17, d.h18, d.h19, d.h20, d.notas, d.estado "
                    + "FROM usuario as u "
                    + "JOIN usuario_tiene_disponibilidad as ud on ud.id_usuario = u.id "
                    + "JOIN disponibilidad as d on ud.id_disponibilidad = d.id "
                    + "JOIN disponibilidad_tiene_periodos as dp on dp.id_disponibilidad=d.id "
                    + "JOIN periodos as p on p.id = dp.id_periodo "
                    + "where u.estado=1 AND p.id IN(Select MAX(id) from periodos)");
            ResultSet rs = ps.executeQuery();

            int iterador = 0;
            Disponibilidad[] disponibilidades = new Disponibilidad[6];
            Usuario usuario = new Usuario();
            while (rs.next()) {

                //si es un nuevo usuario
                if (iterador == 0) {
                    usuario = new Usuario();
                    usuario.setId(rs.getInt(1));
                    usuario.setNombre(rs.getString(2));
                    usuario.setApellidoPaterno(rs.getString(3));
                    usuario.setApellidoMaterno(rs.getString(4));
                    usuario.setEmail(rs.getString(5));
                    usuario.setContrasena(rs.getString(6));
                    disponibilidades = new Disponibilidad[6];
                }

                Disponibilidad disp = new Disponibilidad();

                disp.setId(rs.getInt(7));
                disp.setDia(rs.getString("dia"));
                disp.setH7(rs.getBoolean("h7"));
                disp.setH8(rs.getBoolean("h8"));
                disp.setH9(rs.getBoolean("h9"));
                disp.setH10(rs.getBoolean("h10"));
                disp.setH11(rs.getBoolean("h11"));
                disp.setH12(rs.getBoolean("h12"));
                disp.setH13(rs.getBoolean("h13"));
                disp.setH14(rs.getBoolean("h14"));
                disp.setH15(rs.getBoolean("h15"));
                disp.setH16(rs.getBoolean("h16"));
                disp.setH17(rs.getBoolean("h17"));
                disp.setH18(rs.getBoolean("h18"));
                disp.setH19(rs.getBoolean("h19"));
                disp.setH20(rs.getBoolean("h20"));
                disp.setNotas(rs.getString("notas"));

                disponibilidades[iterador] = (disp);
                iterador++;
                if (iterador == 6) {
                    iterador = 0;
                    usuario.setDisponibilidad(disponibilidades);
                    lista.add(usuario);
                }
            }
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Error ocurrido en DaoUsuario.getUsuarios:" + e.getMessage());
        }
        return lista;
    }

    /**
     *
     * @return @author Derick
     */
    public ArrayList<Usuario> getUsuariosSinDisponibilidades() {
        DaoPeriodo dao = new DaoPeriodo();
        ArrayList<Usuario> lista = new ArrayList();
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM usuario WHERE usuario.id NOT IN ( select usuario_tiene_disponibilidad.id_usuario FROM `disponibilidad_tiene_periodos` join usuario_tiene_disponibilidad on usuario_tiene_disponibilidad.id_disponibilidad=disponibilidad_tiene_periodos.id_disponibilidad WHERE disponibilidad_tiene_periodos.id_periodo = ?) and usuario.estado=1");
            ps.setInt(1, dao.getIdNuevoPeriodo());
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt(1));
                usuario.setNombre(rs.getString(2));
                usuario.setApellidoPaterno(rs.getString(3));
                usuario.setApellidoMaterno(rs.getString(4));
                usuario.setEmail(rs.getString(5));
                usuario.setContrasena(rs.getString(6));
                usuario.setEstado(rs.getBoolean(7));
                usuario.setTipoUsuario(rs.getInt(8));

                lista.add(usuario);

            }
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Error ocurrido en DaoUsuario.getUsuarios:" + e.getMessage());
        }
        return lista;
    }

    /**
     * Método create, recibe un objeto Usuario y lo registra en la Base de Datos
     *
     * @param usuario
     * @return boolean
     * @author Nancy
     * @author x
     * @throws java.sql.SQLException
     */
    public boolean registrarUsuario(Usuario usuario) throws SQLException {
        boolean registrado = false;

        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("INSERT INTO usuario(nombre,apellido1,apellido2,email,contrasena,estado,tipoUsuario)"
                    + "VALUES (?,?,?,?,?,?,?)");
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getApellidoPaterno());
            ps.setString(3, usuario.getApellidoMaterno());
            ps.setString(4, usuario.getEmail());
            ps.setString(5, usuario.getContrasena());
            ps.setBoolean(6, usuario.isEstado());
            ps.setInt(7, usuario.getTipoUsuario());

            registrado = (ps.executeUpdate() > 0);

            ps.close();
            con.close();

        } catch (SQLException e) {
            System.out.println("Error ocurrido en DaoUsuario.crearUsuario :" + e.getMessage());
            throw e;
        }

        return registrado;
    }

    /**
     * Método update, recibe un objeto Usuario y lo actualiza en la Base de
     * Datos
     *
     * @param usuario
     * @return boolean
     * @author Nancy
     * @author x
     */
    public boolean editarUsuario(Usuario usuario) throws SQLException {
        boolean editar = false;

        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("UPDATE usuario"
                    + "  set nombre=?, apellido1=?, apellido2=?, email=?, contrasena=? where id=?");
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getApellidoPaterno());
            ps.setString(3, usuario.getApellidoMaterno());
            ps.setString(4, usuario.getEmail());
            ps.setString(5, usuario.getContrasena());
            ps.setInt(6, usuario.getId());

            editar = (ps.executeUpdate() > 0);
            ps.close();
            con.close();

        } catch (SQLException e) {
            System.out.println("Error ocurrido en DaoUsuario.crearUsuario :" + e.getMessage());
            throw e;
        }

        return editar;
    }

    /**
     * Método delete, recibe un objeto Usuario y lo borra de la Base de Datos
     *
     * @param usuario
     * @return boolean
     * @author Nancy
     * @author x
     */
    public static boolean deleteUsuario(int id) {
        boolean eliminado = false;

        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement("UPDATE usuario SET estado=0 WHERE id=?");
            ps.setInt(1, id);
            eliminado = (ps.executeUpdate() > 0);

            ps.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Error ocurrido en DaoUsuario.deleteUsuario :" + e.getMessage());
        }
        return eliminado;
    }

}
