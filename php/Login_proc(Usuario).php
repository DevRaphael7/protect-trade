<?php
	header("Access-Control-Allow-Origin: *");

    include 'connection_proc.php';

    $Email = $_POST['Email'];
	// $Email = "raphael@email.com";
	$Nome = $_POST['Nome'];
	//$Nome = "Raphael";
    $Senha = $_POST['Senha'];
	// $Senha = "159357";

    $Consulta = $connect -> query("SELECT * FROM usuario WHERE Email = '".$Email."' AND Senha = '". $Senha."'");
	
	$sql = "SELECT * FROM usuario WHERE Email = '".$Email."' AND Senha = '". $Senha."' AND Nome = '".$Nome."'";
	$result = mysqli_query($connect, $sql);
	$result_check = mysqli_num_rows($result);
	
	if($result_check > 0){
		while ($row = mysqli_fetch_assoc($result)){
			echo $row['Nome']. "<br>";
			$Nome = $row;
		}
	}

    $Resultado = array();

    while($extraerDatos=$Consulta->fetch_assoc()){
        $Resultado[]=$extraerDatos;
    }

    echo json_encode($Resultado);



?>
