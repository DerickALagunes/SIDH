package mx.edu.utez.sidh.bean;
/**
 * Modelo del objeto periodo, constructores y getter/setter
 * @author Nancy
 */
import java.util.Date;

public class Periodo {
    
    private int id;
    private String periodo;
    private Date inicio;
    private Date fin;
    private Disponibilidad disponibilidad;

    public Periodo(int id, String periodo, Date inicio, Date fin,Disponibilidad disponibilidad) {
        this.id = id;
        this.periodo = periodo;
        this.inicio = inicio;
        this.fin = fin;
        this.disponibilidad=disponibilidad;
    }

    public Periodo() {
    }

    public Disponibilidad getDisponibilidad() {
        return disponibilidad;
    }

    public void setDisponibilidad(Disponibilidad disponibilidad) {
        this.disponibilidad = disponibilidad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public void setInicio(Date inicio) {
        this.inicio = inicio;
    }

    public Date getFin() {
        return fin;
    }

    public void setFin(Date fin) {
        this.fin = fin;
    }
   
}
