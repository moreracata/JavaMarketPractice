
package JavaMarketPractice.Models;


  
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
  
public class DbManager {
  
    private final static String createTable = "CREATE TABLE `example` (id INT, data VARCHAR(100))";
  
    public Connection createConnection() throws IOException, ClassNotFoundException, SQLException {
  
        Connection connection;
          
        Properties prop = new Properties();
        System.out.println("test");
        System.out.println(System.getProperty("user.home"));
        prop.load(new FileInputStream(System.getProperty("user.home") + "/mydb.cfg"));
        System.out.println("user.home: "+System.getProperty("user.home"));
        String host = prop.getProperty("host").toString();
        String username = prop.getProperty("username").toString();
        String password = prop.getProperty("password").toString();
        String driver = prop.getProperty("driver").toString();
  
        System.out.println("host: " + host + "\nusername: " + username + "\npassword: " + password + "\ndriver: " + driver);
  
        Class.forName(driver);
        System.out.println("--------------------------");
        System.out.println("DRIVER: " + driver);
        connection = DriverManager.getConnection(host, username, password);
        System.out.println("CONNECTION: " + connection);
  
        return connection;
    }
  
    public void runSqlStatement() {
        try {
            Statement statement = createConnection().createStatement();
            boolean rs = statement.execute(createTable);
  
        } catch (IOException ex) {
            Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
     public String userValidate(String user, String password){
        //Si la consulta devuelve un resultado/es decir tiene registros) significa que el usuario es valido.
        try{
            String sqlQuery ="select idPerfil from usuarios WHERE idUsuario = '"+user+"' and clave='"+password+"'"; 
        
            Statement et = createConnection().createStatement();
            ResultSet rs = et.executeQuery(sqlQuery);
            if(rs.next()){
                return rs.getString("idPerfil");
            }else{
                return "nok";
            }
        }catch(SQLException ex){
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE,null,ex);
            ex.printStackTrace();
            return "nok";
        }catch (IOException ex) {
            Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
             return "nok";
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DbManager.class.getName()).log(Level.SEVERE, null, ex);
             return "nok";
        }
        
    }
     public static void main(String[] args){
     DbManager db = new DbManager();
            db.runSqlStatement();
     }
    
}