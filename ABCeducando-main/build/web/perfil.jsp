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
            <%@include file="Componentes/Administrativo/navadmin.jsp" %>
        </nav>
        <header>            
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
                                                        <a href="crearmensaje.jsp">
                                                            <span class="educate-icon educate-message edu-chat-pro"></span>
                                                        </a>
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                            <span class="educate-icon educate-professor icon-wrap"></span>
                                                            <span class="admin-name"><%=usu.getNombre()%> <%=usu.getApellidos()%></span>
                                                            <i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
                                                        </a>
                                                        <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                            <li><a href="#"><span class="edu-icon edu-home-admin author-log-ic"></span>Mi perfil</a>
                                                            </li>
                                                            <li><a href="../actualizarU.jsp"><span class="edu-icon edu-user-rounded author-log-ic"></span>Actualizar datos</a>
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
        </header><br><br><br><br><br><br>

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
                    <div class="col-lg-10" style="margin-left: 250px ">
                        <div class="card" style="border: solid 0px;padding: 50px; margin-left: 50px; background: #ffffff;">
                            <div class="card-body">
                                <div class="row">                
                                        <div class="col-lg-7" style="padding-left: 100px">
                                            <div class="card" style="background: #ffffff;">
                                                <div class="card-body" style="border: solid 0px; padding: 40px; height: 600px;">
                                                    <ul id="myTabedu1" class="tab-review-design">
                                                        <li class="active"><a href="">Mi perfil</a></li>
                                                    </ul>
                                                    <form class="" action="Usuario" method="post">  
                                                        <div class="">
                                                            <label class="formulario__label" for="numeroDocumento">Numero Documento</label>
                                                            <label style="vertical-align: middle;"  class="form-control"><%=usu.getUsuarioid()%></label>                                                          
                                                            <label class="formulario__label">Nombres</label>
                                                            <label  class="form-control"><%=usu.getNombre()%></label>
                                                            <label class="formulario__label" for="apellidos">Apellidos</label>
                                                            <label  class="form-control"><%=usu.getApellidos()%></label>
                                                            <label class="formulario__label" >Tel??fono</label>
                                                            <label  class="form-control"><%=usu.getTelefono()%></label>
                                                            <input type="hidden"  name="rol" value="<%=usu.getNombrerol()%>" required>
                                                            <label class="formulario__label">Email</label>
                                                            <label  class="form-control"><%=usu.getEmail()%></label>
                                                            <input value="9" name="opcion" type="hidden"><br>      
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card" style="background: #ffffff;  border: solid 0px;">
                                                <div  class="card-body" style="padding: 50px; height: 600px; " >
                                                    <img src="img/trabajador.png" style="height: 500px; width: 500px;  background: #ffffff; border: solid 0px;" alt=""/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%@include file="Componentes/mensajesRespuesta.jsp" %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </section>
        </div>
        <%}%><br>
        <%@include file="Componentes/Administrativo/footer.jsp"%>
    </body>
    <%@include file="Componentes/Administrativo/js.jsp" %>
</html>
