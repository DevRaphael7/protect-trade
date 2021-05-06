<?php

    include 'connection_proc.php';

    $Email = $_POST['email'];
    $Senha = $_POST['Senha'];

    $mySQL -> query("INSERT INTO usuarios (email, Senha) VALUE ( ' " .$Email. " ', ' ". $Senha ." ' ) ");

?>