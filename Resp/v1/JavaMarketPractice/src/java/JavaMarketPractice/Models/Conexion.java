package JavaMarketPractice.Models;

import java.sql.DriverManager;
import com.mysql.jdbc.Connection;
import java.sql.SQLException;

public class Conexion {
    
    public static final String USERNAME ="root";
    public static final String PASSWORD ="";
    public static final String HOST ="127.0.0.1";
    public static final String PORT ="3306";
    public static final String DATABASE ="facturacion";
    public static final String CLASSNAME ="com.mysql.jdbc.Driver";
    public static final String URL ="jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
     
    
    
    public java.sql.Connection con;
    
    public Conexion(){
        System.out.println(URL);
        try
        {
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
        }catch(ClassNotFoundException e){
            System.out.println("Error1");
        }catch(SQLException e ){
            System.out.println("Error2");
            System.out.println(e.getMessage());  
        }
    }

}
