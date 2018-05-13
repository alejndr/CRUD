<%@page import="java.util.HashMap"%>
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
        <link rel="stylesheet" href="css/estilos.css">
        <title>BoardGames</title>
    </head>
    <body>
        <%
        
         HashMap<String, String> login = new HashMap();
            login.put("Alejandro", "1234");
            login.put("Jose", "1234");
            login.put("Ana", "1234");
            
            
            
            String usuario = request.getParameter("usuario");
            String contraseña = request.getParameter("contrasena");
            if (login.containsKey(usuario)) {
                if (login.get(usuario).equals(contraseña)) {
                    session.setAttribute("usuario", usuario);
                    response.sendRedirect("index.jsp");
                } else {
                    out.println("<div class='alert alert-success' role='alert'>Contraseña incorrecta</div>");
                    out.println("<a href='Login.jsp' class='btn btn-primary'><span class='glyphicon glyphicon-home'></span> Volver </button></a>");
                }
            } else {
                out.println("<div class='alert alert-success' role='alert'>Usuario incorrecto</div>");
                out.println("<a href='Login.jsp' class='btn btn-primary'><span class='glyphicon glyphicon-home'></span> Volver </button></a>");
            }
        %>
    </body>
</html>
