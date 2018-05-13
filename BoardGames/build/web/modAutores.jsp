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
                <form method="get" action="guardaModAutores.jsp">
                    
                    <div class="form-group"> 
                        <label>&nbsp;&nbsp;ID:&nbsp;</label><input type="text" size="11" name="Autores_id" value="<%= Integer.valueOf(request.getParameter("Autores_id"))%>" readonly>
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type="text" size="35" name="nombre" value="<%= request.getParameter("nombre")%>">
                    </div>
                    <div class="form-group">
                        <label>&nbsp;&nbsp;Nacionalidad:&nbsp;</label><input type="text" size="50" name="nacionalidad" value="<%= request.getParameter("nacionalidad")%>">
                        <label>&nbsp;&nbsp;Premios:&nbsp;</label><input type="text" size="40" name="premios" value="<%= request.getParameter("premios")%>">
                    </div>
                    
                    <br>
                    &nbsp;&nbsp;<a href="Autores.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
                    <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
                </form>

            </div>

        </div>
       
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
        
    </body>
</html>