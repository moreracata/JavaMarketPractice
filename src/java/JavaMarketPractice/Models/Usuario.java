package JavaMarketPractice.Models;

public class Usuario {
    private String idUsuario;
    private String nombres;
    private String apellidos;
    private String clave;
    private int idPerfil;
    private String foto; 
    
    public Usuario(String idUsuario,String nombres,String apellidos,String clave,int idPerfil,String foto ){
        this.idUsuario = idUsuario;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.clave = clave;
        this.idPerfil = idPerfil;
        this.foto = foto; 
    }
    
    public String getIdUsuario(){
        return this.idUsuario;
    }
    public String getNombres(){
        return this.nombres;
    }
    public String getApellidos(){
        return this.apellidos;
    }
    public String getClave(){
        return this.clave;
    }
    public int getIdPerfil(){
        return this.idPerfil;
    }
    public String getFoto(){
        return this.foto;
    }
    public void setIdUsuario(String value){
        this.idUsuario=value;
    }
    public void setNombres(String value){
        this.nombres=value;
    }
    public void setApellidos(String value){
        this.apellidos=value;
    }
    public void setClave(String value){
        this.clave=value;
    }
    public void setIdPerfil(int value){
        this.idPerfil=value;
    }
    public void setFoto(String value){
        this.foto=value;
    }
}
