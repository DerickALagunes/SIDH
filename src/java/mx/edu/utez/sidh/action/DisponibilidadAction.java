/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.utez.sidh.action;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import mx.edu.utez.sidh.bean.Disponibilidad;
import mx.edu.utez.sidh.bean.Usuario;
import mx.edu.utez.sidh.dao.DaoDisponibilidad;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author ricar
 */
public class DisponibilidadAction extends ActionSupport implements ServletRequestAware, SessionAware {

    private String arr[];
    HttpServletRequest servletRequest;
    Map<String, Object> sessionMap;
    int user;
    String dispo;
    String notas;

    public String getNotas() {
        return notas;
    }

    public void setNotas(String notas) {
        this.notas = notas;
    }

    public int getUser() {
        return user;
    }

    public void setUser(int user) {
        this.user = user;
    }

    public String getDispo() {
        return dispo;
    }

    public void setDispo(String dispo) {
        this.dispo = dispo;
    }

    public String[] getArr() {
        return arr;
    }

    public void setArr(String[] arr) {
        this.arr = arr;
    }

    @Override
    public void setServletRequest(HttpServletRequest map) {
        this.servletRequest = map;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.sessionMap = map;
    }

    public String altaDisponibilidad() {

        DaoDisponibilidad dao = new DaoDisponibilidad();
        
        int id = (Integer) sessionMap.get("idUser");
        
        if (dao.UsuarioTieneDisponibilidad(id)) {
            return "registrado";
        }else{
            return SUCCESS;
        }

        
    }

    /**
     * Método para registrar las 6 disponibilidades y ligarlas con un usuario y
     * con el periodo actual
     *
     * @return
     */
    public String registroDisponibilidad() throws SQLException {

        System.out.println(dispo);
        System.out.println(notas);
        System.out.println(user);
        DaoDisponibilidad dao = new DaoDisponibilidad();

        Usuario usr = new Usuario();
        usr.setId(user);

        String[] dias = dispo.split(",");
        int contador = 0;

        for (String dia : dias) {
            contador++;
            Disponibilidad disp = new Disponibilidad();
            disp.setNotas(notas);

            char[] horas = dia.toCharArray();

            disp.setH7((horas[0] != '0'));
            disp.setH8((horas[1] != '0'));
            disp.setH9((horas[2] != '0'));
            disp.setH10((horas[3] != '0'));
            disp.setH11((horas[4] != '0'));
            disp.setH12((horas[5] != '0'));
            disp.setH13((horas[6] != '0'));
            disp.setH14((horas[7] != '0'));
            disp.setH15((horas[8] != '0'));
            disp.setH16((horas[9] != '0'));
            disp.setH17((horas[10] != '0'));
            disp.setH18((horas[11] != '0'));
            disp.setH19((horas[12] != '0'));
            disp.setH20((horas[13] != '0'));

            switch (contador) {
                case 1:
                    disp.setDia("Lunes");
                    break;
                case 2:
                    disp.setDia("Martes");
                    break;
                case 3:
                    disp.setDia("Miércoles");
                    break;
                case 4:
                    disp.setDia("Jueves");
                    break;
                case 5:
                    disp.setDia("Viernes");
                    break;
                case 6:
                    disp.setDia("Sábado");
                    break;
            }

            dao.createDisponibilidad(disp, usr);
        }

        return SUCCESS;
    }

}
