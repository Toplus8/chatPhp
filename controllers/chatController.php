<?php
    /*crear chat*/
    if(isset($_POST['sendMessage']) && isset($_POST['message'])){ 
        ChatRepository::saveMessage($_POST['message']);
    }
       
?>
    