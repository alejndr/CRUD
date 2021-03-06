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
        <title>Juegos de mesa</title>
    </head>
    <body>
        <% request.setCharacterEncoding("UTF-8");%>
        <div class="container">
            <br><br>
            <div class="panel panel-info">
                <div class="panel-heading text-center">Modificación de juegos</div>
                <form method="get" action="guardaModJuegos.jsp">
                    <div class="form-group"> 
                        <label>&nbsp;&nbsp;ID:&nbsp;</label><input type="text" size="11" name="Juegos_id" value="<%= Integer.valueOf(request.getParameter("Juegos_id"))%>" readonly>
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Genero:&nbsp;</label><input type="text" size="35" name="genero" value="<%= request.getParameter("genero")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type="text" size="20" name="nombre" value="<%= request.getParameter("nombre")%>">
                        <label>&nbsp;&nbsp;Editorial:&nbsp;</label><input type="text" size="20" name="editorial" value="<%= request.getParameter("editorial")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Precio:&nbsp;</label><input type="text" name="precio" size="20" value="<%= Double.valueOf(request.getParameter("precio"))%>">
                        
                    </div>
                    <div class="form-group">
                        
                        <label>&nbsp;&nbsp;Id Autor:&nbsp;</label><input type="text" name="Autores_id" size="20" value="<%= Integer.valueOf(request.getParameter("Autores_id"))%>">
                    </div>
                    <br>
                    &nbsp;&nbsp;<a href="index.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
                    <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
                </form>

            </div>

        </div>
       
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
        
    </body>
</html>