<!DOCTYPE html>
<html lang="en">
<head>
	<title>ABC Educando</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
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
<!--===============================================================================================-->

</head>
<body>

	
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">			
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">	
				<center>

					<div>
                                            <a href="index.jsp"><img src="images/Educando-ban.png" alt="Descripción de la imagen"  width="200" height="70"></a>
					</div><br>

				</center>
				
				
				<form class="login100-form validate-form" action="Usuario" method="POST">					
					<span class="login100-form-title p-b-55">
						Iniciar sesión
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="textusuario" placeholder="Correo electrónico" title="Email incorrecto revise su formato" pattern="^[a-z0-9]+(\.[_a-z0-9]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,15})$" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-envelope"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" name="textclave" placeholder="Contraseña" required="">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					
					
					<div class="container-login100-form-btn p-t-25">
						<button class="login100-form-btn">
							Ingresar
						</button>
						<input type="hidden" name="opcion" value="1">
					</div>
									
					<div class="text-center w-full p-t-115">	
						<a class="txt1 bo1 hov1" href="recuperarClave.jsp">¿Olvidaste tu contraseña?</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	


</body>
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</html>