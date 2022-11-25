<?php
    /*almacena mensajes entrantes*/
    if(isset($_POST['sendMessage']) && isset($_POST['message'])){
        ChatRepository::saveMessage($_POST['message'], $_GET['id']);
    }
    
    /*Abrir sala de chat */
    if(isset($_GET['id']) && $_GET['id'] !== ''){
        ChatRepository::openChatRoomById($_GET['id']);
    }
    
    if(isset($_GET['id']) && $_GET['id'] !== ''){
        $messages = ChatRepository::getMessages($_GET['id']);
    }
    $usuariosConectados = UserRepository::getConnectedUsers();
    $salas = ChatRepository::getChatRooms();
?>