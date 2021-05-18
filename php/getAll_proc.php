<?php
	include 'connection_proc.php';
	$sql = "SELECT * FROM usuario;";
	$result = mysqli_query($connect, $sql);
	$result_check = mysqli_num_rows($result);
	
	if($result_check > 0){
		while ($row = mysqli_fetch_assoc($result)){
			echo $row['Nome']. "<br>";
		}
	}
	
?>