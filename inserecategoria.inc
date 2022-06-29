<?php

	include 'conecta_mysql.inc';

$
		
            $idcategoria      = $_POST['idcategoria'];
	    	$descricao        = $_POST['descricao'];
            
	  	  

	$sql = "INSERT INTO CATEGORIA VALUES";
	$sql .="('$idcategoria','$descricao')";

	if($conexao->query($sql) == TRUE){
		header('Location: /carrinho/cadastrarproduto.php');
	}else{
		echo "<h2> Erro ao inserir a categoria!!!</h2>";

	}

	$conexao->close();




?>
