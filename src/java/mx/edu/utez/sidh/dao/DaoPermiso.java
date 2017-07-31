package mx.edu.utez.sidh.dao;

import java.util.ArrayList;
import mx.edu.utez.sidh.bean.Permiso;

/**
 * Clase Dao para el Permiso, CRUD.
 *
 * @author Nancy
 * @author x
 */
public class DaoPermiso {
    /**
     * Método R(Listar), obtiene todos los permisos de la Base de Datos
     *
     * @return Lista
     * @author Nancy
     * @author x
     */
    public ArrayList<Permiso> getPermisos() {
        ArrayList<Permiso> lista = new ArrayList();

        return lista;
    }

    /**
     * Método para buscar un permiso en especifico de la Base de Datos
     *
     * @return permiso
     * @author Nancy
     * @author x
     */
    public Permiso getPermiso(int id) {
        Permiso permiso = new Permiso();

        return permiso;

    }

    /**
     * Método create, recibe un objeto Permiso y lo registra en la Base de Datos
     *
     * @param permiso
     * @return boolean
     * @author Nancy
     * @author x
     */
    public boolean createPermiso(Permiso permiso) {
        return false;
    }

    /**
     * Método update, recibe un objeto Permiso y lo actualiza en la Base de
     * Datos
     *
     * @param permiso
     * @return boolean
     * @author Nancy
     * @author x
     */
    public boolean updatePermiso(Permiso permiso) {
        return false;
    }

    /**
     * Método delete, recibe un objeto Permiso y lo borra de la Base de Datos
     *
     * @param permiso
     * @return boolean
     * @author Nancy
     * @author x
     */
    public boolean deletePermiso(Permiso permiso) {
        return false;
    }
}
