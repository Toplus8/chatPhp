<?php

//cargamos el modelo lo primero de todo.
require_once('models/UserModel.php');
require_once('repositories/UserRepository.php');
require_once('models/ChatModel.php');
require_once('repositories/ChatRepository.php');
require_once('models/ChatContentModel.php');
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
if(isset($_POST['sendMessage'])) {
    
    require_once('controllers/chatController.php');
}

$usuariosConectados= UserRepository::getConnectedUsers();
// carga de vistas
require_once("views/mainView.phtml");
?>