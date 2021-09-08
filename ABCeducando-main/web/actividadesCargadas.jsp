<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloVO.ActividadCargadaVO"%>
<%@page import="modeloDAO.DatosPersonalesDAO"%>
<%@page import="modeloVO.DatosPersonalesVO"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloDAO.DocenteDAO"%>
<%@page import="java.util.ArrayList"%>

<%@page import="modeloVO.ActividadCargadaVO"%>

<%@include file="Componentes/Sessiones.jsp"%>
<%@include file="Componentes/datosUsuarioSesion.jsp" %>

<!doctype html>
<html class="no-js" lang="en">

    <%@include file="Componentes/docente/head.jsp" %>

    <body>        
        <!--===========================================BARRA DE NAVEGACION=========================================-->
        <%@include file="Componentes/docente/navdoc.jsp" %>
        <!--===========================================BARRA DE NAVEGACION=========================================-->

        <div class="all-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="logo-pro">
                            <a href="index.html"><img class="main-logo" src="" alt="" /></a>
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
                                                        </a>
                                                    </li> 
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

                                                    <li class="nav-item">
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                            <span class="educate-icon educate-professor icon-wrap"></span>
                                                            <span class="admin-name"><%=usu.getNombre()%> <%=usu.getApellidos()%></span>
                                                            <i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
                                                        </a>
                                                        <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                            <li><a href="perfilDocente.jsp"><span class="edu-icon edu-home-admin author-log-ic"></span>Mi Perfil</a>
                                                            </li>
                                                            <li><a href="../actualizarD.jsp"><span class="edu-icon edu-user-rounded author-log-ic"></span>Actualizar Datos</a>
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
            <div class="data-table-area mg-b-15" style="margin-top: 50px;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                            <div class="sparkline13-list">
                                <div class="sparkline13-hd">
                                    <div class="main-sparkline13-hd">
                                        <h1>Actividades Cargadas</h1>
                                    </div>
                                </div>
                                <div class="sparkline13-graph">
                                    <div class="datatable-dashv1-list custom-datatable-overright">

                                        <table id="table" class="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                               data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                            <thead>
                                                <tr>
                                                    <th data-field="state" data-checkbox="true"></th>
                                                    <th data-field="id">Nombre</th>
                                                    <th data-field="name" data-editable="true">Descripción</th>
                                                    <th data-field="email" data-editable="true">Archivo</th>
                                                    <th data-field="phone" data-editable="true">Acciones</th>                                                   
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                        int idDocente = 0;
                                        
                                    miSesion.getAttribute("datosUsuario");
                                    
                                    
                                      for (int i = 0; i < datosU.size(); i++) {
                                              usu = datosU.get(i);
                                              idDocente = usu.getUsuarioid();
                                      }
                                        
                                        ActividadCargadaVO datosVO = new ActividadCargadaVO();
                                       DocenteDAO datosDAO = new DocenteDAO();
                                        ArrayList<ActividadCargadaVO> listaActividad = datosDAO.listarActivades(idDocente);
                                        for (int i = 0; i < listaActividad.size(); i++) {
                                            datosVO = listaActividad.get(i);
                                    %>
                                                <tr>
                                                    <td></td>
                                                    
                                                    <td><%=datosVO.getActividadCargadaNombre()%></td>
                                                    <td><%=datosVO.getActividadCargadaDescripcion()%></td>
                                                    <td>                                                        
                                                        <a href="<%=datosVO.getRutaArchivo()%>" target="_blank"><img src="img/pdf.png" title="pdf"/></a>                                                                                                  
                                                    <td>
                                                        
                                            <form id="crudForm"  action="Docente" method="post">                                                                                                
                                                <input type="hidden" name="idAcrividad" value="<%=datosVO.getActividadCargadaId()%>"/>
                                                <input type="hidden" name="urlArchivo" value="<%=datosVO.getRutaArchivo()%>"/>
                                                <input id="metodo" name="opcion" type="hidden" value="eliminar"/>                                                
                                                <button type="submit" class="btn-danger" style="padding: 5px; border-radius: 5px;" title="Eliminar">Eliminar</button>
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
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
                    </div>
                </div>
            </div>
            <!--================================ TABLA =======================================-->

            <!--=====================================FOOTER===================================-->            
            <%@include file="Componentes/docente/footer.jsp"%>
            <!--=====================================FOOTER===================================-->            

        </div>

        <!--====================================JS============================================-->
        <%@include file="Componentes/docente/js.jsp" %>
        <!--====================================JS============================================-->
    </body>
</html>