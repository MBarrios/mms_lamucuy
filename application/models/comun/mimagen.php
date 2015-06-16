<?php
/**
 *
 */
class MImagen extends CI_Model {

  var $directorio;
  var $nombre;
  var $tipo;
  var $tamano;
  var $temporal;
  var $ruta;
  
  function __construct() {
    parent::__construct();
  }

  function cargar($archivo, $ruta){
    $this->directorio = $ruta;
    $this->nombre = $_FILES['imagen']['name'];
    $this->tipo = $_FILES['imagen']['type'];
    $this->tamano = $_FILES['imagen']['size'];
    $this->temporal = $_FILES['imagen']['tmp_name'];
    return $this;       
  }
  
  function evaluar(){
    
  }
  
  function salvar() {
    $this->ruta = $this->directorio . '/' . $this->nombre;
    if (!move_uploaded_file($this->temporal, $this->ruta)) {
      $arr = FALSE;
    } else {
      $arr = TRUE;
    }
    return $arr;
  }
  
  function busca_imagenes($oidp){
  	$this -> load -> database();
  	$obj = array();
  	$imagenes = array();
  	$obser = array();
  	$consulta = $this -> db -> query("SELECT * FROM galeria join producto on producto.oid = galeria.oidp where oidp=".$oidp);
  	//print("<pre>");
  	//print_R($consulta -> result());
  	$rsConsulta = $consulta -> result();
  	//$obj['resp'] = 1;
  	if($consulta -> num_rows() > 0){
  		$obj['resp'] = 1;
  		$i=0;
  		foreach ( $rsConsulta as $fila ) {
       		$imagenes[$i]=$fila->imagen;
       		$obser[$i]=$fila->obse;
       		$i++;
		}
		$obj['imagenes'] = $imagenes;
		$obj['det'] = $obser;
  	}else{
  		$consulta1 = $this -> db -> query("SELECT * FROM producto where oid=".$oidp);
  		$rsConsulta1 = $consulta1 -> result();
  		$obj['resp'] = 0;
  		foreach ( $rsConsulta1 as $fila1 ) {
  			$obj['det'] = $fila1->obse;
  		}
  	}
  	unset($this -> db);
  	return json_encode($obj);
  	//return "llega";
  }

}
?>