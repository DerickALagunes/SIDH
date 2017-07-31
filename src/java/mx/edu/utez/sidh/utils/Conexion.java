/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.utez.sidh.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ricar
 */
public class Conexion {
      public static Connection getConexion() throws SQLException {
        String cadenaConexion = "jdbc:mysql://localhost/sidh?user=root&password=root";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        return DriverManager.getConnection(cadenaConexion);    
    }

    public static void main(String[] args) {
        try {
            if (Conexion.getConexion() != null) {
                System.out.println("Conexión realizada");
            } else {
                System.out.println("Fallo de conexión");
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

    }
}
