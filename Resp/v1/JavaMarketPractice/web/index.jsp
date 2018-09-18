<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log IN</title>
        <jsp:include page="header.jsp"></jsp:include>
    </head>
    <body>
        <div class="container">
            <div>
                <h1 id="main-title">Sistema de Facturacion </h1>
            </div>
            
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div class="login-window system-window">
                        <h1>Inicia sesión</h1>
                        <!--<form id="TestConecction" name="TestConecction" action="TestConecction">
                        <input class="form-control" type="submit" value="ProbarConexion" name="ingresar" />
                        </form>!-->
                        <form id="ValidarUsuario" name="ValidarUsuario" action="ValidarUsuario" method="post">
                            <table border="0">
                                <tbody>
                                    <tr>
                                        <td>Usuario</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" type="text" name="user" size="10" /></td>
                                    </tr>
                                    <tr>
                                        <td>Clave</td>
                                     </tr>
                                    <tr>
                                        <td><input class="form-control" type="password" name="pass" size="10" /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><input class="form-control" type="submit" value="Ingresar" name="ingresar" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                        <div id="mensaje-ingreso"></div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6"></div>
            </div>
           
        </div>
        
    </body>
</html>
