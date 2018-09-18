package JavaMarketPractice.Models;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Consultas extends Conexion{
    
    public boolean Autenticacion(String user, String pass) throws SQLException{
        Statement st = con.createStatement();
        ResultSet rs = null;
        String consulta = "Select * from Usuarios";
        rs = st.executeQuery(consulta);
        while(rs.next()){
            if(user.equals(rs.getString("Usuario")) && pass.equals(rs.getString("Contrasena"))){
                return true;
            }
        }
        return false;
    }
        //Para hacer una consulta a la base de datos se necesitan dos statements
    public String userValidate(String user, String password){
        //Si la consulta devuelve un resultado/es decir tiene registros) significa que el usuario es valido.
        try{
            String sqlQuery ="select idPerfil from usuarios WHERE idUsuario = '"+user+"' and clave='"+password+"'"; 
        
            Statement et = con.createStatement();
            ResultSet rs = et.executeQuery(sqlQuery);
            if(rs.next()){
                return rs.getString("idPerfil");
            }else{
                return "nok";
            }
        }catch(SQLException ex){
            Logger.getLogger(Datos.class.getName()).log(Level.SEVERE,null,ex);
            return "nok";
        }
    }
    
    public static void main(String[] args) throws SQLException{
        Consultas con = new Consultas();
        //System.out.println(con.Autenticacion("root","root"));
    }
}
