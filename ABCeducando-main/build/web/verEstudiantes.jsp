<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloVO.ActividadCargadaVO"%>
<%@page import="modeloDAO.DatosPersonalesDAO"%>
<%@page import="modeloVO.DatosPersonalesVO"%>

<%@include file="Componentes/Sessiones.jsp"%>
<%@include file="Componentes/datosUsuarioSesion.jsp" %>

<!doctype html>
<html class="no-js" lang="en">

    <%@include file="Componentes/Administrativo/head.jsp" %>

    <body>        
        <!--===========================================BARRA DE NAVEGACION=========================================-->
        <%@include file="Componentes/Administrativo/navadmin.jsp" %>
        <!--===========================================BARRA DE NAVEGACION=========================================-->

        <div class="all-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="logo-pro">
                            <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <!--===============================================PERFIL================================================-->
            <div class="header-advance-area">
                <div class="header-top-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="header-top-wraper">
                                    <div class="row">
                                        <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                            <div class="menu-switcher-pro">

                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                            <div class="header-top-menu tabl-d-n">
                                                <ul class="nav navbar-nav mai-top-nav">

                                                </ul>
                                            </div>
                                        </div>


                                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                            <div class="header-right-info">
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                    <li class="nav-item dropdown">
                                                        <a href="crearmensaje.jsp" class="nav-link dropdown-toggle">
                                                            <i class="educate-icon educate-message edu-chat-pro" aria-hidden="true"></i>                                                            
                                                        </a>
                                                    </li> 
                                                    <%                                                            int idEstudiante = 0;
                                                        UsuarioVO usu = new UsuarioVO();
                                                        UsuarioDAO usudao = new UsuarioDAO();
                                                        miSesion.getAttribute("datosUsuario");
                                                        ArrayList<UsuarioVO> datosU = (ArrayList<UsuarioVO>) miSesion.getAttribute("datosUsuario");

                                                        for (int i = 0; i < datosU.size(); i++) {
                                                            usu = datosU.get(i);
                                                            idEstudiante = usu.getUsuarioid();

                                                    %>                                                                                                                                             
                                                    <%}%>

                                                    <li class="nav-item">
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                            <span class="educate-icon educate-professor icon-wrap"></span>
                                                            <span class="admin-name"><%=usu.getNombre()%> <%=usu.getApellidos()%></span>
                                                            <i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
                                                        </a>
                                                        <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                            <li><a href="perfil.jsp"><span class="edu-icon edu-home-admin author-log-ic"></span>Mi Perfil</a>
                                                            </li>
                                                            <li><a href="actualizarU.jsp"><span class="edu-icon edu-user-rounded author-log-ic"></span>Actualizar Datos</a>
                                                            </li>
                                                            <li><a href="login.jsp"><span class="edu-icon edu-money author-log-ic"></span>Cerrar Sesion</a>
                                                            </li>                                                            
                                                        </ul>
                                                    </li>
                                                    <li class="nav-item nav-setting-open">                                                        
                                                        <div role="menu" class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">
                                                            <ul class="nav nav-tabs custon-set-tab">
                                                                <li class="active"><a data-toggle="tab" href="#Notes">Notes</a>
                                                                </li>
                                                                <li><a data-toggle="tab" href="#Projects">Projects</a>
                                                                </li>
                                                                <li><a data-toggle="tab" href="#Settings">Settings</a>
                                                                </li>
                                                            </ul>                                                            
                                                        </div>
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
            <!--===============================================PERFIL================================================-->

            <!--================================ TABLA =======================================-->
            <div class="data-table-area mg-b-15" style="margin-top: 50px">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                            <div class="sparkline13-list">
                                <div class="sparkline13-hd">
                                    <div class="main-sparkline13-hd">
                                        <h1>Estudiantes</h1>
                                    </div>
                                </div>
                                <div class="sparkline13-graph">
                                    <div class="datatable-dashv1-list custom-datatable-overright">

                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                               data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                            <thead>
                                                <tr>
                                                    
                                                    <th data-field="id">Numero Documento</th>
                                                    <th data-field="name" data-editable="true">Tipo Documento</th>
                                                    <th data-field="email" data-editable="true">Nombre</th>
                                                    <th data-field="phone" data-editable="true">Apellido</th>
                                                    <th data-field="complete">Teléfono</th>
                                                    <th data-field="task" data-editable="true">Email</th>
                                                    

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%

                                                    DatosPersonalesVO datosVO = new DatosPersonalesVO();
                                                    DatosPersonalesDAO datosDAO = new DatosPersonalesDAO();
                                                    ArrayList<DatosPersonalesVO> listadocentes = datosDAO.listarEstudiantes();
                                                    for (int i = 0; i < listadocentes.size(); i++) {
                                                        datosVO = listadocentes.get(i);
                                                %>
                                                <tr>
                                                   
                                                    <td><%=datosVO.getIdDatos()%></td>
                                                    <td><%=datosVO.getDatostipoid()%></td>
                                                    <td><%=datosVO.getDatosnombres()%></td>
                                                    <td><%=datosVO.getDatosapellidos()%></td>
                                                    <td><%=datosVO.getDatostelefono()%></td>
                                                    <td><%=datosVO.getDatosemail()%></td>
                                                                                                      
                                                    
                                            <form id="crudForm"  action="Usuario" method="post">
                                                
                                                <input id="metodo" type="hidden" name="opcion" value="" >
                                             
                                                <input type="hidden"  name="textnumeroid" value="<%=datosVO.getIdDatos()%>">
                                                <input type="hidden"  name="textnombres" value="<%=datosVO.getDatosnombres()%>">
                                                <input type="hidden"  name="textapellidos" value="<%=datosVO.getDatosapellidos()%>">
                                                <input type="hidden"  name="texttelefono" value="<%=datosVO.getDatostelefono()%>">
                                                <input type="hidden"  name="textemail" value="<%=datosVO.getDatosemail()%>">
                                                <input type="hidden"  name="clave" value="<%=datosVO.getClave()%>">
                                                
                                            </form>
                                        
                                                </tr>   
                                                <%}%>
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
            <!--================================ TABLA =======================================-->

            <!--=====================================FOOTER===================================-->            
            <%@include file="Componentes/Administrativo/footer.jsp"%>
            <!--=====================================FOOTER===================================-->            

        </div>

        <!--====================================JS============================================-->
        <%@include file="Componentes/Administrativo/js.jsp" %>
        <!--====================================JS============================================-->
    </body>
</html>