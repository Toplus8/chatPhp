<?php
  class ChatRoom{
    private $id_room;
    private $id_user;
    private $status;
  

  public function __construct($datos){
    $this->id_room = $datos['id_room'];
    $this->id_user = $datos['id_user'];
    $this->status = $datos['status'];
  }

  public function getIdRoom(){
    return $this->id_room;
  }

  public function getIdUser(){
    return $this->id_user;
  }

  public function getStatus(){ 
    return $this->status;
  }
}  
?>