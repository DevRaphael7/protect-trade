<?php

$mySQL = new mysqli("localhost", "root", "", "protect_trade");

if($mySQL){

}else{
    echo "Conexão com banco de dados indisponível...";
    exit();
}
?>