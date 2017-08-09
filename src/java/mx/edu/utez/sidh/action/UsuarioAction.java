package mx.edu.utez.sidh.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import mx.edu.utez.sidh.bean.Disponibilidad;
import mx.edu.utez.sidh.bean.Usuario;
import mx.edu.utez.sidh.dao.DaoDisponibilidad;
import mx.edu.utez.sidh.dao.DaoUsuario;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author ricar
 */
public class UsuarioAction extends ActionSupport implements ServletRequestAware, SessionAware {

    List<Usuario> listaUsuarios = new ArrayList();

    HttpServletRequest servletRequest;
    Map<String, Object> sessionMap;
    private Usuario usua;
    String dis;
    String notas;

    public String getNotas() {
        return notas;
    }

    public void setNotas(String notas) {
        this.notas = notas;
    }

    public String getDis() {
        return dis;
    }

    public void setDis(String dis) {
        this.dis = dis;
    }

    public Usuario getUsua() {
        return usua;
    }

    public void setUsua(Usuario usua) {
        this.usua = usua;
    }

    public String altausuario() {
        usua = new Usuario();
        return SUCCESS;
    }

//    public String createUsuario() throws SQLException {
//        boolean insertado = DaoUsuario.createUsuario(usua);
//        if (insertado) {
//            return SUCCESS;
//        } else {
//            return ERROR;
//        }
//    }
    public String obtenerUsuarios() {
        listaUsuarios = DaoUsuario.getUsuarios();
        return SUCCESS;
    }

    public String eliminarUsuario() {
        boolean eliminado = DaoUsuario.deleteUsuario(usua.getId());
        if (eliminado) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public List<Usuario> getListaUsuarios() {
        return listaUsuarios;
    }

    public void setListaUsuarios(List<Usuario> listaUsuarios) {
        this.listaUsuarios = listaUsuarios;
    }

    @Override
    public void setServletRequest(HttpServletRequest map) {
        this.servletRequest = map;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.sessionMap = map;
    }

    /**
     * @author Derick
     * @return
     */
    public String borraDisponibilidad() {

        DaoDisponibilidad dao = new DaoDisponibilidad();

        if (dao.borrarDisponibilidadDe(usua.getId())) {
            return "success";
        } else {
            return "error";
        }

    }

    int id;
    String nombre;
    String paterno;
    String materno;
    String correo;
    String pass;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPaterno() {
        return paterno;
    }

    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    public String getMaterno() {
        return materno;
    }

    public void setMaterno(String materno) {
        this.materno = materno;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    /**
     * @author Derick
     * @return
     * @throws java.sql.SQLException
     */
    public String nuevoUsuario() throws SQLException {
        Usuario nuevo = new Usuario();
        nuevo.setNombre(nombre);
        nuevo.setApellidoPaterno(paterno);
        nuevo.setApellidoMaterno("");
        nuevo.setEmail(correo);
        nuevo.setContrasena(pass);
        nuevo.setEstado(true);
        nuevo.setTipoUsuario(0);

        DaoUsuario dao = new DaoUsuario();
        if (dao.registrarUsuario(nuevo)) {
            return SUCCESS;
        } else {
            return ERROR;
        }

    }

    /**
     * @author Anselmo
     * @return
     */
    public String editarUsuario() {
        Usuario usuario;
        DaoUsuario dao = new DaoUsuario();
        usuario = dao.getUsuarioById(getUsua());
        setUsua(usuario);
        return SUCCESS;

    }

    /**
     * Método para imprimir el formato
     *
     * @return
     * @author Derick
     */
    public String printDispo() {
        Usuario usuario;
        DaoUsuario dao = new DaoUsuario();
        usuario = dao.getUsuarioConDisponibilidadActualById(getUsua());
        setUsua(usuario);

        String dias = "";

        for (Disponibilidad dispo : usua.getDisponibilidad()) {
            
            
            dias += dispo.getH7();            
            dias += dispo.getH8();
            dias += dispo.getH9();
            dias += dispo.getH10();
            dias += dispo.getH11();
            dias += dispo.getH12();
            dias += dispo.getH13();
            dias += dispo.getH14();
            dias += dispo.getH15();
            dias += dispo.getH16();
            dias += dispo.getH17();
            dias += dispo.getH18();
            dias += dispo.getH19();
            dias += dispo.getH20();
            dias += ",";
        }

        dis = dias;
        notas = usuario.getDisponibilidad()[0].getNotas();

        return SUCCESS;
    }

    public String actualizarUsuario() throws SQLException {
        Usuario nuevo = new Usuario();

        nuevo.setId(id);
        nuevo.setNombre(nombre);
        nuevo.setApellidoPaterno(paterno);
        nuevo.setApellidoMaterno(materno);
        nuevo.setEmail(correo);
        nuevo.setContrasena(pass);

        DaoUsuario dao = new DaoUsuario();
        if (dao.editarUsuario(nuevo)) {

            return SUCCESS;
        }
        return ERROR;

    }

    public String asignarAdmin() {
        
        Map session = ActionContext.getContext().getSession();
        int id = (Integer) session.get("idUser");
        
        if (id == usua.getId()) {
            return "super";
        }
        
        boolean asignado = DaoUsuario.asignarAdmin(usua.getId());
        if (asignado) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
}
