package mx.edu.utez.sidh.action;

import com.opensymphony.xwork2.ActionSupport;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import mx.edu.utez.sidh.bean.Disponibilidad;
import mx.edu.utez.sidh.bean.Periodo;
import mx.edu.utez.sidh.dao.DaoPeriodo;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author ricar
 */
public class PeriodosAction extends ActionSupport implements ServletRequestAware, SessionAware {

    HttpServletRequest servletRequest;
    Map<String, Object> sessionMap;
    List<Periodo> listaPeriodos = new ArrayList();
    SimpleDateFormat formatoDeFecha = new SimpleDateFormat("yyyy-MM-dd");

    private String completa;
    private Periodo peri;
    private int id;
    private String periodo;
    private String inicio;
    private String fin;
    private Disponibilidad disponibilidad;

    public String altaperiodos() {
        return SUCCESS;
    }

    public String registroperiodos() throws ParseException {
        
        String completoPeriodo = "";
        
        DateFormat formater = new SimpleDateFormat("dd/MM/yyyy");

        java.sql.Date sqlInicio = new java.sql.Date(new Date().getTime());
        java.sql.Date sqlFin = new java.sql.Date(new Date().getTime());
        

        
        if (!inicio.isEmpty()) {
            Date start = formater.parse(inicio);
            sqlInicio = new java.sql.Date(start.getTime());
        }
        
        if (!fin.isEmpty()) {
            Date start = formater.parse(fin);
            sqlFin = new java.sql.Date(start.getTime());
        }
        
        
        if (Integer.parseInt(periodo) == 1) {
            completoPeriodo = "Enero - Abril ";
        } else if (Integer.parseInt(periodo) == 2) {
            completoPeriodo = "Mayo - Agosto";
        } else {
            completoPeriodo = "Septiembre - Diciembre";
        }
        
        System.out.println(sqlInicio);
        
        if (DaoPeriodo.createPeriodo(completoPeriodo, sqlInicio, sqlFin)) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public List<Periodo> getListaPeriodos() {
        return listaPeriodos;
    }

    public void setListaPeriodos(List<Periodo> listaPeriodos) {
        this.listaPeriodos = listaPeriodos;
    }

    public String obtenerPeriodos() {
        listaPeriodos = DaoPeriodo.getPeriodosActivos();
        return SUCCESS;
    }

    public String eliminarPeriodo() {
        
        if (DaoPeriodo.check()) {
            return "ultimo";
        }
        
        
        boolean perio = DaoPeriodo.deletePeriodo(peri);
        if (perio) {
            return SUCCESS;

        } else {
            return ERROR;

        }
    }
    
    String inicioString;
    String finString;

    public String getInicioString() {
        return inicioString;
    }

    public void setInicioString(String inicioString) {
        this.inicioString = inicioString;
    }

    public String getFinString() {
        return finString;
    }

    public void setFinString(String finString) {
        this.finString = finString;
    }
    

    public String prepararPeriodo() {
        
        peri = DaoPeriodo.getPeriodo(peri.getId());

        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");

        
        inicioString = df.format(peri.getInicio().getTime());
        finString = df.format(peri.getFin().getTime());

        return SUCCESS;
    }

    public String modificarPeriodo() throws ParseException {
        
        System.out.println("ENTE A MODIFICAr");
        
        
        DateFormat formater = new SimpleDateFormat("dd/MM/yyyy");

        java.sql.Date sqlInicio = new java.sql.Date(new Date().getTime());
        java.sql.Date sqlFin = new java.sql.Date(new Date().getTime());
            
        if (!inicio.isEmpty()) {
            Date start = formater.parse(inicio);
            sqlInicio = new java.sql.Date(start.getTime());
        }
        
        if (!fin.isEmpty()) {
            Date start = formater.parse(fin);
            sqlFin = new java.sql.Date(start.getTime());
        }

        
        String completoPeriodo = "";
        if (Integer.parseInt(periodo) == 1) {
            completoPeriodo = "Enero - Abril ";
        } else if (Integer.parseInt(periodo) == 2) {
            completoPeriodo = "Mayo - Agosto";
        } else {
            completoPeriodo = "Septiembre - Diciembre";
        }
        

        boolean actualizado = DaoPeriodo.updatePeriodo(id, completoPeriodo, sqlInicio, sqlFin);
        if (actualizado) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public Periodo getPeri() {
        return peri;
    }

    public void setPeri(Periodo peri) {
        this.peri = peri;
    }

    public int getId() {
        return id;
    }

    public void setId(String id) {
        int idX = Integer.parseInt(id);
        this.id = idX;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public String getInicio() {
        return inicio;
    }

    public void setInicio(String inicio) {
        this.inicio = inicio;
    }

    public String getFin() {
        return fin;
    }

    public void setFin(String fin) {
        this.fin = fin;
    }



    public Disponibilidad getDisponibilidad() {
        return disponibilidad;
    }

    public void setDisponibilidad(Disponibilidad disponibilidad) {
        this.disponibilidad = disponibilidad;
    }

    @Override
    public void setServletRequest(HttpServletRequest map) {
        this.servletRequest = map;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.sessionMap = map;
    }

    public String getCompleta() {
        return completa;
    }

    public void setCompleta(String completa) {
        this.completa = completa;
    }

}
