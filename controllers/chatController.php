<?php
    /*almacena mensajes entrantes*/
    if(isset($_POST['sendMessage']) && isset($_POST['message'])){ 
        ChatRepository::saveMessage($_POST['message']);
    }
       
    /*Abrir sala de chat */
    if(isset($_POST['openChat'])){
        ChatRepository::openChatRoomById($_GET['id']);
    }
    
    $messages = ChatRepository::getMessages(); 
?>
    