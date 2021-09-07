




<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.ActividadCargadaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Componentes/Sessiones.jsp" %>
<%@include file="Componentes/datosUsuarioSesion.jsp"%>

<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Entregar Actividad</title>
        <meta name="description" content="">

        <%@include file="Componentes/Estudiante/head.jsp" %>

    </head>
    <body>
        <header>
            <%@include file="Componentes/Estudiante/navest.jsp" %>
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
                                                                <span class="educate-icon educate-message edu-chat-pro"></span>
                                                            </a>
                                                            <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                                <span class="educate-icon educate-professor icon-wrap"></span>
                                                                <span class="admin-name"><%=usu1.getNombre()%> <%=usu1.getApellidos()%></span>
                                                                <i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
                                                            </a>
                                                            <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                                <li><a href="#"><span class="edu-icon edu-home-admin author-log-ic"></span>Mi perfil</a>
                                                                </li>
                                                                <li><a href="../actualizarU.jsp"><span class="edu-icon edu-user-rounded author-log-ic"></span>Actualizar datos</a>
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
        </header>

        <div class="widget-program-box mg-tb-30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12"></div>
                    <div class="col-lg-5 col-md-6 col-sm-6 col-xs-12">
                        <div class="hpanel widget-int-shape responsive-mg-b-30">
                            <div class="panel-body">
                                <div class="text-center content-box">
                                    <section class="container-fluid">
                                        <div class="row">
                                            <div class="col-xl-12">
                                                <div class="registrodocente">
                                                    <h1>Entregar Actividad</h1>                                          
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-4"></div>
                                            <div class="col-xl-4">
                                                <div class="datospersonales">
                                                    <form name="formpdf" action="Estudiante" method="post" enctype="multipart/form-data">       
                                                        <%@include file="Componentes/java/inputIdUsuario.jsp" %>     
                                                        <%
                                                            int id = 0;
                                                            if (request.getAttribute("idActividad") != null) {

                                                                id = (int) request.getAttribute("idActividad");
                                                            }
                                                            ;%>
                                                        
                                                        
                                                        <label for="id"></label>
                                                        <input type="hidden" name="idActividad" value="<%=id%>" required> <br>         
                                                        <button style="background: #1f97d4" class="btn btn-success widget-btn-1 btn-sm"><input type="file" name="urlArchivo"  accept="application/pdf" class="btn1" required/></button><br><br>

                                                        <input value="registrar" name="opcion" type="hidden">
                                                        <button style="background: #1f97d4" class="btn btn-success widget-btn-1 btn-sm"><input style="background: #1f97d4" type="submit" value="Enviar Archivo"  id="btn" class="btn"/></button>

                                                    </form>
                                                    <%@include file="Componentes/mensajesRespuesta.jsp" %>
                                                </div>
                                            </div>
                                        </div>
                                    </section> 

                                </div>
                            </div>
                        </div>
                    </div>                        
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12"></div>
                </div>
            </div>
        </div>
        <footer>
            <%@include file="Componentes/docente/footer.jsp" %>
        </footer>
    </body>
    <%@include file="Componentes/docente/js.jsp" %>
</html>
