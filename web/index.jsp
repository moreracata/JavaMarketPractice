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
                        <h1>Log In</h1>
                        <!--<form id="TestConecction" name="TestConecction" action="TestConecction">
                        <input class="form-control" type="submit" value="ProbarConexion" name="ingresar" />
                        </form>!-->
                        <form id="ValidarUsuario" name="ValidarUsuario" action="ValidarUsuario" method="post">
                            <table border="0">
                                <tbody>
                                    <tr>
                                        <td>User</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" type="text" name="user" size="10" /></td>
                                    </tr>
                                    <tr>
                                        <td>Password</td>
                                     </tr>
                                    <tr>
                                        <td><input class="form-control" type="password" name="pass" size="10" /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><input class="app-btn form-control" type="submit" value="Ingresar" name="ingresar" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                        <div id="mensaje-ingreso"></div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <div class="left-msg-window">
                        <h1>Neque porro quisquam ... </h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dignissim volutpat ex. Etiam urna felis, dictum et urna vel, vulputate viverra tortor. Pellentesque commodo porta orci sed iaculis. Pellentesque dictum, felis vel mollis cursus, diam est hendrerit est, ac mollis enim enim a dolor</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dignissim volutpat ex. Etiam urna felis, dictum et urna vel, vulputate viverra tortor. Pellentesque commodo porta orci sed iaculis. Pellentesque dictum, felis vel mollis cursus, diam est hendrerit est, ac mollis enim enim a dolor</p>
                        
                    </div>
                </div>
            </div>
           
        </div>
        
    </body>
</html>
