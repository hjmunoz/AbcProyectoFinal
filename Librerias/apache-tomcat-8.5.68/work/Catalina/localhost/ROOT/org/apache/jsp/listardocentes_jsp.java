/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.68
 * Generated at: 2021-08-11 01:40:47 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import modeloDAO.DatosPersonalesDAO;
import modeloVO.DatosPersonalesVO;

public final class listardocentes_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/Componentes/header.jsp", Long.valueOf(1628614301256L));
    _jspx_dependants.put("/Componentes/head.jsp", Long.valueOf(1628614301253L));
    _jspx_dependants.put("/Componentes/footer.jsp", Long.valueOf(1628614301249L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("modeloDAO.DatosPersonalesDAO");
    _jspx_imports_classes.add("modeloVO.DatosPersonalesVO");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <title>Document</title>\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"manifest\" href=\"site.webmanifest\">\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/img/favicon.ico\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/slicknav.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/progressbar_barfiller.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/gijgo.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/animate.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/animated-headline.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/magnific-popup.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/fontawesome-all.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/themify-icons.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/slick.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/nice-select.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style.css\">");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("  \n");
      out.write("<header>\n");
      out.write("            <div class=\"header-area\">\n");
      out.write("                <div class=\"main-header \">\n");
      out.write("                    <div class=\"header-top d-none d-sm-block\">\n");
      out.write("                        <div class=\"container-fluid\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-xl-12\">\n");
      out.write("                                    <div class=\"d-flex justify-content-between flex-wrap align-items-center\">\n");
      out.write("                                        <div class=\"header-info-left\">\n");
      out.write("                                            <ul>     \n");
      out.write("                                                <li><i class=\"fas fa-map-marker-alt\"></i> Bogota Colombia</li>\n");
      out.write("                                                <li><i class=\"fas fa-phone-alt\"></i> 315 367 3692</li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"header-info-right\">\n");
      out.write("                                            <ul class=\"header-social\">    \n");
      out.write("                                                <li><a href=\"#\"><i class=\"fab fa-facebook\"></i></a></li>\n");
      out.write("                                                <li><a href=\"#\"><i class=\"fab fa-twitter\"></i></a></li>\n");
      out.write("                                                <li><a href=\"#\"><i class=\"fab fa-linkedin-in\"></i></a></li>\n");
      out.write("                                                <li> <a href=\"#\"><i class=\"fab fa-instagram\"></i></a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"header-bottom  header-sticky\">\n");
      out.write("                        <div class=\"container-fluid\">\n");
      out.write("                            <div class=\"row align-items-center\">\n");
      out.write("                                <!-- Logo -->\n");
      out.write("                                <div class=\"col-xl-2 col-lg-2\">\n");
      out.write("                                    <div class=\"logo\">\n");
      out.write("                                        <a href=\"index.jsp\"><img src=\"assets/img/logo/logo.png\" alt=\"\"></a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-xl-10 col-lg-10\">\n");
      out.write("                                    <!-- Main-menu -->\n");
      out.write("                                    <div class=\"main-menu f-right d-none d-lg-block\">\n");
      out.write("                                        <nav> \n");
      out.write("                                            <ul id=\"navigation\">   \n");
      out.write("                                                   <ul class=\"submenu\">\n");
      out.write("                                                       <li><p></p>\n");
      out.write("                                                       <li>\n");
      out.write("                                                           ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Componentes/cerrarSesion.jsp", out, true);
      out.write("\n");
      out.write("                                                       </li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                <a href=\"administrativo.jsp\"><h1>Administrativo</h1></a>\n");
      out.write("                                                <li><a href=\"#\">Matriculas</a>\n");
      out.write("                                                    <ul class=\"submenu\">\n");
      out.write("                                                        <li><a href=\"registrar_matricula.jsp\">Registrar matricula</a></li>\n");
      out.write("                                                        \n");
      out.write("                                                    </ul>\n");
      out.write("                                                </li>\n");
      out.write("                                                <li><a href=\"#\">Docente</a>\n");
      out.write("                                                    <ul class=\"submenu\">\n");
      out.write("                                                        <li><a href=\"registrarDocente.jsp\">Registrar docente</a></li>\n");
      out.write("                                                        <li><a href=\"listardocentes.jsp\">Ver docentes</a></li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </li>\n");
      out.write("                                                <li><a href=\"#\">Estudiante</a>\n");
      out.write("                                                    <ul class=\"submenu\">\n");
      out.write("                                                        <li><a href=\"registrarDocente.jsp\">Registrar estudiantes</a></li>\n");
      out.write("                                                        <li><a href=\"listarEstudiantes.jsp\">Ver estudiantes</a></li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </li>\n");
      out.write("                                                <li><a href=\"#\">Mensajes</a>\n");
      out.write("                                                    <ul class=\"submenu\">\n");
      out.write("                                                        <li><a href=\"crearmensaje.jsp\">Crear y listar mensajes</a></li>\n");
      out.write("                                                        \n");
      out.write("                                                    </ul>\n");
      out.write("                                                </li>    \n");
      out.write("                                                \n");
      out.write("                                                 <li><a href=\"#\">Cerrar Sesion</a>\n");
      out.write("                                                    <ul class=\"submenu\">\n");
      out.write("                                                        <li><a href=\"login.jsp\">Cerrar Sesion</a></li>\n");
      out.write("                                                       \n");
      out.write("                                                    </ul>\n");
      out.write("                                                </li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </nav>\n");
      out.write("                                    </div>\n");
      out.write("                                </div> \n");
      out.write("                                <!-- Mobile Menu -->\n");
      out.write("                                <div class=\"col-12\">\n");
      out.write("                                    <div class=\"mobile_menu d-block d-lg-none\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Header End -->\n");
      out.write("        </header>\n");
      out.write("                                                       \n");
      out.write("                                                       \n");
      out.write("                                                       \n");
      out.write("                                                       ");
      out.write("\n");
      out.write("        <section class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                <div class=\"col-xl-12\">\n");
      out.write("                    <div class=\"registrodocente\">\n");
      out.write("                        <h1>Docentes</h1>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"col-xl-12\">\n");
      out.write("                        <div class=\"tabladocente\">\n");
      out.write("\n");
      out.write("                            <table  class=\"table-hover\" border=\"1\">\n");
      out.write("                                <thead class=\"text-white\" style=\"background: #ED078B;\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th>Numero Documento</th>\n");
      out.write("                                        <th>Tipo Documento</th>\n");
      out.write("                                        <th>Nombre</th>\n");
      out.write("                                        <th>Apellido</th>\n");
      out.write("                                        <th>Telefono</th>\n");
      out.write("                                        <th>Email</th> \n");
      out.write("                                        <th>EPS</th> \n");
      out.write("                                        <th>Acciones</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                    ");


                                        DatosPersonalesVO datosVO = new DatosPersonalesVO();
                                        DatosPersonalesDAO datosDAO = new DatosPersonalesDAO();
                                        ArrayList<DatosPersonalesVO> listadocentes = datosDAO.listardocentes();
                                        for (int i = 0; i < listadocentes.size(); i++) {
                                            datosVO = listadocentes.get(i);
                                    
      out.write("\n");
      out.write("                                    \n");
      out.write("                                    <tr>\n");
      out.write("                                        <td> ");
      out.print(datosVO.getIdDatos());
      out.write("</td>\n");
      out.write("                                        <td> ");
      out.print(datosVO.getDatostipoid());
      out.write("</td>\n");
      out.write("                                        <td> ");
      out.print(datosVO.getDatosnombres());
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print(datosVO.getDatosapellidos());
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print(datosVO.getDatostelefono());
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print(datosVO.getDatosemail());
      out.write("</td>\n");
      out.write("                                        <td>");
      out.print(datosVO.getEps());
      out.write("</td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <form id=\"crudForm\"  action=\"Usuario\" method=\"post\">\n");
      out.write("                                                \n");
      out.write("                                                <input id=\"metodo\" type=\"hidden\" name=\"opcion\" value=\"5\">\n");
      out.write("                                             \n");
      out.write("                                                <input type=\"hidden\"  name=\"textnumeroid\" value=\"");
      out.print(datosVO.getIdDatos());
      out.write("\">\n");
      out.write("                                                <input type=\"hidden\"  name=\"textnombres\" value=\"");
      out.print(datosVO.getDatosnombres());
      out.write("\">\n");
      out.write("                                                <input type=\"hidden\"  name=\"textapellidos\" value=\"");
      out.print(datosVO.getDatosapellidos());
      out.write("\">\n");
      out.write("                                                <input type=\"hidden\"  name=\"texttelefono\" value=\"");
      out.print(datosVO.getDatostelefono());
      out.write("\">\n");
      out.write("                                                <input type=\"hidden\"  name=\"textemail\" value=\"");
      out.print(datosVO.getDatosemail());
      out.write("\">\n");
      out.write("                                                <button type=\"submit\" class=\"btn-danger\"><i class=\"fas fa-trash-alt\"></i></button>\n");
      out.write("                                                <button onclick=\"crud('6')\" class=\"btn-warning\"><i class=\"fas fa-user-edit\"></i></button>\n");
      out.write("                                            </form>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");
 }
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<footer>\n");
      out.write("            <div class=\"footer-wrappper footer-bg\">\n");
      out.write("                <!-- Footer Start-->\n");
      out.write("                <div class=\"footer-area footer-padding\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row justify-content-between\">\n");
      out.write("                            <div class=\"col-xl-5 col-lg-6 col-md-6 col-sm-8\">\n");
      out.write("                                <div class=\"single-footer-caption mb-50\">\n");
      out.write("                                    <div class=\"single-footer-caption mb-30\">\n");
      out.write("                                        <!-- logo -->\n");
      out.write("                                        <div class=\"footer-logo mb-25\">\n");
      out.write("                                            <a href=\"index.html\"><img src=\"assets/img/logo/logo2_footer.png\" alt=\"\"></a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"footer-tittle\">\n");
      out.write("                                            <div class=\"footer-pera\">\n");
      out.write("                                                <p>Nuestro objetivo enseñar de la mejor forma con estándar de calidad</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <!-- social -->\n");
      out.write("                                        <div class=\"footer-social\">\n");
      out.write("                                            <a href=\"#\"><i class=\"fab fa-twitter\"></i></a>\n");
      out.write("                                            <a href=\"https://bit.ly/sai4ull\"><i class=\"fab fa-facebook-f\"></i></a>\n");
      out.write("                                            <a href=\"#\"><i class=\"fab fa-pinterest-p\"></i></a>\n");
      out.write("                                            <a href=\"#\"><i class=\"fab fa-linkedin-in\"></i></a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-xl-2 col-lg-3 col-md-3 col-sm-4\">\n");
      out.write("                                <div class=\"single-footer-caption mb-50\">\n");
      out.write("                                    <div class=\"footer-tittle\">\n");
      out.write("                                        <h4>Enlaces rapidos </h4>\n");
      out.write("                                        <ul>\n");
      out.write("                                            <li><a href=\"#\">Clases</a></li>\n");
      out.write("                                            <li><a href=\"#\">Join with us</a></li>\n");
      out.write("                                            <li><a href=\"#\">Sobre Nosotros</a></li>\n");
      out.write("                                            <li><a href=\"#\">Blog</a></li>\n");
      out.write("                                            <li><a href=\"#\">Eventos</a></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-xl-2 col-lg-3 col-md-3 col-sm-6\">\n");
      out.write("                                <div class=\"single-footer-caption mb-50\">\n");
      out.write("                                    <div class=\"footer-tittle\">\n");
      out.write("                                        <h4>Sobre Nosotros</h4>\n");
      out.write("                                        <ul>\n");
      out.write("                                            <li><a href=\"#\">Nuestro Equipo</a></li>\n");
      out.write("                                            <li><a href=\"#\">Politicas De Privacidad</a></li>\n");
      out.write("                                            <li><a href=\"#\">Testimonios</a></li>\n");
      out.write("                                            <li><a href=\"#\">Programas</a></li>\n");
      out.write("                                            <li><a href=\"#\">Nuestras historias</a></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- footer-bottom area -->\n");
      out.write("                <div class=\"footer-bottom-area\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"footer-border\">\n");
      out.write("                            <div class=\"row d-flex align-items-center\">\n");
      out.write("                                <div class=\"col-xl-12 \">\n");
      out.write("                                    <div class=\"footer-copy-right text-center\">\n");
      out.write("                                        <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> Elaborado por | \n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- Footer End-->\n");
      out.write("            </div>\n");
      out.write("        </footer>");
      out.write("\n");
      out.write("         <script src=\"assets/js/crud/crud.js\" type=\"text/javascript\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}