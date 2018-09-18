<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Facturacion - Usuarios</title>
        <jsp:include page="header.jsp"></jsp:include>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12 col-md-12 col-lg-12">
                    <div class="user-window system-window">
                        <h1>Usuarios</h1>
                        <form id="usuarios" name="usuarios" action="usuarios.jsp" method="POST">
                            <table border="0">
                                <tbody>
                                    <tr>
                                        <td>ID Usuario</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" id="idUsuario" type="text" name="idUsuario" value="idUsuario" size="10" /></td>
                                    </tr>
                                    <tr>
                                        <td>Nombre</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" id="nombre" type="text" name="nombre" value="nombre" size="30" /></td>
                                    </tr>
                                    <tr>
                                        <td>Apellidos</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" id="apellidos" type="text" name="apellidos" value="apellidos" /></td>
                                    </tr>
                                    <tr>
                                        <td>Clave</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" id="clave" type="password" name="clave" value="clave" size="10" /></td>
                                    </tr>
                                    <tr>
                                        <td>Confirmacion</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" id="confirmacion" type="password" name="confirmacion" value="confirmacion" size="10" /></td>
                                    </tr>
                                    <tr>
                                        <td>Perfil</td>                                       
                                    </tr>
                                    <tr>
                                        <td>
                                            <select class="form-control" id="perfil" name="perfil">
                                                <option value="0">Seleccione Perfil</option>
                                                <option value="1">Administrador</option>
                                                <option value="2">Empleador</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Foto</td>
                                    </tr>
                                    <tr>
                                        <td><input class="form-control" type="file" id="foto" name="foto" value="" width="10" /></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="options" >
                                <div class="btn-group" role="group">
                                    <input class="btn btn-secondary" type="submit" value="Consultar" name="consultar" id="consultar" />
                                    <input class="btn btn-secondary" type="submit" value="Nuevo" name="nuevo" id="nuevo" />
                                    <input class="btn btn-secondary" type="submit" value="Modificar" name="modificar" id="modificar" />
                                    <input class="btn btn-secondary" type="submit" value="Borrar" name="borrar" id="borrar" />
                                    <input class="btn btn-secondary" type="submit" value="Limpiar" name="limpiar" id="limpiar" />
                                    <input class="btn btn-secondary" type="submit" value="Listar" name="listar" id="listar" />
                                </div>
                            </div>
                        </form>
                        <div id="mensaje-ingreso"></div>
                    </div>
                </div>
            </div>
        </div>
        
    </body>
</html>
