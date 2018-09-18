package JavaMarketPractice.Models;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Datos {
    
    private Connection cnn;
    public static final String USERNAME ="root";
    public static final String PASSWORD ="";
    public static final String HOST ="127.0.0.1";
    public static final String PORT ="3306";
    public static final String DATABASE ="facturacion";
    public static final String CLASSNAME ="com.mysql.jdbc.Driver";
    public static final String URL ="jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    
    public Datos(){
        try
        {
            Class.forName(CLASSNAME);
            cnn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
        }catch(Exception ex){
            System.out.println("Error1");
        }
    }
    public void closeConnection(){
        try{
            cnn.close();
        }catch(SQLException ex){
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    
    //Para hacer una consulta a la base de datos se necesitan dos statements
    public boolean userValidate(String user, String password){
        //Si la consulta devuelve un resultado/es decir tiene registros) significa que el usuario es valido.
        String sqlQuery ="SELECT(1) FROM usuarios WHERE idUsuario = "+user+" and clave="+password; 
        try{
            Statement et = cnn.createStatement();
            ResultSet rs = et.executeQuery(sqlQuery);
            if(rs.next()){
                return true;
            }else{
                return false;
            }
        }catch(SQLException ex){
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE,null,ex);
        }
        return false;
    }
      /*public static void main(String[] args){
        Datos con = new Datos();
    }*/
}
