<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <title> Recuperar Clave</title>
        <meta name="description" content="">
        <%@include file="Componentes/Estudiante/head.jsp" %>

    </head>
    <body>
        <!-----------------------------------------------HEADER-------------------------------------------------------------->
        <header>
        </header>
        <!-----------------------------------------------HEADER-------------------------------------------------------------->


        <!-- ? Preloader Start -->
        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                    </div>
                </div>
            </div>
        </div>
        <!-- Preloader Start-->


        <main class="login-body" data-vide-bg="">
            <!-- Login Admin -->

            <div class="limiter">
                <form class="formulario form-default" action="Mensajes" method="POST">
                    <div class="container-login100" style="background-image: url('images/bg-01.jpg');">			
                        <div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">	
                            <center>

                                <div>
                                    <a href="index.jsp"><img src="images/Educando-ban.png" alt="Descripción de la imagen"  width="200" height="70"></a>
                                </div><br>

                            </center>





                            <span class="login100-form-title p-b-55">
                                Restablecer la contraseña
                            </span>
                            <a>
                                Ingrese el correo asociado a la cuenta, te enviaremos tu nueva contraseña.
                            </a><br><br>
                            
                            <label>Correo electronico</label>
                            <div class="wrap-input100 validate-input m-b-16" data-validate = "Valid email is required: ex@abc.xyz">
                                <!--                                <input class="input100" type="text" name="textusuario" placeholder="Correo electrónico" title="Email incorrecto revise su formato" pattern="^[a-z0-9]+(\.[_a-z0-9]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,15})$" required>-->
                                <input class="input100" type="text" name="receptor" placeholder="escriba su correo"  title="Email incorrecto revise su formato" pattern="^[a-z0-9]+(\.[_a-z0-9]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,15})$"  required>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <span class="lnr lnr-envelope"></span>
                                </span>
                            </div>														
                            <div class="container-login100-form-btn p-t-25">

                                <input class="login100-form-btn" type="submit" name="submit" value="Recuperar Clave">
                                <input type="hidden" value="3" name="opcion">
                            </div>                            
                            <div class="text-center w-full p-t-115">	
                                <div class="container">
                                    <h1> <%@include file="Componentes/mensajesRespuesta.jsp"%></h1>
                                </div>


                            </div>
                        </div>
                    </div>
                </form>	



                <!-- /end login form -->
        </main>




    </body>
    <%@include file="Componentes/scripts.jsp" %>
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>
</html>