<?php

class UserRepository{
    /*Selecciona usuario a partir de un id concreto */
    public static function getUserById($id){ 
        $db=Conectar::conexion();
        $result = $db->query("SELECT * FROM usuarios WHERE id_user= '".$id."'");
        if($datos = $result->fetch_assoc()){
            return new User($datos);
        }
    }
    /*Registro de usuarios */
    public static function addUser($pass,$pass2,$user){
        $db = Conectar::conexion(); 
        if(!$db){
        echo "ERROR, base de datos no encontrada";
        }
        if (isset($pass)&& isset($pass2)&& $pass!=$pass2){
            $error = "Las contraseñas no coinciden";
        }else{
            $q = "SELECT name FROM usuarios WHERE name='".$user."'"; 
            $result = $db->query($q);
            if($datos=$result->fetch_assoc()){
            $error = "El usuario ya existe en la base de datos";
            }else{
            $q = "INSERT INTO usuarios (name, pass, role, status) VALUES ('".$user."','".md5($pass)."', 0, 0)";
            $result = $db->query($q);
            require_once('views/loginView.phtml');
            return;
            } 
        }
    }
    /*Acceso de usuarios */
    public static function userLogin($user,$pass){
        if(isset($user)&& isset($pass)){
            $db=Conectar::conexion();
            $q = "SELECT * FROM usuarios WHERE name='".$user."'";
            $result = $db->query($q);
            if($datos=$result->fetch_assoc()){
                if($datos['pass']==md5($pass)){
                    $_SESSION['user']= new User($datos);
                     //redirige a la url especificada
                }
            }
        }
    }

    
    /*Cambio de status para mostrar los conectados*/
    /*
    public static function connectedStatus($user){
        $db=Conectar::conexion();
        $q = "UPDATE usuarios SET status=1 WHERE id_user=$user";
        $result = $db->query($q);
        
    }
    public static function disconnectedStatus($user){
        $db=Conectar::conexion();
        $q = "UPDATE usuarios SET status=0 WHERE id_user=$user";
        $result = $db->query($q);
    
    }
    */
    
    public static function toggleStatus($user){
        $db=Conectar::conexion();
        $status = $user->getStatus() == 1 ? 0 : 1;
        $user->setStatus($status);
        $q = "UPDATE usuarios SET status=" . $status . " WHERE id_user=" . $user->getIdUser();
        $result = $db->query($q);
    }

    
    
    /*public static function connectedStatus($user,$status){ ////////NO FUNCIONA ._.
        if($status==0){
            $db=Conectar::conexion();
            $q = "UPDATE usuarios SET status=1 WHERE id_user=$user";
            $result = $db->query($q);
        }
        if($status==1){
            $db=Conectar::conexion();
            $q = "UPDATE usuarios SET status=0 WHERE id_user=$user";
            $result = $db->query($q);
        }
    }*/
    /*Usuarios conectados */
    public static function getConnectedUsers(){ 
        $db=Conectar::conexion();
        $usuarios=[];
        $result = $db->query("SELECT * FROM usuarios WHERE status=1");
        while($datos = $result->fetch_assoc()){
             $usuarios[] = new User($datos);
        }
        return $usuarios;
    }
        
    
}
?>