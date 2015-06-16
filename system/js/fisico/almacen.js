$(function() {
	listar();
});

function listar() {
  
	$.ajax({
		url : sUrlP + "listarAlmacen",
		dataType : "json",
		success : function(oEsq) {		  
			Grid = new TGrid(oEsq, 'almacen', '');
			Grid.SetName("Listar");
			Grid.SetNumeracion(true);
			Grid.Generar();
			
		}
	});
	
	
}

function registrar() {
	var codigo = 'NULL'; //$('#codigo').val();
	var nombre = $('#nombre').val();
	var ubicacion = $('#ubicacion').val();
	var observacion = $('#observacion').val();
	var cadena = "codigo=" + codigo + "&nombre=" + nombre + "&ubicacion=" + ubicacion + "&observacion=" + ubicacion;
	$.ajax({
		url : sUrlP + "registrarAlmacen",
		type : 'POST',
		data : cadena,
		success : function(msj) {
			if(msj == ""){
				listar();
			}else{
			  alert(msj);
			}
		}
	});

}