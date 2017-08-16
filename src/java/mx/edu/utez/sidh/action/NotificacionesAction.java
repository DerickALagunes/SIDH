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
        System.out.println("Entro NotificacionesAction A1 ------");
        DaoUsuario dao = new DaoUsuario();
        System.out.println("Paso el Dao Usuario A2 ---------");
        
        ArrayList<Usuario> lista = dao.getUsuariosSinDisponibilidades();
        System.out.println("Consiguio la Lista del dao A3 -------");
        
        for (Usuario usuario : lista) {
            System.out.println("for A4 -------->");
            EnviarCorreo correo = new EnviarCorreo();
            System.out.println("Envio correo A5 -----<");
            correo.enviarA(usuario);
            System.out.println("Corroe A6 ----->");
        }
        System.out.println("Salio A20 ---------------------------------------");
    
        return "success";
    }
    
    public String inicio(){   
        return "success";
    }

}
