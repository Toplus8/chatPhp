<?php
    class Content{
        private $id_msg;
        private $id_room;
        private $user;
        private $msg;
        private $date;
        

        public function __construct ($datos){
            $this->id_msg = $datos['id_msg'];
            $this->id_room = $datos['id_room'];
            $this->user = UserRepository::getUserById($datos['id_user']);
            $this->msg = $datos['msg'];
            $this->date = $datos['date'];
        }

        public function getIdMsg(){
            return $this->id_msg;
        }
        public function getIdRoom(){
            return $this->id_room;
        }
        public function getUser(){
            return $this->user;
        }
        public function getMsg(){
            return $this->msg;
        }
        public function getDate(){
            return $this->date;
        }
    } 
?>