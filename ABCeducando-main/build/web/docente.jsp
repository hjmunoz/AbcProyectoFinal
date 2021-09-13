<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.UsuarioDAO"%>
<%@page import="modeloVO.UsuarioVO"%>
<%@page import="modeloVO.ActividadCargadaVO"%>

<%@include file="Componentes/Sessiones.jsp"%>
<%@include file="Componentes/datosUsuarioSesion.jsp" %>


<!doctype html>
<html class="no-js" lang="en">

    <%@include file="Componentes/docente/head.jsp" %>
    <%@include file="Componentes/docente/navdoc.jsp" %>
    <body>
        <!--[if lt IE 8]>
                    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
        <!-- Start Left menu area -->

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


            <div class="card" style="border: solid 0px; padding: 20px; width: 94%; margin-left: 4%; margin-top: 4%">
                <div class="card-body">
                    <div class="analytics-sparkle-area">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                                    <div class="analytics-sparkle-line reso-mg-b-30">
                                        <div class="analytics-content">
                                            <h5>Computer Technologies</h5>
                                            <h2>$<span class="counter">5000</span> <span class="tuition-fees">Tuition Fees</span></h2>
                                            <span class="text-success">20%</span>
                                            <div class="progress m-b-0">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:20%;"> <span class="sr-only">20% Complete</span> </div>
                                            </div>
                                        </div>
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
                                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                                    <div class="product-sales-chart">
                                        <div class="portlet-title">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <div class="caption pro-sl-hd">
                                                        <span class="caption-subject"><b>University Earnings</b></span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <div class="actions graph-rp graph-rp-dl">
                                                        <p>All Earnings are in million $</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="list-inline cus-product-sl-rp">
                                            <li>
                                                <h5><i class="fa fa-circle" style="color: #006DF0;"></i>CSE</h5>
                                            </li>
                                            <li>
                                                <h5><i class="fa fa-circle" style="color: #933EC5;"></i>Accounting</h5>
                                            </li>
                                            <li>
                                                <h5><i class="fa fa-circle" style="color: #65b12d;"></i>Electrical</h5>
                                            </li>
                                        </ul>
                                        <div id="extra-area-chart" style="height: 356px;"></div>
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




            <%@include file="Componentes/docente/footer.jsp" %>


            <%@include file="Componentes/docente/js.jsp" %>
    </body>

</html>