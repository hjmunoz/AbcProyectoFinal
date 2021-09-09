<%-- 
    Document   : actualizarUsuarios
    Created on : 15/07/2021, 12:43:42 AM
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
<html lang="en">
    <head>

        <title>Actualiza Usuario</title>
        <meta name="description" content="">

        <%@include file="Componentes/Administrativo/head.jsp" %>
        <%@include file="Componentes/Administrativo/navadmin.jsp" %>
    </head>
    <body>
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
        <div class="row">
            <div col-lg-12>
                <section class="container-fluid">
                    <div class="row">
                        <div class="col-lg-4"></div>
                        <div class="col-lg-4">
                            <div class="registrodocente">
                                <h1>Actualizar Usuario</h1>                                          
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-5">
                        </div>
                        <div class="col-lg-5">
                            <div class="datospersonales">                      
                                <form class="container" action="Usuario" method="post" >                                                                   
                                    <%
                                        int idDatos = 0;
                                        String datosnombres = "", datosapellidos = "", datostelefono = "", datosemail = "";

                                        if (request.getAttribute("idDatos") != null) {
                                            idDatos = (int) request.getAttribute("idDatos");

                                        }

                                        if (request.getAttribute("datosnombres") != null) {
                                            datosnombres = (String) request.getAttribute("datosnombres");
                                        }

                                        if (request.getAttribute("datosapellidos") != null) {
                                            datosapellidos = (String) request.getAttribute("datosapellidos");
                                        }

                                        if (request.getAttribute("datostelefono") != null) {
                                            datostelefono = (String) request.getAttribute("datostelefono");
                                        }
                                        if (request.getAttribute("datosemail") != null) {
                                            datosemail = (String) request.getAttribute("datosemail");
                                }
                                ;%>            <br>                                                                                                                
                                <label for="numeroDocumento" style="margin-top: 100px;" class="formulario__label">Numero Documento</label>
                                <input style="width: 500px;" class="form-control" type="text"  name="textnumeroid" value="<%=idDatos%>">
                                    
                                    <label class="formulario__label">Tipo de documento</label>
                                    <select style="width: 500px;" class="form-control" name="texttipoid" class="form-control">
                                        <option>Seleccione...</option>
                                        <option value="Registro civil">RC</option>
                                        <option value="Tarjeta de identidad">TI</option>
                                        <option value="Cedula de ciudadania">CC</option>
                                    </select>                                  
                                    <label class="formulario__label">Nombres</label>
                                    <input style="width: 500px;" class="form-control" type="text"  name="textnombres" value="<%=datosnombres%>">                                              
                                                                                                                         
                                    <label for="apellidos" class="formulario__label">Apellidos</label>
                                    <input style="width: 500px;" class="form-control" type="text"  name="textapellidos" value="<%=datosapellidos%>">
                                                                         
                                                                          
                                    <label class="formulario__label">Telefono</label>
                                    <input style="width: 500px;" class="form-control" type="text"  name="texttelefono" value="<%=datostelefono%>">
                                    
                                    <label class="formulario__label">Email</label>
                                    <input style="width: 500px;" class="form-control" type="email"  name="textemail" value="<%=datosemail%>">                                                 
                                    <br>
                                    <input value="7" name="opcion" type="hidden">                                 
                                    <input type="submit" value="Actualizar Usuario"  id="btn" class="btn btn-primary waves-effect waves-light"/>                                                                                                                                                                                                                   
                                </form>                
                                <%@include file="Componentes/mensajesRespuesta.jsp" %>
                            </div>
                            <div class="col-lg-2"></div>
                        </div>              
                    </div>
                </section>
            </div>

        </div>

        <%@include file="Componentes/Administrativo/footer.jsp"%>
        <%@include file="Componentes/Administrativo/js.jsp" %>
    </body>
</html>
