package mx.edu.utez.sidh.bean;
/**
 * Modelo del objeto usuario, constructores y getter/setter
 * @author Nancy
 */
public class Usuario {

    private int id;
    private String nombre;
    private String apellidoPaterno;
    private String apellidoMaterno;
    private String email;
    private String contrasena;
    private boolean estado;    
    private int tipoUsuario;
    private Disponibilidad[] disponibilidad;

    public int getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(int tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    
    public boolean isEstado() {
        return estado;
    }
    
    public void setEstado(boolean estado) {
        this.estado = estado;
    }


    public Usuario(int id, String nombre, String apellidoPaterno, String apellidoMaterno, String email, String contrasena, Disponibilidad[] disponibilidad) {
        this.id = id;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.email = email;
        this.contrasena = contrasena;
        this.disponibilidad=disponibilidad;
    }

    public Usuario() {
    }

    public int getId() {
        return id;
    }

    public Disponibilidad[] getDisponibilidad() {
        return disponibilidad;
    }

    public void setDisponibilidad(Disponibilidad[] disponibilidad) {
        this.disponibilidad = disponibilidad;
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

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

}
