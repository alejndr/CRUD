package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public final class Juegos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("\n");
      out.write("        <!-- Compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link href=\"img/favicon.ico\" rel=\"icon\" type=\"image/x-icon\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/estilos.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <title>Juegos de mesa</title>\n");
      out.write("    </head>\n");
      out.write("    <script>\n");
      out.write("        document.addEventListener('DOMContentLoaded', function () {\n");
      out.write("            var elems = document.querySelectorAll('select');\n");
      out.write("            var instances = M.FormSelect.init(elems, options);\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        // Or with jQuery\n");
      out.write("\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('select').formSelect();\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <br><br>\t\t\t\n");
      out.write("            <div class=\"panel panel-primary\">\n");
      out.write("                <div class=\"btn btn-primary\"><span class=\"glyphicon glyphicon-plus\"></span>Juegos de mesa</div>\n");
      out.write("                ");

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/boardgames", "root", "");

                    Statement s = conexion.createStatement();
                    ResultSet listado = s.executeQuery("SELECT juegos_id,genero,juegos.nombre as nombre, editorial, precio, autores.Autores_id as Autores_id, autores.nombre as autor_juego FROM `juegos` inner join autores on juegos.Autores_id = autores.Autores_id");

                
      out.write("\n");
      out.write("\n");
      out.write("                <table class=\"striped\">\n");
      out.write("                    <tr><th>ID</th><th>Genero</th><th>Nombre</th><th>Editorial</th><th>Precio</th><th>ID del Autor</th></tr>\n");
      out.write("                    <form method=\"get\" action=\"guardaJuegos.jsp\">\n");
      out.write("                        <tr><td><input type=\"text\" name=\"Juegos_id\" style=\"width:30px\"  size=\"11\" ></td>\n");
      out.write("                            <!--<td><input type=\"text\" name=\"genero\" style=\"width:100px\" size=\"10\"></td>-->\n");
      out.write("                            <td>\n");
      out.write("                                ");
                                    
                                    ArrayList<String> genero = new ArrayList();
                                    genero.add("Dungeon Crawler");
                                    genero.add("Deckbuilder");
                                    genero.add("Bluffing");
                                    genero.add("Tactica");
                                    genero.add("Party");
                                    genero.add("Euro");
                                    genero.add("rol");
                                    
                                    

                                
      out.write("\n");
      out.write("                                <div class=\"input-field col s12\">\n");
      out.write("                                    <select class=\"browser-default\" name=\"genero\" style=\"width:100px\">\n");
      out.write("                                        ");
                                            
                                            int cont = 0;
                                            for (String n : genero) {
                                                cont++;
                                                out.println("<option value=" + n + ">" + n + "</option>");
                                            }
                                        
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td><input type=\"text\" name=\"nombre\" style=\"width:170px\" size=\"20\"></td>\n");
      out.write("                            <td><input type=\"text\" name=\"editorial\" style=\"width:150px\" size=\"15\"></td>\n");
      out.write("                            <td><input type=\"text\" name=\"precio\" style=\"width:60px\" size=\"10\"></td>\n");
      out.write("                            <td><input type=\"text\" name=\"Id Autor\" style=\"width:150px\" size=\"5\"></td>\n");
      out.write("\n");
      out.write("                            <td><button type=\"submit\" value=\"Añadir\" class=\"btn btn-primary\"><span class=\"glyphicon glyphicon-plus\"></span> Añadir</button></td><td></td></tr>           \n");
      out.write("                    </form>\n");
      out.write("                    ");

                        while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("Juegos_id") + "</td>");
                            out.println("<td>" + listado.getString("genero") + "</td>");
                            out.println("<td>" + listado.getString("nombre") + "</td>");
                            out.println("<td>" + listado.getString("editorial") + "</td>");
                            out.println("<td>" + listado.getString("precio") + "€ </td>");
                            out.println("<td>" + listado.getString("autor_juego") + " (" + listado.getString("Autores_id") + ")</td>");


                    
      out.write("\n");
      out.write("                    <td>\n");
      out.write("                        <form method=\"get\" action=\"modJuegos.jsp\">\n");
      out.write("                            <input type=\"hidden\" name=\"Juegos_id\" value=\"");
      out.print(listado.getString("Juegos_id"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"genero\" value=\"");
      out.print(listado.getString("genero"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"nombre\" value=\"");
      out.print(listado.getString("nombre"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"editorial\" value=\"");
      out.print(listado.getString("editorial"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"precio\" value=\"");
      out.print(listado.getString("precio"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"Autores_id\" value=\"");
      out.print(listado.getString("Autores_id"));
      out.write("\">\n");
      out.write("                            <button type=\"submit\"  class=\"btn btn-info\"><span class=\"glyphicon glyphicon-pencil\"></span> Modificar</button>\n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <form method=\"get\" action=\"borraJuegos.jsp\">\n");
      out.write("                            <input type=\"hidden\" name=\"Juegos_id\" value=\"");
      out.print(listado.getString("Juegos_id"));
      out.write("\"/>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span> Eliminar</button>\n");
      out.write("                        </form>\n");
      out.write("                    </td></tr>\n");
      out.write("                    ");

                        } // while   
                        conexion.close();
                    
      out.write("\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <br>&nbsp;&nbsp;<a href=\"index.jsp\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span>Menu principal</a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div id=\"footer\"></div>\n");
      out.write("        <!--Import jQuery before materialize.js-->\n");
      out.write("        <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-2.1.1.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
