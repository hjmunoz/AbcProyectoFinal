
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloDAO.EstudianteDAO"%>
<%@page import="modeloVO.ActividadEntregadaVO"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Componentes/Sessiones.jsp" %>
<%@include file="Componentes/datosUsuarioSesion.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="Componentes/Estudiante/head.jsp" %>     
    </head>
    <body>
        <!-----------------------------------------------BARRA NAVEGACION---------------------------------------------->
        <nav>
            <%@include file="Componentes/Estudiante/navest.jsp" %>
        </nav>
        <!-----------------------------------------------BARRA NAVEGACION---------------------------------------------->
        <header>
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
                                            <%int idEstudiante1 = 0;
                                                UsuarioVO usu1 = new UsuarioVO();
                                                UsuarioDAO usudao1 = new UsuarioDAO();
                                                miSesion.getAttribute("datosUsuario");
                                                ArrayList<UsuarioVO> datosU1 = (ArrayList<UsuarioVO>) miSesion.getAttribute("datosUsuario");
                                                for (int i = 0; i < datosU1.size(); i++) {
                                                    usu1 = datosU1.get(i);
                                                    idEstudiante1 = usu1.getUsuarioid();
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
                                                                <span class=""></span>
                                                            </a>
                                                            <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                                <span class="educate-icon educate-professor icon-wrap"></span>
                                                                <span class="admin-name"><%=usu1.getNombre()%> <%=usu1.getApellidos()%></span>
                                                                <i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
                                                            </a>
                                                            <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                                <li><a href="perfilEstudiante.jsp"><span class="edu-icon edu-home-admin author-log-ic"></span>Mi perfil</a>
                                                                </li>
                                                                <li><a href="../actualizarE.jsp"><span class="edu-icon edu-user-rounded author-log-ic"></span>Actualizar datos</a>
                                                                </li>
                                                                <li><a href="login.jsp"><span class="edu-icon edu-money author-log-ic"></span>Cerrar sesi??n</a>
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
        </header>
        <!------------------------------------------------------TABLA---------------------------------------------------------->
        <div class="data-table-area mg-b-15" style="margin-top: 50px;">
            <div class="container-fluid"><br>
                <div class="row" style="border: solid 0px">
                    <div class="col-lg-2 col-md-1 col-sm-1 col-xs-1"></div>
                    <div class="col-lg-9 col-md-10 col-sm-10 col-xs-10">
                        <div class="sparkline13-list">
                            <div class="sparkline13-hd">
                                <ul id="myTabedu1" class="tab-review-design">
                                    <li class="active"><a href="">Actividades entregadas</a></li>
                                </ul>
                            </div>
                            <div class="sparkline13-graph">
                                <div class="datatable-dashv1-list custom-datatable-overright">
                                    <table style="border: 2px solid rgba(0,0,0,0.1);" id="table" class="table table-bordered" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                           data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                        <thead style="font-size: 20px;">
                                            <tr style="font-size: 20px;">      
                                                <th>Actividad</th>
                                                <th>calificacion</th>                                                    
                                                <th>Estado</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                             String idEstudiante = "";
                                                UsuarioVO usu = new UsuarioVO();
                                                UsuarioDAO usudao = new UsuarioDAO();
                                                miSesion.getAttribute("datosUsuario");
                                                ArrayList<UsuarioVO> datosU = (ArrayList<UsuarioVO>) miSesion.getAttribute("datosUsuario");
                                                if (datosU.size() != 0) {
                                                    for (int i = 0; i < datosU.size(); i++) {
                                                        usu = datosU.get(i);
                                                        idEstudiante = usu.getNombre();
                                                    }
                                                }
                                                ActividadEntregadaVO datosVO = new ActividadEntregadaVO();
                                                EstudianteDAO datosDAO = new EstudianteDAO();
                                                ArrayList<ActividadEntregadaVO> listaActividad = datosDAO.listarActivadesEntregadas(idEstudiante);
                                                if (listaActividad.size() != 0) {
                                                    for (int i = 0; i < listaActividad.size(); i++) {
                                                        datosVO = listaActividad.get(i);
                                            %>
                                            <tr>   
                                                <td style="vertical-align: middle">
                                                    <a href="<%=datosVO.getActividadEntregadaRuta()%>" target="_blank"><img src="img/pdf.png" title="pdf"/></a>
                                                </td>
                                                <td style="vertical-align: middle"><%=datosVO.getCalificacion()%></td>                                                    
                                                <td style="vertical-align: middle"><%=datosVO.getActividadEntregadaEstado()%></td>
                                            </tr>
                                            <% }
                                                }%>
                                        </tbody>
                                    </table>                                       
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
                </div>
            </div>
        </div>
        <div class="col-sm-12">
            <%@include file="Componentes/mensajesRespuesta.jsp" %>
        </div>
        <!------------------------------------------------------TABLA---------------------------------------------------------->

        <footer>
            <%@include file="Componentes/Estudiante/footer.jsp" %>
        </footer>
    </body>
    <%@include file="Componentes/Estudiante/js.jsp" %>
</html>
