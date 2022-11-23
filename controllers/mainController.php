<?php

//cargamos el modelo lo primero de todo.
require_once('models/UserModel.php');
require_once('models/UserRepository.php');
require_once('models/ChatRoomModel.php');
require_once('models/ChatRoomRepository.php');
require_once('models/ChatContentModel.php');
require_once('models/ChatContentRepository.php');
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
}
if(isset($_GET['chat'])) {
    require_once('controllers/chatController.php');
}

$usuarios= UserRepository::getConnectedUsers();
// carga de vistas
require_once("views/mainView.phtml");
?>