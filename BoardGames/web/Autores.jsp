<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

    <body>
        <div class="container">
            <br><br>			
            <div class="panel panel-primary">
                <div class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span>Autores</div>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgames", "root", "");
                    Statement s = conexion.createStatement();
                    ResultSet listado = s.executeQuery("SELECT * FROM Autores");
                %>

                <table class="striped">
                    <tr><th>ID</th><th>Nombre</th><th>Nacionalidad</th><th>Premios</th></tr>
                    <form method="get" action="guardaAutores.jsp">
                        <tr><td><input type="text" name="Autores_id" style="width:50px" size="5"></td>
                            <td><input type="text" name="nombre" style="width:150px" size="20"></td>
                            <td><input type="text" name="nacionalidad" style="width:100px" size="5"></td>
                            <td><input type="text" name="premios" style="width:350px" size="40"></td>
                            
                            <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td></tr>           
                    </form>
                    <%
                        while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("Autores_id") + "</td>");
                            out.println("<td>" + listado.getString("nombre") + "</td>");
                            out.println("<td>" + listado.getString("nacionalidad") + "</td>");
                            out.println("<td>" + listado.getString("premios") + "</td>");
                            
                    %>
                    <td>
                        <form method="get" action="modAutores.jsp">
                            <input type="hidden" name="Autores_id" value="<%=listado.getString("Autores_id")%>">
                            <input type="hidden" name="nombre" value="<%=listado.getString("nombre")%>">
                            <input type="hidden" name="nacionalidad" value="<%=listado.getString("nacionalidad")%>">
                            <input type="hidden" name="premios" value="<%=listado.getString("premios")%>">
                            
                            <button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span> Modificar</button>
                        </form>
                    </td>
                    <td>
                        <form method="get" action="borraAutores.jsp">
                            <input type="hidden" name="Autores_id" value="<%=listado.getString("Autores_id")%>"/>
                            <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Eliminar</button>
                        </form>
                    </td></tr>
                    <%
                        } // while   
                        conexion.close();
                    %>

                </table>

            </div>

            <br>&nbsp;&nbsp;<a href="index.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Menu principal</a>

        </div>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

    </body>
</html>