$(function() {
  listar();
});

function listar() {
  
  $.ajax({
    url : sUrlP + "listarCategoria",
    dataType : "json",
    success : function(oEsq) {      
      Grid = new TGrid(oEsq, 'categoria', '');
      Grid.SetName("Listar");
      Grid.SetNumeracion(true);
      Grid.Generar();
    }
  });
}

function registrar() {  
  var nombre = $('#nombre').val();    
  $.ajax({
    url : sUrlP + "registrarCategoria",
    type : 'POST',
    data : 'nombre=' + nombre,
    success : function(msj) {
      if(msj == ""){
        listar();
      }else{
        alert(msj);
      }
    }
  });

}

function generarMenu() {
	  sUrlC = sUrl+'/index.php/carro/carro/';
	  $.ajax({
	    url : sUrlC + "Genera_Menu_Categoria",
	    success : function(resp) {      
	    	alert(resp);
	    }
	  });
	}