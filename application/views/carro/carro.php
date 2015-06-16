<style>
	@charset "UTF-8";
/* CSS Document */
.tabla{
	width:75%;
	}
	
td, th, .tabla{
	border-width:0.5px;
	border-color:#ccc;
	border-style:solid;
	}
@media screen and (max-width:720px){
	table, thead, tr, th, tbody, td{
		display:block;
	}
	
	thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	td { 
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
	}
	tr { 
		border: none;
		border-bottom: 2px solid #eee;
	}
	td:before { 
		position: absolute;
	
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
	}
	td:nth-of-type(1):before { content: "Cantidad"; }
	td:nth-of-type(2):before { content: "Descripcion"; }
	td:nth-of-type(3):before { content: "Precio"; }
	td:nth-of-type(4):before { content: "Sub-Total"; }
	td:nth-of-type(4):before { content: "#"; }
	}
</style>
<div class="container" id='lista_carrito'>
<span class="top-label">	
</span> 
<div class="content-area" id="estcorp-contenedor-medio-productos">	
	
	<div class="companyinfo">
							<h2><span></span>&nbsp;Mis Comandas Por Enviar</h2>
							<p>
					</div>
	<div class="content drag-desired"><br>   
		<div id="item-list">
			<form method="post" id="frmModifica">
			<table cellpadding="6" cellspacing="1" border="0" class="tabla">
				<thead style="background: #ccc;">
				<tr>
					<th>Cantidad</th>
					<th>Descripci&oacute;n</th>
					<!--<th style="text-align: right">Precio</th>
					<th style="text-align: right">Sub-Total</th>
					<th>#</th>-->
				</tr>
				 </thead>
				 <tbody>
<?php
$i = 1;
foreach ($carro->contents() as $items){?>
	<input type="hidden" name="<?php echo $i;?>mod_id" id="<?php echo $i?>mod_id" value="<?php echo $items['rowid'];?>" />
				<tr>
					<td width="5%">
						<input type="text" name="<?php echo $i;?>mod_cant" id="<?php echo $i;?>mod_cant" value="<?php echo $items['qty']?>" size="2" maxlength="2" onkeypress = "return soloNumeros(event);"/>
					</td>
					<td width="50%"><?php echo $items['name'];?></td>		
					<!--<td style="text-align: right" width="15%"><?php echo $carro->format_number($items['price']); ?></td>
					<td style="text-align: right" width="20%">Bs. <?php echo $carro->format_number($items['subtotal']); ?></td>
					<td width="10%"><a href="#"  class="remove" onClick="quitar_carrito('<?php echo $items['rowid'];?>');">Eliminar</a></td>-->
				</tr>
<?php		
	$i++;	
}
?>
				<!--<tr>
					<td colspan="2"></td>
					<td class="right" style="text-align: right"><strong>Total</strong></td>
					<td class="right" style="text-align: right">Bs. <?php echo $carro->format_number($carro->total()); ?></td>
				</tr>-->
				</tbody>
			</table>
			</form>
			<p>
				<input type="button" onclick="modificar();" id='btn_mod' name="btn_mod" value="Modificar" style="background:#594839 ;color:#fff;padding: 10px 8px 8px 4px;" />

				<input type="button" onclick="realizar_pedido();" id='btn_ped' name="btn_ped" value="Realizar Pedido" style="background: #594839;color:#fff;padding: 10px 8px 8px 4px;"/>
			</p>                
    	</div>
	</div>
</div>
</div>