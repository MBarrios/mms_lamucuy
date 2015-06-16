<?php
if (!defined('BASEPATH'))
  exit('No direct script access allowed');

/**
 * Coorporacion de Estampado
 * Carrito de Compras 01/02/2014
 *
 * @package estcorp
 * @subpackage administracion
 * @author Carlos Peña
 * @copyright Derechos Reservados (c) 2014 - 2015, GenProg C.A.
 * @link    http://www.solo-educacion.org
 * @since Version 1.0
 *
 */

class MInventario extends CI_Model {

  var $identificador = NULL;

  var $idProducto;

  var $disponibilidad = 0;

  var $precio = 0.00;

  var $fechaEntrada = NULL;

  function __construct() {
    parent::__construct();
    if (!isset($this -> db)) {
      $this -> load -> database();
    }

  }

  /**
   * En el caso del menos uno (-1) hace
   * referencia al producto que no existe
   *
   * @param array Producto
   * @return int
   */
  function disponibilidad($idProducto = 0) {
    $disponible = -1;
    $consulta = 'SELECT disp FROM inventario WHERE oidp = ' . $idProducto . ' LIMIT 1';
    $rs = $this -> db -> query($consulta) -> result();
    foreach ($rs as $clv => $val) {
      $disponible = $val -> disp;
    }
    return $disponible;
  }

  function verificar() {

  }

  function registrar() {
    $data = $this -> mapearObjeto();
    $this -> db -> insert('inventario', $data);
    $arr[] = array('err' => $this -> db -> _error_number(), 'msj' => $this -> db -> _error_message());
    return $arr;
  }

  /**
   * Creando un objeto de tipo inventario DB
   * @return array
   */
  function mapearObjeto() {
    if (is_null($this -> fechaEntrada))
      $this -> fechaEntrada = date("Y/m/d");
    $data = array(//
    'oid' => $this -> identificador, //
    'oidp' => $this -> idProducto, //
    'disp' => $this -> disponibilidad, //
    'prec' => $this -> precio, //
    'fent' => $this -> fechaEntrada//
    );

    return $data;
  }

  function actualizar() {
    $data = $this -> mapearObjeto();
    $this -> db -> where('oidp', $data['oidp']);
    $this -> db -> update('inventario', $data);
    $arr[] = array('err' => $this -> db -> _error_number(), 'msj' => $this -> db -> _error_message());
    return $arr;
  }

  /**
   * Aumentar Producto
   * @return multitype:NULL
   */
  function aumentar() {
    if ($this -> precio > 0) {
      $actualizar = 'UPDATE inventario SET disp=disp+' . $this -> disponibilidad . ', prec=' . $this -> precio . ' WHERE oidp= ' . $this -> idProducto . ' LIMIT 1';
    } else {
      $actualizar = 'UPDATE inventario SET disp=disp+' . $this -> disponibilidad . ' WHERE oidp= ' . $this -> idProducto . ' LIMIT 1';
    }
    $this -> db -> query($actualizar);
    $arr[] = array('err' => $this -> db -> _error_number(), 'msj' => $this -> db -> _error_message());
    return $arr;
  }

  function borrar($oidProducto = null) {
    $this -> db -> where('oidp', $oidProducto);
    $this -> db -> delete('inventario');
    $arr[] = array('err' => $this -> db -> _error_number(), 'msj' => $this -> db -> _error_message());
    return $arr;
  }

  /**
   * Comprometer inventario segun un pedido
   * @param array
   */
  function comprometer($pedido = null) {
    //Usuando metodo masivo de query ¡Mala idea!
    foreach ($pedido as $clv) {
      $actualizar = 'UPDATE inventario SET disp=disp-' . $clv['cant'] . ' WHERE oidp= ' . $clv['oidp'] . ' LIMIT 1';
      $this -> db -> query($actualizar);
    }
  }

  /**
   * Hace referecia al metodo comprometer
   */
  function presindir($pedido = null) {
    $query = "SELECT oidp,cant FROM pedido WHERE orde=".$pedido;
    $rsProd = $this -> db -> query($query);
    $productos = $rsProd -> result();
    foreach ($productos as $prod) {
      $actualizar = 'UPDATE inventario SET disp=disp+' . $prod->cant . ' WHERE oidp= ' . $prod -> oidp . ' LIMIT 1';
      $this -> db -> query($actualizar);
    }
  }

  function generarMovimiento() {
    $actualizar = 'INSERT INTO movimiento disp=disp-' . $clv['cant'] . ' WHERE oidp= ' . $clv['oidp'];
    $this -> db -> query($actualizar);
  }

  function __destruct() {
    //unset($this -> db);
  }

}
