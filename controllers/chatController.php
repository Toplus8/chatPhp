<?php
    /*crear chat*/
    if(isset($_POST['sendMessage'])){ 
        ChatRepository::openChat($_SESSION['user']->getIdUser(),$_GET['id']);
    }
       
    ?>
    