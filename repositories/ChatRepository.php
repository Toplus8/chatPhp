<?php
    class ChatRepository{
        /*Guardar mensaje en DB */
        public static function saveMessage($message, $idRoom){
            $db=Conectar::conexion();
            $q = "INSERT INTO `mensajes` (`id_msg`,`id_room`, `id_user`, `msg`, `date`) VALUES (NULL, ".$idRoom." ,'".$_SESSION['user']->getIdUser()."', '".$message."', '2022-11-23 20:47:18
            ');";
            $result = $db->query($q);
            UserRepository::updateLastAction($_SESSION['user']);
        }

        public static function getMessages($idRoom){
            $db=Conectar::conexion();
            $messages = [];
            $q = "SELECT * FROM mensajes where id_room = ".$idRoom."";
            $result = $db->query($q);
            while($datos=$result->fetch_assoc()){
                $messages [] = new Content ($datos);
            }
            return $messages;
        }
        /*Obtener Salas de chat disponibles */

        public static function getChatRooms(){
            $db=Conectar::conexion();
            $chatRooms = [];
            $q = "SELECT * FROM salas WHERE status=1";
            $result = $db->query($q);
            while($datos=$result->fetch_assoc()){
                $chatRooms [] = new ChatRoom ($datos);
            }
            return $chatRooms;
        }
        /*Abrir Sala de chat, si no existe se crea una. */
        public static function openChatRoomById($id){
            $db=Conectar::conexion();
            $result = null;
            $q = "SELECT * FROM salas WHERE id_room=$id AND status= 1";
            $result = $db->query($q);
            if($datos = $result->fetch_assoc()){
                $chat = new ChatRoom($datos);
            }
            UserRepository::updateLastAction($_SESSION['user']);
            return $chat;
        }

        public static function createChatRoom($id){
            $db=Conectar::conexion();
            $q = "INSERT INTO `salas` (`id_room`, `id_user`, `status`) VALUES (NULL, '".$id."', '1');";
            $result = $db->query($q);
            if($datos = $result->fetch_assoc()){
                $result = new ChatRoom($datos); 
            }
        }
    }

?>