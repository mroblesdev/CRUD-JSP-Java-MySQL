
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author MRoblesDev
 */
public class Conexion {
    
    Connection conexion = null;

    String base = "almacen"; //Nombre de la base de datos
    String url = "jdbc:mysql://localhost:3306/" + base; //Direccion, puerto y nombre de la Base de Datos
    String user = "root"; //Usuario de Acceso a MySQL
    String password = "password"; //Password del usuario

    public Connection getConexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url, user, password);
            return conexion;
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.toString());
            return null;
        }
    }
}
