<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloVO.ActividadCargadaVO"%>
<%@page import="modeloVO.ListarUsuarioVO"%>
<%@page import="modeloDAO.ListarUsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.RolVO"%>
<%@page import="modeloDAO.RolDAO"%>

<%@include file="Componentes/Sessiones.jsp"%>
<%@include file="Componentes/datosUsuarioSesion.jsp" %>


<!doctype html>
<html class="no-js" lang="en">

    <%@include file="Componentes/Administrativo/head.jsp" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

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
                                                        <a href="crearmensaje.jsp">
                                                            <span class="educate-icon educate-message edu-chat-pro"></span>
                                                        </a>
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">                                            
                                                            <span class="educate-icon educate-professor icon-wrap"></span>
                                                            <span class="admin-name"><%=usu.getNombre()%> <%=usu.getApellidos()%></span>
                                                            <i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
                                                        </a>
                                                        <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                            <li><a href="perfil.jsp"><span class="edu-icon edu-home-admin author-log-ic"></span>Mi perfil</a>
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
            <div class="single-pro-review-area mt-t-30 mg-b-15" style="margin: 100px;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="product-payment-inner-st">
                                <ul id="myTabedu1" class="tab-review-design">
                                    <li class="active"><a href="#description">Registrar Nuevo Usuario</a></li>

                                </ul>
                                <div id="myTabContent" class="tab-content custom-product-edit">
                                    <div class="product-tab-list tab-pane fade active in" id="description">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="review-content-section">
                                                    <div id="dropzone1" class="pro-ad">
                                                        <form action="Usuario" class="dropzone dropzone-custom needsclick add-professors" id="formulario" method="post">
                                                            <div class="row">
                                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                    <div class="form-group" id="grupo__nombre">
                                                                        <label class="formulario__label">Nombre</label>
                                                                        <div class="formulario__grupo-input">
                                                                            <input name="textnombres" type="text" title="Nombre invalido" class="form-control" placeholder="Nombre" style="border: solid 1px;" pattern="[A-Za-z]{2,15}" required>   
                                                                            <p class="formulario__input-error">El nombre tiene que ser de 4 a 16 dígitos y solo puede contener números, letras y guion bajo.</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group" id="grupo__apellido">
                                                                        <label class="formulario__label">Apellido</label>
                                                                        <div class="formulario__grupo-input">
                                                                            <input name="textapellidos" type="text" class="form-control" title="Apellido invalido" placeholder="Apellido" required="" pattern="[A-Za-z]{2,15}">
                                                                            <p class="formulario__input-error">El apellido tiene que ser de 4 a 16 dígitos y solo puede contener números, letras y guion bajo.</p>

                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group" id="grupo_tipoid">
                                                                        <label class="formulario__label">Tipo de documento</label><br>
                                                                        <div class="formulario__grupo-input">
                                                                            <select required="" class="form-control" pattern=""  name="texttipoid">
                                                                                <option value="Registro civil">Seleccione...</option>
                                                                                <option value="Registro civil">Registro civil</option>
                                                                                <option value="Tarjeta de identidad">Tarjeta de identidad</option>
                                                                                <option value="Cedula de ciudadania">Cedula de ciudadanía</option>
                                                                            </select> 
                                                                            <p class="formulario__input-error">El tipo de documento tiene que ser de 4 a 16 dígitos y solo puede contener números, letras y guion bajo.</p>

                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group" id="grupo__eps">
                                                                        <label class="formulario__label">EPS</label>  
                                                                        <div class="formulario__grupo-input">
                                                                            <select required class="form-control" name="eps">
                                                                                <option value="Registro civil">Seleccione...</option>
                                                                                <option value="sanitas">Sanitas</option>
                                                                                <option value="compensar">Compensar</option>
                                                                                <option value="Salud Total"> Salud Total</option>
                                                                                <option value="Salud Total">Nueva Eps</option>
                                                                                <option value="Salud Total">Famisanar</option>
                                                                            </select>
                                                                            <p class="formulario__input-error">El tipo de documento tiene que ser de 4 a 16 dígitos y solo puede contener números, letras y guion bajo.</p>
                                                                        </div>                                                                            
                                                                    </div>                                                                    
                                                                </div>
                                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                    <div class="form-group" id="grupo__numero">
                                                                        <label class="formulario__label">Numero documento</label> 
                                                                        <div class="formulario__grupo-input">
                                                                            <input name="textnumeroid" id="postcode" type="text" class="form-control" title="Digite el numero de documento sin puntos ni comas" placeholder="N° Documento" required="" pattern="[0-9]{4,15}">
                                                                            <p class="formulario__input-error">Digite su numero de documento sin puntos, letras ni caracteres especiales.</p>
                                                                        </div>
                                                                    </div> 
                                                                    <div class="form-group" id="grupo__telefono">
                                                                        <label class="formulario__label">Teléfono</label>
                                                                        <div class="formulario__grupo-input">
                                                                            <input name="texttelefono" id="postcode" type="text" class="form-control" placeholder="Telefono" required="" pattern="[0-9]{4,15}" title="Digite el numero de telefono sin guiones, puntos ni comas">
                                                                            <p class="formulario__input-error">Digite su numero de teléfono sin puntos, letras ni caracteres especiales.</p>
                                                                        </div>
                                                                    </div> 
                                                                    <div class="form-group" id="grupo__correo">
                                                                        <label class="formulario__label">Correo electrónico</label>
                                                                        <div class="formulario__grupo-input">
                                                                            <input name="textemail" id="postcode" type="text" class="form-control" title="Correo electronico invalido" placeholder="Email" required="" pattern="^[a-z0-9]+(\.[_a-z0-9]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,15})$">
                                                                            <p class="formulario__input-error">Correo invalido</p>
                                                                        </div>
                                                                    </div> 
                                                                    <div class="form-group" id="grupo__fecha">
                                                                        <label class="formulario__label">Fecha de nacimiento</label>
                                                                        <div class="formulario__grupo-input">
                                                                            <input name="textfechanacimiento" id="postcode" type="date" class="form-control" placeholder="Fecha de nacimiento" required="" pattern="[0-9]{4,15}">
                                                                            <p class="formulario__input-error">Fecha invalida</p>
                                                                        </div>
                                                                    </div> 

                                                                    <div class="formulario__mensaje" id="formulario__mensaje">
                                                                        <p><i class="fas fa-exclamation-triangle"></i> <b>Error:</b> Por favor rellena el formulario correctamente. </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="payment-adress">
                                                                        <input type="hidden" value="4" name="opcion">
                                                                        <button type="submit" class="btn btn-primary waves-effect waves-light">Siguiente</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>
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
            </div>        
            <%@include file="Componentes/Administrativo/footer.jsp" %>
        </div>

        <%@include file="Componentes/Administrativo/js.jsp" %>

    </body>

</html>