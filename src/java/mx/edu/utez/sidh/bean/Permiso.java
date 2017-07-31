package mx.edu.utez.sidh.bean;
/**
 * Modelo del objeto permiso, constructores y getter/setter
 * @author Nancy
 */
public class Permiso {
    private int id;
    private String permiso;
    private Usuario usuario;

    public Permiso(int id, String permiso, Usuario usuario) {
        this.id = id;
        this.permiso = permiso;
        this.usuario = usuario;
    }

    public Permiso() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPermiso() {
        return permiso;
    }

    public void setPermiso(String permiso) {
        this.permiso = permiso;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
  
}
