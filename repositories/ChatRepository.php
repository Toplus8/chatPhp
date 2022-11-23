<?php
    /*Guardar mensaje en DB */
    class ChatRepository{
        public static function saveMessage($message){
            $db=Conectar::conexion();
            $q = "INSERT INTO `mensajes` (`id_msg`, `id_user`, `msg`, `date`) VALUES (NULL, '".$_SESSION['user']->getIdUser()."', ".$message.", NULL);";
            $result = $db->query($q);
        }
    }
?>