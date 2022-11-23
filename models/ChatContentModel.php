<?php
class Content{
    private $id_content;
    private $id_room;
    private $message;
    private $date;
    

    public function __construct ($datos){
        $this->id_content = $datos['id_content'];
        $this->id_room =$datos['id_room'];
        $this->id_message = $datos['message'];
        $this->$date = $datos['date'];
    }
    public function getIdContent(){
        return $this->id_content;
    }
    public function getIdRoom(){
        return $this->id_room;
    }
    public function getMessage(){
        return $this->id_message;
    }
    public function getDate(){
        return $this->id_date;
    }
} 
?>