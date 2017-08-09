package mx.edu.utez.sidh.bean;

/**
 * Modelo del objeto disponibilidad, constructores y getter/setter
 * @author Nancy
 */
public class Disponibilidad {
    private int id;
    private String dia;
    private char h7;
    private char h8;
    private char h9;
    private char h10;
    private char h11;
    private char h12;
    private char h13;
    private char h14;
    private char h15;
    private char h16;
    private char h17;
    private char h18;
    private char h19;
    private char h20;
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

    public Disponibilidad(int id, String dia, char h7, char h8, char h9, char h10, char h11, char h12, char h13, char h14, char h15, char h16, char h17, char h18, char h19, char h20, String notas,Periodo periodo,Usuario usuario) {
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

    public char getH7() {
        return h7;
    }

    public void setH7(char h7) {
        this.h7 = h7;
    }

    public char getH8() {
        return h8;
    }

    public void setH8(char h8) {
        this.h8 = h8;
    }

    public char getH9() {
        return h9;
    }

    public void setH9(char h9) {
        this.h9 = h9;
    }

    public char getH10() {
        return h10;
    }

    public void setH10(char h10) {
        this.h10 = h10;
    }

    public char getH11() {
        return h11;
    }

    public void setH11(char h11) {
        this.h11 = h11;
    }

    public char getH12() {
        return h12;
    }

    public void setH12(char h12) {
        this.h12 = h12;
    }

    public char getH13() {
        return h13;
    }

    public void setH13(char h13) {
        this.h13 = h13;
    }

    public char getH14() {
        return h14;
    }

    public void setH14(char h14) {
        this.h14 = h14;
    }

    public char getH15() {
        return h15;
    }

    public void setH15(char h15) {
        this.h15 = h15;
    }

    public char getH16() {
        return h16;
    }

    public void setH16(char h16) {
        this.h16 = h16;
    }

    public char getH17() {
        return h17;
    }

    public void setH17(char h17) {
        this.h17 = h17;
    }

    public char getH18() {
        return h18;
    }

    public void setH18(char h18) {
        this.h18 = h18;
    }

    public char getH19() {
        return h19;
    }

    public void setH19(char h19) {
        this.h19 = h19;
    }

    public char getH20() {
        return h20;
    }

    public void setH20(char h20) {
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
