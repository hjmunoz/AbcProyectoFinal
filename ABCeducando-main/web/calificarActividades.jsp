<%@page import="modeloDAO.DocenteDAO"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.ActividadCargadaVO"%>
<%@page import="modeloVO.ActividadEntregadaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Componentes/Sessiones.jsp" %>
<%@include file="Componentes/datosUsuarioSesion.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file="Componentes/docente/head.jsp" %>
    </head>
    <body>
        <!--------------------------------------BARRA NAVEGACION---------------------------------------->
        <nav>
            <%@include file="Componentes/docente/navdoc.jsp" %>>
        </nav>
        <!--------------------------------------BARRA NAVEGACION---------------------------------------->

        <header>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="logo-pro">
                            <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-advance-area">
                <div class="header-top-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="header-top-wraper" style="background-color: #1f97d4;">
                                    <div class="row" style="background-color: #1f97d4;">
                                        <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                            <div class="header-top-menu tabl-d-n">
                                                <ul class="nav navbar-nav mai-top-nav">
                                                </ul>
                                            </div>
                                        </div>
                                        <%int idEstudiante = 0;
                                            UsuarioVO usu1 = new UsuarioVO();
                                            UsuarioDAO usudao1 = new UsuarioDAO();
                                            miSesion.getAttribute("datosUsuario");
                                            ArrayList<UsuarioVO> datosU1 = (ArrayList<UsuarioVO>) miSesion.getAttribute("datosUsuario");
                                            for (int i = 0; i < datosU1.size(); i++) {
                                                usu1 = datosU1.get(i);
                                                idEstudiante = usu1.getUsuarioid();
                                        %>                                                                                                                                             
                                        <%}%>
                                        <div class="col-lg-6 col-md-5 col-sm-12 col-xs-12">
                                            <div class="header-right-info">
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                    <li class="nav-item dropdown">
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="" aria-hidden="true"></i><span class=""></span></a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="crearmensaje.jsp">
                                                        </a>
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                            <span class="educate-icon educate-professor icon-wrap"></span>
                                                            <span class="admin-name"><%=usu1.getNombre()%> <%=usu1.getApellidos()%></span>
                                                            <i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
                                                        </a>
                                                        <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                            <li><a href="perfilDocente.jsp"><span class="edu-icon edu-home-admin author-log-ic"></span>Mi perfil</a>
                                                            </li>
                                                            <li><a href="../actualizarD.jsp"><span class="edu-icon edu-user-rounded author-log-ic"></span>Actualizar datos</a>
                                                            </li>
                                                            <li><a href="login.jsp"><span class="edu-icon edu-money author-log-ic"></span>Cerrar sesión</a>
                                                            </li>
                                                        </ul>
                                                    </li>                                                    
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
        </header>

        <section>
            <div class="data-table-area mg-b-15" style="margin-top: 50px">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-md-1 col-sm-1 col-xs-1"></div>
                        <div class="col-lg-7 col-md-10 col-sm-10 col-xs-10">
                            <div class="sparkline13-list">
                                <div class="sparkline13-hd">
                                    <div class="main-sparkline13-hd">
                                        <h1>Calificar Actividades</h1>
                                    </div>
                                </div>
                                <div class="sparkline13-graph">
                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                        <table style="border: 1px solid rgba(0,0,0,0.1);" id="table" class="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                               data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                            <thead>
                                                <tr>
                                                    <th data-field="state" data-checkbox="true"></th>
                                                    <th data-field="id">Archivo</th>
                                                    <th data-field="name" data-editable="true">Calificación</th>
                                                    <th data-field="email" data-editable="true">Estado</th>
                                                    <th data-field="phone" data-editable="true">Estudiante</th>
                                                    <th data-field="phone" data-editable="true">Acción</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    int idDocente = 0;
                                                    UsuarioVO usu2 = new UsuarioVO();
                                                    UsuarioDAO usudao2 = new UsuarioDAO();
                                                    miSesion.getAttribute("datosUsuario");
                                                    ArrayList<UsuarioVO> datosU2 = (ArrayList<UsuarioVO>) miSesion.getAttribute("datosUsuario");

                                                    for (int i = 0; i < datosU2.size(); i++) {
                                                        usu2 = datosU2.get(i);
                                                        idDocente = usu2.getUsuarioid();
                                                    }

                                                    ActividadEntregadaVO datosVO = new ActividadEntregadaVO();
                                                    DocenteDAO datosDAO = new DocenteDAO();
                                                    ArrayList< ActividadEntregadaVO> listaActividad = datosDAO.listarActivadesEntregadas(idDocente);
                                                    for (int i = 0; i < listaActividad.size(); i++) {
                                                        datosVO = listaActividad.get(i);
                                                %>
                                                <tr>
                                                    <td></td>
                                                    <td>

                                                        <a href="<%=datosVO.getActividadEntregadaRuta()%>" target="_blank"><img src="img/pdf.png" title="pdf"/></a>

                                                    </td>
                                                    <td><%=datosVO.getCalificacion()%></td>   
                                                    <td><%=datosVO.getActividadEntregadaEstado()%></td>
                                                    <td><%=datosVO.getEstudianteId()%></td>  
                                                    <td>
                                                        <form id="crudForm"  action="Docente" method="post">
                                                            <input type="hidden" name="idAcrividad" value="<%=datosVO.getActividadEntregadaId()%>"/>
                                                            <input type="hidden" name="estado" value="calificado"/>
                                                            <select name="calificacion" id="cars">
                                                                <option>seleccione Calificación</option>
                                                                <option value="1">1</option>
                                                                <option value="2">2</option>
                                                                <option value="3">3</option>
                                                                <option value="4">4</option>
                                                                <option value="5">5</option>
                                                            </select>
                                                            <input id="metodo" name="opcion" value="calificar" type="hidden"/>
                                                            <button type="submit" class="btn-primary" style="padding: 5px; border-radius: 5px;">Calificar</button>
                                                        </form>
                                                    </td>                                                                                                             
                                                </tr>   
                                                <%}%>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-1 col-sm-1 col-xs-1"></div>
                    </div>
                </div>
            </div>
        </section>
        <footer>
            <%@include file="Componentes/docente/footer.jsp" %>
        </footer>

    </body>
        <%@include file="Componentes/docente/js.jsp" %>>

</html>
