var productos = new Array();
$(document).ready(function() {
	$("#carro_mini").load(sUrlC + "ver_carro_mini");
	menuLateral();
	var slider = $('#slider').leanSlider({
		directionNav : '#slider-direction-nav',
		controlNav : '#slider-control-nav'
	});
	$(".product").each(
			function(i) {
				
				var cadena = $("#des" + this.id).text();
				valores = JSON.parse(cadena);
				productos[this.id] = valores;
				var Descripcion = "<span id='valoresnombre'>" + valores.nomb  +  "</span>"
						+ "<br><span>Disponibles:</span>" + valores.disp
						+ "<br><span id='valoresbolivares'>Bs:</span>" + "<span id='valoresbolivares2'>" + valores.cpro +  "</span>";     
				$("#det" + this.id).html(Descripcion);
			});
			
	$("#agregar_producto").dialog({
		modal : true,
		autoOpen : false,
		hide : 'explode',
		show : 'slide',
		position: { my: "center top", at: "center top+10%", of: top },
		buttons : {
			"Cerrar" : function() {
				$(this).dialog("close");
			}
		}
	});
	$("#galeria").dialog({
		modal : true,
		autoOpen : false,
		hide : 'explode',
		show : 'slide',
		width: 600,
		height: 400,
		buttons : {
			"Cerrar" : function() {
				$(this).html('');
				$(this).dialog("close");
			}
		}
	});
	$("#soloDet").dialog({
		modal : true,
		autoOpen : false,
		hide : 'explode',
		show : 'slide',
		width: 600,
		height: 400,
		buttons : {
			"Cerrar" : function() {
				$(this).dialog("close");
			}
		}
	});
	$('a[rel*=leanModal]').leanModal({
		top : 200,
		closeButton : ".modal_close"
	});
	
	
	
});
function agregar(id) {
var cant = $("#cantidad" + id).val();
	$("#cantidad" + id).val('');
	if (cant == '' || cant < 1) {
		alert("Debe ingresar la cantidad de su pedido");
		return false;
	}
	
	var datos = new FormData();

	datos.append('id', id);
	datos.append('cantidad', cant);
	datos.append('precio', productos[id].cpro);
	datos.append('nombre', productos[id].nomb);
	$.ajax({
		url : sUrlC + "agregar",
		type : "POST",
		data : datos,
		contentType : false,
		processData : false,
		cache : false,
		success : function(respuesta) {
			$("#carro_mini").load(sUrlC + "ver_carro_mini");
			$("#agregar_producto").html(respuesta);
			//$("#agregar_producto").load(sUrlC + "listar");
			$("#agregar_producto").dialog("open");
			
		}
		
	});
}

function modificar() {
	$.post(sUrlC + "actualizar", $("#frmModifica").serialize(), function(res) {
		$("#carro_mini").load(sUrlC + "ver_carro_mini");
		$("#estcorp-contenedor-medio-productos").load(sUrlC + "listar");
	});
	
}

function quitar_carrito(id){
	$.post(sUrlC + "quitar", "id="+id, function(res) {
		$("#carro_mini").load(sUrlC + "ver_carro_mini");
		$("#estcorp-contenedor-medio-productos").load(sUrlC + "listar");
	});
	
	
}

function menuLateral(){
	var div_menu = document.getElementById("cssmenu");
	var ul = document.createElement("ul");
	div_menu.appendChild(ul);
	var li = document.createElement("li");
	ul.appendChild(li);
	var span = document.createElement("span");
	span.innerHTML="";
	span.className = "categorias";
	li.appendChild(span);
	for(var i = 0; i < Esq_menu.length; i++ ){
		//alert('Oid: ' + Esq_menu[i].oid + ' cat: ' + Esq_menu[i].nomb);
		var sli = document.createElement("li");
		ul.appendChild(sli);
		var senlace = document.createElement("a");
		senlace.href=sUrlC + "galeriaProductos/"+Esq_menu[i].oid;
		sli.appendChild(senlace);
		var sspan = document.createElement("span");
		sspan.innerHTML=Esq_menu[i].nomb;
		senlace.appendChild(sspan);
	}  	  
}

function realizar_pedido(){
	$.post(sUrlC + "realizarPedido", "", function(res) {
		alert(res);
		$("#estcorp-contenedor-medio-productos").load(sUrlC + "listar");
	});
  $.ajax({
    url : sUrlC + "LimpiarCarrito",
    success : function(respuesta) {
    	$("#carro_mini").load(sUrlC + "ver_carro_mini");
    }
  });
  
}

function carga_galeria(oidp){
	alert(oidp);
	$("#agregar_producto").html("");
	
	$("#agregar_producto").load(sUrlC + "galeria/" + oidp);
	$("#agregar_producto").dialog("open");
}
