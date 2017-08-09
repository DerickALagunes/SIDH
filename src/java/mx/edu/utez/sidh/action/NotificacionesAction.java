package mx.edu.utez.sidh.action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;

import mx.edu.utez.sidh.bean.Usuario;
import mx.edu.utez.sidh.dao.DaoUsuario;
import mx.edu.utez.sidh.utils.EnviarCorreo;


/**
 *
 * @author Derick
 */
public class NotificacionesAction{
    
    public String check(){
        DaoUsuario dao = new DaoUsuario();
        
        ArrayList<Usuario> lista = dao.getUsuariosSinDisponibilidades();
        
        
        for (Usuario usuario : lista) {
            EnviarCorreo correo = new EnviarCorreo();
            correo.enviarA(usuario);
        }
    
    
        return "success";
    }
    
    public String inicio(){   
        return "success";
    }

}
