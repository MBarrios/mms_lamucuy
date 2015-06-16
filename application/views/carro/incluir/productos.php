<style>
.ui-dialog-titlebar{
display:none;
}	
.letrascarro{
color:;
font-size: 11px;}
#valoresbolivares{
	color:#0083C9;
font-size: 15px;
}
#valoresbolivares2{
	color:#A52A2A;
font-size:15px;
}	
</style>
<div id="main-container">
	
    <div class="container" style="position: relative;float: left;width: 75%;">    
    	<span class="top-label">
        </span>
        <div class="content-area">
    		<div class="content drag-desired">
                <?php
				//print("<pre>");
				//print_R($valor);
				foreach($lista[0]['rs'] as $cla => $valor){
					echo 
					'<div class="product" id="'.$valor->oid.'" >' .
						 '<a href="#" onclick="consultar_imagenes('.$valor->oid.')"><img src="'.__IMG__.'productos/'.$valor->imag.'" alt="'.htmlspecialchars($valor->observacion).'" width="120" height="100" class="pngfix"style="margin-left: 23px;margin-bottom:2px;"  /></a><div style="background:trasparent;height:158px;max-height:158;" id="det'.$valor->oid.'" >alago</div>' .
						 '<div style="background:transparent; height:100px;margin-top:-5px;"> <input type="text" placeholder="Cantidad:" id="cantidad'.$valor->oid.'" onkeypress="return soloNumeros(event);" style="background:#fff; width:146px;height:28px;margin:-20px -5px 5px 6px;border:1px solid #e8e8e8;"><br></input>' .
						 '<img style="background::transparent;" src="'.__IMG__.'agcarro.png'.'" onclick="agregar('.$valor->oid.')"/></div>' .
						 '<div style="background:transparent;height:11px;text-align:right;"><a href="#" style="text-decoration:none;" onclick="consultar_imagenes('.$valor->oid.')">+Detalles</a><br></div>'.
						 '<textarea id="des'.$valor -> oid.'" style="display:none;">'.json_encode($valor).'</textarea></div>'
						 ;
				}
				?>
       	        <div class="clear"></div>
            </div>
        </div>
    </div>
</div>

