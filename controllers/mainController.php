<?php

//cargamos el modelo lo primero de todo.
require_once('models/UserModel.php');
require_once('repositories/UserRepository.php');
require_once('models/ChatModel.php');
require_once('repositories/ChatRepository.php');
require_once('models/ChatContentModel.php');
require_once('models/ChatRoomModel.php');
session_start();


if(!isset($_SESSION['user'])){
    $datos['id_user']=0;
    $datos['name']="";
    $datos['pass']=0;
    $datos['role']=0;
    $datos['status']=0;
    $_SESSION['user'] = new User($datos);
}

if(isset($_GET['login'])) {
    require_once('controllers/loginController.php');
    die();
}

if(isset($_POST['sendMessage'])) {
    require_once('controllers/chatController.php');
}

if(isset($_GET['chatRoom'])){
    require_once('controllers/chatController.php');
    require_once('views/chatRoomView.phtml');
    die();
}

/*$chatRooms = ChatRepository::getChatRooms();*/
$usuariosConectados= UserRepository::getConnectedUsers();
if(null !== $_SESSION['user']->getIdUser()){
    if(UserRepository::setInactive($_SESSION['user'])){
        require_once('views/LoginView.phtml');
        die();
    }
}

UserRepository::updateInactiveUsers();
// carga de vistas
require_once("views/mainView.phtml");
?>