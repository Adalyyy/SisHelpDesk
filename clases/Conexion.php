<?php
    class Conexion{
        public function conectar(){
            $servidor="localhost";
            $usuario="daly";
            $password="1234";
            $db="helpdesk";

            $conexion=mysqli_connect($servidor,$usuario,$password,$db);
            //print_r($conexion);
            return $conexion;
        }
    }

    //$obj = new Conexion();
    //$obj->conectar();

?>      