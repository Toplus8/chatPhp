<?php
class User{
    private $id_user;
    private $name;
    private $pass;
    private $role;
    private $status;

    public function __construct ($datos){
        $this->id_user = $datos['id_user'];
        $this->name = $datos['name'];
        $this->pass = $datos['pass'];
        $this->role = $datos['role'];
        $this->status = $datos['status'];
        
    }

    public function getIdUser(){
        return $this->id_user;
    }
    
    public function getName(){
        return $this->name;
    }
    public function getPass(){
        return $this->pass;
    }
    public function getRole(){
        return $this->role;
    }
    public function getStatus(){
        return $this->status;
    }
} 

?>