<?php

	include 'conecta_mysql.inc';

$
		
            $idmarca          = $_POST['idmarca'];
	    	$descricao        = $_POST['descricao'];
            
	  	  

	$sql = "INSERT INTO MARCA VALUES";
	$sql .="('$idmarca','$descricao')";

	if($conexao->query($sql) == TRUE){
		header('Location: /carrinho/cadastrarproduto.php');
	}else{
		echo "<h2> Erro ao inserir a marca!!!</h2>";

	}

	$conexao->close();




?>
