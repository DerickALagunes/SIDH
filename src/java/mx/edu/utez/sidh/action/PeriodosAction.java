package mx.edu.utez.sidh.action;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.Timestamp;
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
    private Date inicio;
    private Date fin;
    private Disponibilidad disponibilidad;

    public String altaperiodos() {
        return SUCCESS;
    }

    public String registroperiodos() {
        Timestamp timestamp = new Timestamp(inicio.getTime());
        Timestamp timestamp2 = new Timestamp(fin.getTime());
        String completoPeriodo = "";
        if (Integer.parseInt(periodo) == 1) {
            completoPeriodo = "Enero - Abril ";
        } else if (Integer.parseInt(periodo) == 2) {
            completoPeriodo = "Mayo - Agosto";
        } else {
            completoPeriodo = "Septiembre - Diciembre";
        }
        if (DaoPeriodo.createPeriodo(completoPeriodo, timestamp, timestamp2)) {
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
        System.out.println(listaPeriodos.size());
        return SUCCESS;
    }

    public String eliminarPeriodo() {
        boolean perio = DaoPeriodo.deletePeriodo(peri);
        if (perio) {
            return SUCCESS;

        } else {
            return ERROR;

        }
    }

    public String prepararPeriodo() {
        peri = DaoPeriodo.getPeriodo(peri.getId());
        if (peri.getInicio() == null) {
            if (peri.getFin() == null) {
                completa = "Periodo:" + peri.getPeriodo() + "      Fecha Inicio:" + " Sin asignar" + "           Fecha Fin: " + "  Sin Asignar";
            } else {
                completa = "Periodo:" + peri.getPeriodo() + "      Fecha Inicio:  " + " Sin asignar" + "         Fecha Fin: " + peri.getFin();
            }
        } else if (peri.getFin() == null) {
            completa = "Periodo:" + peri.getPeriodo() + "       Fecha Inicio:  " + peri.getInicio() + "       Fecha Fin:  " + "  Sin Asignar";
        } else {
            completa = "Periodo:" + peri.getPeriodo() + "       Fecha Inicio:  " + peri.getInicio() + "        Fecha Fin:  " + peri.getFin();
        }

        return SUCCESS;
    }

    public String modificarPeriodo() {
        System.out.println("ENTE A MODIFICAr");
        Timestamp timestamp = new Timestamp(inicio.getTime());
        Timestamp timestamp2 = new Timestamp(fin.getTime());
        String completoPeriodo = "";
        if (Integer.parseInt(periodo) == 1) {
            completoPeriodo = "Enero - Abril ";
        } else if (Integer.parseInt(periodo) == 2) {
            completoPeriodo = "Mayo - Agosto";
        } else {
            completoPeriodo = "Septiembre - Diciembre";
        }

        boolean actualizado = DaoPeriodo.updatePeriodo(id, completoPeriodo, timestamp, timestamp2);
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

    public Date getInicio() {
        return inicio;
    }

    public void setInicio(String inicio) throws ParseException {
        Date date = formatoDeFecha.parse(inicio);
        this.inicio = date;
    }

    public Date getFin() {
        return fin;
    }

    public void setFin(String fin) throws ParseException {
        Date date = formatoDeFecha.parse(fin);
        this.fin = date;

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
