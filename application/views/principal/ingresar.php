<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">


    <title>Chocolates La Mucuy</title>
    
    
 <link href="<?php echo __CSS__ ?>principal/style.css" rel="stylesheet">
<script type="text/javascript" src="<?php echo __JSVIEW__ ?>jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="<?php echo __JSVIEW__ ?>jquery/jquery-ui-1.10.4.custom.min.js"></script>
    
    
    
  </head>

  <body style="background: #594839;">

    <div class="wrapper">
	<div class="container">
		<h1>Bienvendo</h1>
		
		<form class="form" name='frm' action='<?php echo base_url()?>index.php/principal/validarUsuario'  method='POST'>
			<input type="text" name="txtUsuario" class="form-control" required="required" placeholder="Usuario">
			<input type="password" name="txtClave" class="form-control" required="required" placeholder="Clave">
			<button type="submit" name="submit" onclick="document.frm.submit();" id="submit_btn2" value="Ingresar">Login</button>
		</form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
  </body>
</html>