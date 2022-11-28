<?php
  class ChatRoom{
    private $id_room;
    private $id_user;
    private $status;
    private $id_receiver;
  

  public function __construct($datos){
    $this->id_room = $datos['id_room'];
    $this->id_user = UserRepository::getUserById($datos['id_user']);
    $this->status = $datos['status'];
    $this->id_receiver = $datos['id_receiver'];
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
  public function getReceiver(){ 
    return $this->id_receiver;
  }
}  
?>