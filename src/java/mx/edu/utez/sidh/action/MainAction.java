package mx.edu.utez.sidh.action;


import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import mx.edu.utez.sidh.bean.Usuario;
import mx.edu.utez.sidh.dao.DaoUsuario;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author ricar
 */
public class MainAction extends ActionSupport implements SessionAware {

    private Usuario user;
    Map<String, Object> sessionMap;

    public Usuario getUser() {
        return user;
    }

    public void setUser(Usuario user) {
        this.user = user;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.sessionMap = map;
    }

    public Map<String, Object> getSessionMap() {
        return sessionMap;
    }

    public void setSessionMap(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    public String login() {
        user = new Usuario();
        return SUCCESS;
    }

    String correo;
    String pass;

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

    public String loginUsuario() throws Exception {
        Usuario usr = new Usuario(0, null, null, null, correo, pass, null);
        Usuario obj = DaoUsuario.getUsuario(usr);
        if (obj.isEstado()) {
            if (obj.getTipoUsuario() == 1) {
                System.out.println("es admin");
                sessionMap.put("login", "true");
                sessionMap.put("userType", "Super");
                sessionMap.put("userName", obj.getNombre());
                sessionMap.put("idUser", obj.getId());
                return LOGIN;
            } else {
                System.out.println("es docnete");
                sessionMap.put("login", "true");
                sessionMap.put("userType", "Doc");
                sessionMap.put("userName", obj.getNombre());
                sessionMap.put("idUser", obj.getId());
                return SUCCESS;
            }
        } else {
            System.out.println("khe");
            return ERROR;
        }
    }

    public String closeLogin() throws Exception {
        sessionMap.remove("login");
        sessionMap.remove("userName");
        sessionMap.remove("idUser");
        sessionMap.clear();
        
        return SUCCESS;
    }



    public MainAction() {
        user = new Usuario();
    }

}
