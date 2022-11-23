<?php
    /*Guardar mensaje en DB */
    class ChatRepository{
        public static function saveMessage($message){
            $db=Conectar::conexion();
            
            $q = "INSERT INTO `mensajes` (`id_msg`, `id_user`, `msg`, `date`) VALUES (NULL, '".$_SESSION['user']->getIdUser()."', '".$message."', '2022-11-23 20:47:18
            ');";
           
            
            $result = $db->query($q);
        }

         public static function getMessages(){
            $db=Conectar::conexion();
            $messages = [];
            $q = "SELECT * FROM mensajes";
            $result = $db->query($q);
            while($datos=$result->fetch_assoc()){
                $messages [] = new Content ($datos);
            }
            return $messages;
        }
    }
?>