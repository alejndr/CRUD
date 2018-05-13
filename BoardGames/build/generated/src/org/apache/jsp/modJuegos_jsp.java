package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class modJuegos_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" href=\"css/estilos.css\">\n");
      out.write("        <title>Juegos de mesa</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 request.setCharacterEncoding("UTF-8");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <br><br>\n");
      out.write("            <div class=\"panel panel-info\">\n");
      out.write("                <div class=\"panel-heading text-center\">Modificación de juegos</div>\n");
      out.write("                <form method=\"get\" action=\"guardaModJuegos.jsp\">\n");
      out.write("                    <div class=\"form-group\"> \n");
      out.write("                        <label>&nbsp;&nbsp;ID:&nbsp;</label><input type=\"text\" size=\"11\" name=\"Juegos_id\" value=\"");
      out.print( Integer.valueOf(request.getParameter("Juegos_id")));
      out.write("\" readonly>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>&nbsp;&nbsp;Genero:&nbsp;</label><input type=\"text\" size=\"35\" name=\"genero\" value=\"");
      out.print( request.getParameter("genero"));
      out.write("\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type=\"text\" size=\"20\" name=\"nombre\" value=\"");
      out.print( request.getParameter("nombre"));
      out.write("\">\n");
      out.write("                        <label>&nbsp;&nbsp;Editorial:&nbsp;</label><input type=\"text\" size=\"20\" name=\"editorial\" value=\"");
      out.print( request.getParameter("editorial"));
      out.write("\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>&nbsp;&nbsp;Precio:&nbsp;</label><input type=\"text\" name=\"precio\" size=\"20\" value=\"");
      out.print( Double.valueOf(request.getParameter("precio")));
      out.write("\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        \n");
      out.write("                        <label>&nbsp;&nbsp;Id Autor:&nbsp;</label><input type=\"text\" name=\"Autores_id\" size=\"20\" value=\"");
      out.print( Integer.valueOf(request.getParameter("Autores_id")));
      out.write("\">\n");
      out.write("                    </div>\n");
      out.write("                    <br>\n");
      out.write("                    &nbsp;&nbsp;<a href=\"index.jsp\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span>Cancelar</a>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-success\"><span class=\"glyphicon glyphicon-ok\"></span>Aceptar</button><br><br>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("        <!--Import jQuery before materialize.js-->\n");
      out.write("        <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-2.1.1.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js\"></script>\n");
      out.write("        \n");
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
