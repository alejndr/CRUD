<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
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



        <title>Juegos de mesa</title>
    </head>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var elems = document.querySelectorAll('select');
            var instances = M.FormSelect.init(elems, options);
        });

        // Or with jQuery

        $(document).ready(function () {
            $('select').formSelect();
        });
    </script>

    <body>
        <div class="container">
            <br><br>			
            <div class="panel panel-primary">
                <div class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span>Juegos de mesa</div>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgames", "root", "");

                    Statement s = conexion.createStatement();
                    ResultSet listado = s.executeQuery("SELECT juegos_id,genero,juegos.nombre as nombre, editorial, precio, autores.Autores_id as Autores_id, autores.nombre as autor_juego FROM `juegos` inner join autores on juegos.Autores_id = autores.Autores_id");

                %>

                <table class="striped">
                    <tr><th>ID</th><th>Genero</th><th>Nombre</th><th>Editorial</th><th>Precio</th><th>ID del Autor</th></tr>
                    <form method="get" action="guardaJuegos.jsp">
                        <tr><td><input type="text" name="Juegos_id" style="width:30px"  size="11" ></td>
                            <!--<td><input type="text" name="genero" style="width:100px" size="10"></td>-->
                            <td>
                                <%                                    
                                    ArrayList<String> genero = new ArrayList();
                                    genero.add("Dungeon Crawler");
                                    genero.add("Deckbuilder");
                                    genero.add("Bluffing");
                                    genero.add("Tactica");
                                    genero.add("Party");
                                    genero.add("Euro");
                                    genero.add("rol");
                                    
                                    

                                %>
                                <div class="input-field col s12">
                                    <select class="browser-default" name="genero" style="width:100px">
                                        <%                                            
                                            int cont = 0;
                                            for (String n : genero) {
                                                cont++;
                                                out.println("<option value=" + n + ">" + n + "</option>");
                                            }
                                        %>
                                    </select>
                                </div>

                            </td>
                            <td><input type="text" name="nombre" style="width:170px" size="20"></td>
                            <td><input type="text" name="editorial" style="width:150px" size="15"></td>
                            <td><input type="text" name="precio" style="width:60px" size="10"></td>
                            <td><input type="text" name="Id Autor" style="width:150px" size="5"></td>

                            <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td></tr>           
                    </form>
                    <%
                        while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("Juegos_id") + "</td>");
                            out.println("<td>" + listado.getString("genero") + "</td>");
                            out.println("<td>" + listado.getString("nombre") + "</td>");
                            out.println("<td>" + listado.getString("editorial") + "</td>");
                            out.println("<td>" + listado.getString("precio") + "€ </td>");
                            out.println("<td>" + listado.getString("autor_juego") + " (" + listado.getString("Autores_id") + ")</td>");


                    %>
                    <td>
                        <form method="get" action="modJuegos.jsp">
                            <input type="hidden" name="Juegos_id" value="<%=listado.getString("Juegos_id")%>">
                            <input type="hidden" name="genero" value="<%=listado.getString("genero")%>">
                            <input type="hidden" name="nombre" value="<%=listado.getString("nombre")%>">
                            <input type="hidden" name="editorial" value="<%=listado.getString("editorial")%>">
                            <input type="hidden" name="precio" value="<%=listado.getString("precio")%>">
                            <input type="hidden" name="Autores_id" value="<%=listado.getString("Autores_id")%>">
                            <button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span> Modificar</button>
                        </form>
                    </td>
                    <td>
                        <form method="get" action="borraJuegos.jsp">
                            <input type="hidden" name="Juegos_id" value="<%=listado.getString("Juegos_id")%>"/>
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
        <div id="footer"></div>
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

    </body>
</html>