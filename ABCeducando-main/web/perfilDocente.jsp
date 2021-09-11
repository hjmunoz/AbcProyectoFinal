<%-- 
    Document   : actualizarU
    Created on : 19/08/2021, 11:36:26 AM
    Author     : Hector
--%>

<%@page import="modeloVO.DatosPersonalesVO"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloVO.ActividadCargadaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Componentes/Sessiones.jsp" %>
<%@include file="Componentes/datosUsuarioSesion.jsp"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Datos</title>
        <%@include file="Componentes/Administrativo/head.jsp" %>

    </head>
    <body>
        <nav>
            <%@include file="Componentes/docente/navdoc.jsp" %>
        </nav>
        <header>
            <div class="all-content-wrapper" >
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
                                                UsuarioVO usu = new UsuarioVO();
                                                UsuarioDAO usudao = new UsuarioDAO();
                                                miSesion.getAttribute("datosUsuario");
                                                ArrayList<UsuarioVO> datosU = (ArrayList<UsuarioVO>) miSesion.getAttribute("datosUsuario");
                                                for (int i = 0; i < datosU.size(); i++) {
                                                    usu = datosU.get(i);
                                                    idEstudiante = usu.getUsuarioid();
                                            %>                                                                                                                                             
                                            <%}%>
                                            <div class="col-lg-6 col-md-5 col-sm-12 col-xs-12">
                                                <div class="header-right-info">
                                                    <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                        <li class="nav-item dropdown">
                                                            <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="" aria-hidden="true"></i><span class=""></span></a>
                                                        </li>
                                                        <li class="nav-item">                                                            
                                                            <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                                <span class="educate-icon educate-professor icon-wrap"></span>
                                                                <span class="admin-name"><%=usu.getNombre()%> <%=usu.getApellidos()%></span>
                                                                <i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
                                                            </a>
                                                            <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                                <li><a href="#"><span class="edu-icon edu-home-admin author-log-ic"></span>Mi perfil</a>
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
            </div>
        </header><br><br>

        <%
            int idEstudiante1 = 0;
            UsuarioVO usu1 = new UsuarioVO();
            UsuarioDAO usudao1 = new UsuarioDAO();
            miSesion.getAttribute("datosUsuario");
            ArrayList<UsuarioVO> datosU1 = (ArrayList<UsuarioVO>) miSesion.getAttribute("datosUsuario");

            for (int i = 0; i < datosU1.size(); i++) {
                usu1 = datosU1.get(i);
                idEstudiante1 = usu.getUsuarioid();


        %>
        <% if (usu.getNombrerol().equals("estudiante")) {
        %>

        <%} else {%>

        <%}%>
        <div class="data-table-area mg-b-15">
            <section class="container-fluid">            
                <div class="row">                
                    <div class="col-lg-12" style="margin-left: 50px; margin-right: 50px;">
                        <div class="col-lg-7" style="padding-left: 220px">
                            <div class="card" style="background: #ffffff;">
                                <div class="card-body" style="border: solid 0px; padding: 40px; height: 600px;">
                                    <ul id="myTabedu1" class="tab-review-design">
                                        <li class="active"><a href="">Mi perfil</a></li>
                                    </ul>
                                    <form class="container  align-content-center" action="Usuario" method="post">       
                                        <label class="formulario__label" for="numeroDocumento">Numero Documento</label>
                                        <label style="width: 500px;" class="form-control"><%=usu.getUsuarioid()%></label>                                                          
                                        <label class="formulario__label">Nombres</label>
                                        <label style="width: 500px;" class="form-control"><%=usu.getNombre()%></label>
                                        <label class="formulario__label" for="apellidos">Apellidos</label>
                                        <label style="width: 500px;" class="form-control"><%=usu.getApellidos()%></label>
                                        <label class="formulario__label" >Teléfono</label>
                                        <label style="width: 500px;" class="form-control"><%=usu.getTelefono()%></label>
                                        <input type="hidden"  name="rol" value="<%=usu.getNombrerol()%>" required>
                                        <label class="formulario__label">Email</label>
                                        <label style="width: 500px;" class="form-control"><%=usu.getEmail()%></label>
                                        <input value="9" name="opcion" type="hidden"><br>
                                        <div class="row">
                                            <div class="col-lg-2"></div>                                    
                                            <div class="col-lg-4"></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card" style="background: #ffffff">
                                <div class="card-body" style="padding: 50px; height: 600px;" >
                                    <img src="img/profesor1.png" alt=""/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%@include file="Componentes/mensajesRespuesta.jsp" %>
                </div>
        </div>
    </div>
</section>
<%}%><br>
<%@include file="Componentes/Administrativo/footer.jsp"%>
</body>
<%@include file="Componentes/Administrativo/js.jsp" %>
</html>
