<?php

    include 'connection_proc.php';

    $Email = $_POST['Email'];
    $Senha = $_POST['Senha'];
    $Nome = $_POST['Nome'];
    $Telefone = $_POST['Telefone'];

    $mySQL -> query("INSERT INTO usuario (	Nome, Email, Senha ,Telefone) VALUE ( ' " .$Nome. " ', ' ". $Email ." ' , ' ".$Senha." ' , ' " .$Telefone. " ') ");

?>