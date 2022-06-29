<?php

	$conexao = mysqli_connect('localhost', 'root', '','iservice');

	mysqli_set_charset($conexao,'utf8');

	if($conexao->connect_error){
		die("Falha ao conectar no banco" . $conexao->connect_error);

	}


?>