package mx.edu.utez.sidh.bean;

/**
 * Modelo del objeto disponibilidad, constructores y getter/setter
 * @author Nancy
 */
public class Disponibilidad {
    private int id;
    private String dia;
    private boolean h7;
    private boolean h8;
    private boolean h9;
    private boolean h10;
    private boolean h11;
    private boolean h12;
    private boolean h13;
    private boolean h14;
    private boolean h15;
    private boolean h16;
    private boolean h17;
    private boolean h18;
    private boolean h19;
    private boolean h20;
    private String notas;
    private Periodo periodo;
    private Usuario usuario;


    public Disponibilidad(int id, String dia, String notas,Periodo periodo, Usuario usuario) {
        this.id = id;
        this.dia = dia;
        this.notas = notas;
        this.periodo=periodo;
        this.usuario=usuario;
    }

    public Disponibilidad(int id, String dia, boolean h7, boolean h8, boolean h9, boolean h10, boolean h11, boolean h12, boolean h13, boolean h14, boolean h15, boolean h16, boolean h17, boolean h18, boolean h19, boolean h20, String notas,Periodo periodo,Usuario usuario) {
        this.id = id;
        this.dia = dia;
        this.h7 = h7;
        this.h8 = h8;
        this.h9 = h9;
        this.h10 = h10;
        this.h11 = h11;
        this.h12 = h12;
        this.h13 = h13;
        this.h14 = h14;
        this.h15 = h15;
        this.h16 = h16;
        this.h17 = h17;
        this.h18 = h18;
        this.h19 = h19;
        this.h20 = h20;
        this.notas = notas;
        this.periodo=periodo;
        this.usuario=usuario;
    }
    
    public Disponibilidad() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public boolean isH7() {
        return h7;
    }

    public void setH7(boolean h7) {
        this.h7 = h7;
    }

    public boolean isH8() {
        return h8;
    }

    public void setH8(boolean h8) {
        this.h8 = h8;
    }

    public boolean isH9() {
        return h9;
    }

    public void setH9(boolean h9) {
        this.h9 = h9;
    }

    public boolean isH10() {
        return h10;
    }

    public void setH10(boolean h10) {
        this.h10 = h10;
    }

    public boolean isH11() {
        return h11;
    }

    public void setH11(boolean h11) {
        this.h11 = h11;
    }

    public boolean isH12() {
        return h12;
    }

    public void setH12(boolean h12) {
        this.h12 = h12;
    }

    public boolean isH13() {
        return h13;
    }

    public void setH13(boolean h13) {
        this.h13 = h13;
    }

    public boolean isH14() {
        return h14;
    }

    public void setH14(boolean h14) {
        this.h14 = h14;
    }

    public boolean isH15() {
        return h15;
    }

    public void setH15(boolean h15) {
        this.h15 = h15;
    }

    public boolean isH16() {
        return h16;
    }

    public void setH16(boolean h16) {
        this.h16 = h16;
    }

    public boolean isH17() {
        return h17;
    }

    public void setH17(boolean h17) {
        this.h17 = h17;
    }

    public boolean isH18() {
        return h18;
    }

    public void setH18(boolean h18) {
        this.h18 = h18;
    }

    public boolean isH19() {
        return h19;
    }

    public void setH19(boolean h19) {
        this.h19 = h19;
    }

    public boolean isH20() {
        return h20;
    }

    public void setH20(boolean h20) {
        this.h20 = h20;
    }

    public String getNotas() {
        return notas;
    }

    public void setNotas(String notas) {
        this.notas = notas;
    }

    public Periodo getPeriodo() {
        return periodo;
    }

    public void setPeriodo(Periodo periodo) {
        this.periodo = periodo;
    }
    
    
}
