<?php
/*Desconectar usuario*/
if(isset($_GET['logout'])){
    UserRepository::disconnectedStatus($_SESSION['user']->getIdUser());
    unset($_SESSION['user']);
    header('location: index.php');
}
//registro de usuario

if(isset($_POST['registro'])){
    UserRepository::addUser($_POST['passRegister'],$_POST['pass2Register'],$_POST['userRegister']);
}
//login de usuario
if(isset($_POST['acceso'])){
    UserRepository::userLogin($_POST['user'],$_POST['password']);
    UserRepository::connectedStatus($_SESSION['user']->getIdUser());
}
/*require_once('controllers/mainController.php');*/
require_once('views/LoginView.phtml');
?>