<?php
    class ChatRepository{
        /*Guardar mensaje en DB */
        public static function saveMessage($message){
            $db=Conectar::conexion();
            $q = "INSERT INTO `mensajes` (`id_msg`, `id_user`, `msg`, `date`) VALUES (NULL, '".$_SESSION['user']->getIdUser()."', '".$message."', '2022-11-23 20:47:18
            ');";
            $result = $db->query($q);
            UserRepository::updateLastAction($_SESSION['user']);
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
        /*Obtener Salas de chat disponibles */

        public static function getChatRooms(){
            $db=Conectar::conexion();
            $chatRooms = [];
            $q = "SELECT * FROM salas WHERE status=1";
            $result = $db->query($q);
            while($datos=$result->fetch_assoc()){
                $chatRooms [] = new Content ($datos);
            }
            return $chatRooms;
        }
        /*Abrir Sala de chat, si no existe se crea una. */
        public static function openChatRoomById($id){

          /*  Crear nueva tabla con estos contenidos: id_room, id_user, status */

            $db=Conectar::conexion(); 
            $result = null;
            $q = $db->query("SELECT * FROM salas WHERE id_user=$id AND status= 1");
            if($datos = $q->fetch_assoc()){

                $result = new Room($datos);

            }
            if($result == null){ /*Funcionara? */
                $db=Conectar::conexion();
                $q = "INSERT INTO `salas` (`id_room`, `id_user`, `status`) VALUES (NULL, '".$id."', '1');";
                $result = $db->query($q);
                if($datos = $result->fetch_assoc()){
                 $result = new Room($datos);
                }   
            }
            UserRepository::updateLastAction($_SESSION['user']);
            return $result;
        }
    }

?>