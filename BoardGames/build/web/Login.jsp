<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <link href="img/favicon.ico" rel="icon" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <title>BoardGames</title>
    </head>
    <body class="home">
        <table class="striped">
            <form class="form" role="form" id="formLogin" method="get" action="loginFunc.jsp">

                <tr><td>Usuario</td>
                    <td><input type="text" name="usuario" id="uname1"><td>
                </tr>

                <tr><td>Contraseña</td>
                    <td><input type="password" name="contrasena" id="pwd1" required=""><td></tr>
                <tr >

                    <td style="width: 50px"><button type="submit" class="btn btn-success btn-lg float-right" id="btnLogin">Login</button></td>
                </tr>
            </form>
        </table>

    </body>
</html>
