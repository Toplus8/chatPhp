<?php
  class Duo{
    private $id_duo;
    private $id_user1;
    private $id_user2;
    private $status;

  public function __construct($datos){
    $this->id_duo = $datos['id_duo'];
    $this->id_user1 = $datos['id_user1'];
    $this->id_user2 = $datos['id_user2'];
    $this->status = $datos['status'];
  }

  public function getIdDuo(){
    return $this->id_duo;
  }

  public function getIdUser1(){
    return $this->id_user1;
  }

  public function getIdUser2(){
    return $this->id_user2;
  }

  public function getStatus(){ 
    return $this->status;
  }
}  
?>