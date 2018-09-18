<%@page import="JavaMarketPractice.Models.Usuario"%>
<%@page import="JavaMarketPractice.Models.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Facturacion - Users</title>
        <jsp:include page="header.jsp"></jsp:include>
        
    </head>
    <body>
        <jsp:include page="menuAdministrador.jsp"></jsp:include>
        <%    
        String mensaje ="";
        boolean consultar = false;
        boolean nuevo = false;
        boolean modificar = false;
        boolean borrar = false;
        boolean limpiar = false;
        boolean listar  = false;
        
        if(request.getParameter("consultar")!= null){consultar = true;}
        if(request.getParameter("nuevo")!= null){nuevo = true;}
        if(request.getParameter("modificar")!= null){modificar = true;}
        if(request.getParameter("borrar")!=  null){borrar = true;}
        if(request.getParameter("limpiar")!= null){limpiar = true;}
        if(request.getParameter("listar")!= null){listar = true;}
        
        String idUsuario="";
        String nombres="";
        String apellidos="";
        String clave="";
        String confirmacion="";
        String idPerfil="";
        String foto="";
        
        if(request.getParameter("idUsuario")!= null){idUsuario = request.getParameter("idUsuario");}
        if(request.getParameter("nombres")!= null){nombres = request.getParameter("nombres");}
        if(request.getParameter("apellidos")!= null){apellidos = request.getParameter("apellidos");}
        if(request.getParameter("clave")!=  null){clave = request.getParameter("clave");}
        if(request.getParameter("confirmacion")!=  null){confirmacion = request.getParameter("confirmacion");}
        if(request.getParameter("idPerfil")!= null){idPerfil = request.getParameter("idPerfil");}
        if(request.getParameter("foto")!= null){foto = request.getParameter("foto");}
        
        //SI el boton consultar fue presionado
        if(consultar){
            if(idUsuario.equals("") ){
               mensaje = "You must to add an user id";
            }else{
                DbManager db = new DbManager();
                Usuario myUser = db.getUsuario(idUsuario);
                
                idUsuario=myUser.getIdUsuario();
                nombres=myUser.getNombres();
                apellidos=myUser.getApellidos();
                clave=myUser.getClave();
                confirmacion = myUser.getClave();
                idPerfil=""+myUser.getIdPerfil();
                foto=myUser.getFoto();
                mensaje = "Usuario consultado";
            }
        }
        
        if(limpiar){
            idUsuario="";
            nombres="";
            apellidos="";
            clave="";
            confirmacion = "";
            idPerfil="";
            foto="";
            mensaje = "";       
        }
         
        if(nuevo){
            if(idUsuario.equals("")){
                mensaje = "You must to enter an user id";  
            }
            if(nombres.equals("")){
                mensaje = "You must to enter an user name";  
            }
            if(apellidos.equals("")){
                mensaje = "You must to enter an user last name";  
            }
            if(clave.equals("")){
                mensaje = "You must to create a key";  
            }
            if(confirmacion.equals("")){
                mensaje = "You must to enter the password confirmation";  
            }
            if(!confirmacion.equals(clave)){
                mensaje = "The password and passs confirmation must to be equals";  
            }
            if(!idPerfil.equals("0")){
                mensaje = "You must to enter an user profile ";  
            }
        }
        %>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12 col-md-12 col-lg-12">
                    <div class="user-window system-window">
                        <h1>Users</h1>
                        <form id="usuarios" name="usuarios" action="usuarios.jsp" method="POST">
                            <table border="0">
                                <tbody>
                                    <tr>
                                        <td>User ID*:</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input class="form-control" id="idUsuario" type="text" name="idUsuario" value="<%=idUsuario%>" size="10" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Fist Name*:</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" id="nombres" type="text" name="nombres" value="<%=nombres%>" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>Last Name*:</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" id="apellidos" type="text" name="apellidos" value="<%=apellidos%>" /></td>
                                    </tr>
                                    <tr>
                                        <td>Password*:</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" id="clave" type="password" name="clave" value="<%=clave%>" size="10" /></td>
                                    </tr>
                                    <tr>
                                        <td>Confirmation*:</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" id="confirmacion" type="password" name="confirmacion" value="<%=clave%>" size="10" /></td>
                                    </tr>
                                    <tr>
                                        <td>User Role*:</td>                                       
                                    </tr>
                                    <tr>
                                        <td>
                                            <select class="form-control" id="perfil" name="perfil">
                                                <option value="0" <%=(idPerfil.equals("") ? "selected" :"")%> >Select a Profile</option>
                                                <option value="1" <%=(idPerfil.equals("1") ? "selected" :"")%>>Administrator</option>
                                                <option value="2" <%=(idPerfil.equals("2") ? "selected" :"")%>>Employee</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Foto</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" type="file" id="foto" name="foto" value="" width="10" /></td>
                                    </tr>
                                    <tr>
                                        <td>Campos Obligatorios*</td>
                                    </tr>
                                    <tr>
                                        <td><%=mensaje%></td>
                                    </tr>
                                </tbody>
                            </table>
                            <jsp:include page="botones.jsp"></jsp:include>
                        </form>
                                            
                        <div class="bottom-btns">
                            <a class="a-btn" href="javascript:history.back(1)">Go Back</a>
                            <a class="a-btn" href="menuAdministrador.jsp">Main Menu</a>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
