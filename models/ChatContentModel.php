<?php
    class Content{
        private $id_msg;
        private $id_user;
        private $msg;
        private $date;
        

        public function __construct ($datos){
            $this->id_msg = $datos['id_msg'];
            $this->id_user = $_SESSION['user']->getIdUser();
            $this->msg = $datos['msg'];
            $this->date = $datos['date'];
        }

        public function getIdMsg(){
            return $this->id_msg;
        }
        public function getIdUser(){
            return $this->id_user;
        }
        public function getMsg(){
            return $this->msg;
        }
        public function getDate(){
            return $this->date;
        }
    } 
?>