<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloVO.ActividadCargadaVO"%>

<%@include file="Componentes/Sessiones.jsp"%>
<%@include file="Componentes/datosUsuarioSesion.jsp" %>


<!doctype html>
<html class="no-js" lang="en">

    <%@include file="Componentes/Administrativo/head.jsp" %>

    <body>
        <!--[if lt IE 8]>
                    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- Start Left menu area -->

        <%@include file="Componentes/Administrativo/navadmin.jsp" %>
        <!-- End Left menu area -->
        <!-- Start Welcome area -->
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
                                        <%                            int idEstudiante = 0;
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
            <form method="post"  name="formularioCargaMatricula" enctype="multipart/form-data">
                <div class="row" style="margin: 100px;">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12"></div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="hpanel widget-int-shape responsive-mg-b-30">
                            <div class="panel-body">
                                <div class="text-center content-box">
                                    <h2 class="m-b-xs">Registrar Matriculas</h2>

                                    <p class="font-bold text-success"></p>
                                    <div class="m icon-box">
                                        <i class="educate-icon educate-star-half"></i>
                                    </div>
                                    <p class="small mg-t-box">
                                        Seleccione el archivo de matriculas que desea cargar .csv
                                    </p>
                                    <button class="btn btn-success widget-btn-1 btn-sm">
                                        <input style="font-size: 15px;" type="file" onchange="cargarArchivo(this)" name="urlArchivo" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel"/>
                                    </button>

                                </div>
                                <div class="form-group">
                                    <div class="col-md-12 text-center">
                                        <input value="" name="nombreArchivo" type="hidden" />
                                        <input value="3" name="opcion" type="hidden" />

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12"></div>
                </div>
            </form>


        </table>





        <%@include file="Componentes/Administrativo/footer.jsp" %>
    </div>

    <%@include file="Componentes/Administrativo/js.jsp" %>
    <div  class="row" style="color: #007180;">
        <%
            if (request.getAttribute("mensajeError") != null) {
        %>
        ${mensajeError}
        <%} else {%>
        ${mensajeExito}
        <%}%>
    </div>





    <iframe name="null" style="display: none;"></iframe>
</body>

</html>