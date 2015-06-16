<body>
	<?php $this -> load -> view("carro/incluir/cabezera"); ?>
<!--<?php $this -> load -> view("carro/incluir/menu"); ?>!-->
	<link href="<?php echo __CSS__ ?>sliderinterno.css" rel="stylesheet"  type="text/css">
	<!DOCTYPE html>
	<html lang="en">
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<meta name="description" content="">
			<meta name="author" content="">
		</head><!--/head-->
		<body>
			<div id="agregar_producto" title="Carrito"></div>
			<div id="galeria"></div>
			<!--<ul id="myGallery"></ul><div id='des_galeria'></div></div>-->
			<div id="soloDet"></div>
			<header id="header">
				<!--header-->
				<div class="header_top">
					<!--header_top-->
					<div class="container">
						<div class="row">
							<div class="col-sm-6">
								<div class="contactinfo">
									<ul class="nav nav-pills">
										<li>
											
										</li>
										<li>
											<a href="#"><i class="fa fa-envelope"></i> soporte@mamonsoft.com.ve</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="social-icons pull-right">
									<ul class="nav navbar-nav">
										<li>
											<a href="#"><i class="fa fa-google-plus"></i></a>
										</li>
										<li>
											<a href="#"><i class="fa fa-facebook"></i></a>
										</li>
										<li>
											<a href="#"><i class="fa fa-twitter"></i></a>
										</li>
										<li>
											<a href="#"><i class="fa fa-linkedin"></i></a>
										</li>
										<li>
											<a href="#"><i class="fa fa-dribbble"></i></a>
										</li>
										<li>
											<a href="#"><i class="fa fa-google-plus"></i></a>
										</li>
									</ul>
								</div>
							</div>

						</div>
					</div>
				</div><!--/header_top-->

				<div class="header-middle">
					<!--header-middle-->
					<div class="container">
						<div class="row">
						<div class="navbar-header">
						<div class="logo pull-left">
						<img style="width:55%;float: left;"  src="<?php echo __IMG__ ?>principal/home/logo2.png" alt="" /></a>
						</div>

						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						</button>
						</div>
						<?php
						echo '<div class="mainmenu pull-right">
<ul class="nav navbar-nav collapse navbar-collapse">

<li><a href="' . __LOCALWWW__ . '/index.php/carro/carro"><i class="fa fa-user"></i> Inicio</a></li>
<li><a href="' . __LOCALWWW__ . '/index.php/carro/carro/ver_pedidos"><i class="fa fa-crosshairs"></i> Mi Cuenta</a></li>
<li><a href="' . __LOCALWWW__ . '/index.php/carro/carro/ver_carro"><i class="fa fa-shopping-cart"></i> Mi Carro</a></li>
<li><a href="' . __LOCALWWW__ . '/index.php/carro/carro/cerrar"><i class="fa fa-lock"></i> Salir</a></li>

</ul>
</div>
</div>';
						?>
					</div>
				</div>
				</div><!--/header-middle-->

				<div class="header-bottom">
					<!--header-bottom-->
					<div class="container">
						<div class="row">
							<div class="logo pull-left" style="width: 100%;">
								<div style="width: 77%;margin: 0 auto;height: 250px;background: #333;">
									<div id="page">
										<section>
											<div id="slider-container">
												<div id="slider-box">
													<div class="slider-element">
														<article class="element-red"></article>
													</div>
													<div class="slider-element">
														<article class="element-green"></article>
													</div>
													<div class="slider-element">
														<article class="element-blue"></article>
													</div>
												</div>
											</div>
										</section>
									</div>
									<div/>
								</div>
							</div>
						</div>
			</header>

			<section id="advertisement">
				<div class="container">

				</div>
				</div>
			</section>

			<section>
				<div class="container"style="width: 88%;">
					<div class="row">
						<div class="col-sm-3">
							<div class="brands_products">
								<!--brands_products-->
								<div class="brands-name">
									<h2 style="font-size: 12px;color: #594839;">Mi Comanda</h2>
									<div>
										<div id="carro_mini"></div>
										<div></div>
									</div>
								</div>
							</div>
							<div class="left-sidebar">
								<h2 style="color: #594839;">Productos</h2>
								<div class="panel-group category-products" id="accordian">
									<!--category-productsr-->

									<div class="panel panel-default" >
										<div class="panel-heading">
											<div class="panel-title" id='cssmenu'></div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<div id="estcorp-contenedor-medio-productos">
							<?php
							//print("<pre>");
							//print_R($lista[0]['rs']);
							$this -> load -> view($cuerpo);
							?>
						</div><!--features_items-->
					</div>
				</div>
				</div>
			</section>
			<?php $this -> load -> view("principal/incluir/pie"); ?>

		</body>
	</html>
