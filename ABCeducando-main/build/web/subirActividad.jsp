<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.ActividadCargadaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<%@include file="Componentes/Sessiones.jsp" %>
<%@include file="Componentes/datosUsuarioSesion.jsp" %>
<html lang="en">
    <head>
        <title>Carga de actividades</title>
        <meta name="description" content=" carga actividades de alumnos">
        <%@include file="Componentes/docente/head.jsp" %>
    </head>
    <nav>
        <%@include file="Componentes/docente/navdoc.jsp" %>
    </nav>
    <body>
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
                                                    <h1>Cargar actividad</h1>                                          
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">                                            
                                            <div class="col-xl-4">
                                                <div class="datospersonales">
                                                    <form name="formpdf" action="Docente" method="post" enctype="multipart/form-data">
                                                        <div class="m icon-box">
                                                            <i class="educate-icon educate-miscellanous"></i>
                                                        </div>
                                                        <label for="id">Descripción: </label><br>
                                                        <input type="text" name="descripcion" style="border: solid 1px;" /><br><br>   
                                                        <button style="background: #1f97d4" class="btn btn-success widget-btn-1 btn-sm"><input type="file" name="urlArchivo"  accept="application/pdf" class="btn1"/></button>
                                                        <br><br>                                
                                                        <input value="registrar" name="opcion" type="hidden"/>
                                                        <input style="background: #1f97d4"  type="submit" value="Enviar Archivo"  id="btn" class="btn btn-success widget-btn-1 btn-sm"/>
                                                        <%@include file="Componentes/java/inputIdUsuario.jsp" %>                                                                                                                                                                                                                
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
