<%@page import="modeloDAO.DatosPersonalesDAO"%>
<%@page import="modeloVO.DatosPersonalesVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloVO.ActividadCargadaVO"%>
<%@include file="Componentes/Sessiones.jsp"%>
<%@include file="Componentes/datosUsuarioSesion.jsp" %>
<!doctype html>
<html class="no-js" lang="en">
    <%@include file="Componentes/Administrativo/head.jsp" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <body style="background: #f6f8fa">       
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
                                                    <li class="nav-item">
                                                        <a href="crearmensaje.jsp">
                                                            <span class="educate-icon educate-message edu-chat-pro"></span>
                                                        </a>
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                            <span class="educate-icon educate-professor icon-wrap"></span>
                                                            <span class="admin-name"><%=usu.getNombre()%> <%=usu.getApellidos()%></span>
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
            <div class="card" style="border: solid 0px; padding: 20px; width: 94%; margin-left: 4%; margin-top: 4%; background: #f6f8fa">
                <div class="card-body">
                    <div class="analytics-sparkle-area">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                                    <div class="analytics-sparkle-line reso-mg-b-30" style="background: #ffffff">
                                        <a href="calificarActividades.jsp"><div class="analytics-content">
                                            <h5>Computer Technologies</h5>
                                            <h2>$<span class="counter">5000</span> <span class="tuition-fees">Tuition Fees</span></h2>
                                            <span class="text-success">20%</span>
                                            <div class="progress m-b-0">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:20%;"> <span class="sr-only">20% Complete</span> </div>
                                            </div>
                                        </div></a>
                                        
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                                    <div class="analytics-sparkle-line reso-mg-b-30">
                                        <div class="analytics-content">
                                            <h5>Accounting Technologies</h5>
                                            <h2>$<span class="counter">3000</span> <span class="tuition-fees">Tuition Fees</span></h2>
                                            <span class="text-danger">30%</span>
                                            <div class="progress m-b-0">
                                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:30%;"> <span class="sr-only">230% Complete</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                                    <div class="analytics-sparkle-line reso-mg-b-30 table-mg-t-pro dk-res-t-pro-30">
                                        <div class="analytics-content">
                                            <h5>Electrical Engineering</h5>
                                            <h2>$<span class="counter">2000</span> <span class="tuition-fees">Tuition Fees</span></h2>
                                            <span class="text-info">60%</span>
                                            <div class="progress m-b-0">
                                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:60%;"> <span class="sr-only">20% Complete</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                                    <div class="analytics-sparkle-line table-mg-t-pro dk-res-t-pro-30">
                                        <div class="analytics-content">
                                            <h5>Chemical Engineering</h5>
                                            <h2>$<span class="counter">3500</span> <span class="tuition-fees">Tuition Fees</span></h2>
                                            <span class="text-inverse">80%</span>
                                            <div class="progress m-b-0">
                                                <div class="progress-bar progress-bar-inverse" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:80%;"> <span class="sr-only">230% Complete</span> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-sales-area mg-tb-30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12" style="border: solid 0px; background: #ffffff;">
                                    <div class="sparkline13-graph">
                                        <div class="datatable-dashv1-list custom-datatable-overright">
                                            <table class="table table-striped" id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
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
                                                    <div style="float: left">
                                                        <input id="metodo" type="hidden" name="opcion" value="6">
                                                        <input type="hidden"  name="textnumeroid" value="<%=datosVO.getIdDatos()%>">
                                                        <input type="hidden"  name="textnombres" value="<%=datosVO.getDatosnombres()%>">
                                                        <input type="hidden"  name="textapellidos" value="<%=datosVO.getDatosapellidos()%>">
                                                        <input type="hidden"  name="texttelefono" value="<%=datosVO.getDatostelefono()%>">
                                                        <input type="hidden"  name="textemail" value="<%=datosVO.getDatosemail()%>">
                                                        <input type="hidden"  name="clave" value="<%=datosVO.getClave()%>">
                                                    </div>
<!--                                                            <a class="btn btn-primary" href="Usuario?opcion=6&textnumeroid=<%=datosVO.getIdDatos()%>">Editar</a>-->
                                                </form>
                                                <form id="crudForm"  action="Usuario" method="post">
                                                    <input id="metodo" type="hidden" name="opcion" value="10">
                                                    <input type="hidden"  name="textnumeroid" value="<%=datosVO.getIdDatos()%>">
                                                    <input type="hidden"  name="textnombres" value="<%=datosVO.getDatosnombres()%>">
                                                    <input type="hidden"  name="textapellidos" value="<%=datosVO.getDatosapellidos()%>">
                                                    <input type="hidden"  name="texttelefono" value="<%=datosVO.getDatostelefono()%>">
                                                    <input type="hidden"  name="textemail" value="<%=datosVO.getDatosemail()%>">
                                                    <input type="hidden"  name="clave" value="<%=datosVO.getClave()%>">                                                          
                                                </form>
                                                </tr>   
                                                <% }%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>  
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <div class="white-box analytics-info-cs mg-b-10 res-mg-b-30 res-mg-t-30 table-mg-t-pro-n tb-sm-res-d-n dk-res-t-d-n">
                                        <h3 class="box-title">Total Visit</h3>
                                        <ul class="list-inline two-part-sp">
                                            <li>
                                                <div id="sparklinedash"></div>
                                            </li>
                                            <li class="text-right sp-cn-r"><i class="fa fa-level-up" aria-hidden="true"></i> <span class="counter text-success">1500</span></li>
                                        </ul>
                                    </div>
                                    <div class="white-box analytics-info-cs mg-b-10 res-mg-b-30 tb-sm-res-d-n dk-res-t-d-n">
                                        <h3 class="box-title">Page Views</h3>
                                        <ul class="list-inline two-part-sp">
                                            <li>
                                                <div id="sparklinedash2"></div>
                                            </li>
                                            <li class="text-right graph-two-ctn"><i class="fa fa-level-up" aria-hidden="true"></i> <span class="counter text-purple">3000</span></li>
                                        </ul>
                                    </div>
                                    <div class="white-box analytics-info-cs mg-b-10 res-mg-b-30 tb-sm-res-d-n dk-res-t-d-n">
                                        <h3 class="box-title">Unique Visitor</h3>
                                        <ul class="list-inline two-part-sp">
                                            <li>
                                                <div id="sparklinedash3"></div>
                                            </li>
                                            <li class="text-right graph-three-ctn"><i class="fa fa-level-up" aria-hidden="true"></i> <span class="counter text-info">5000</span></li>
                                        </ul>
                                    </div>
                                    <div class="white-box analytics-info-cs table-dis-n-pro tb-sm-res-d-n dk-res-t-d-n">
                                        <h3 class="box-title">Bounce Rate</h3>
                                        <ul class="list-inline two-part-sp">
                                            <li>
                                                <div id="sparklinedash4"></div>
                                            </li>
                                            <li class="text-right graph-four-ctn"><i class="fa fa-level-down" aria-hidden="true"></i> <span class="text-danger"><span class="counter">18</span>%</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="Componentes/mensajesRespuesta.jsp" %>                
            <%@include file="Componentes/Administrativo/footer.jsp" %>
            <%@include file="Componentes/Administrativo/js.jsp" %>
    </body>

</html>