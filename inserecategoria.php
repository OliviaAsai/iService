<?php

	include 'conecta_mysql.inc';

		
	    $idprod              = $_POST['idprod'];
	  	$idcategoria         = $_POST['idcategoria'];
        $idmarca             = $_POST['idmarca'];
        $nome                = $_POST['nome'];
        $descricao           = $_POST['descricao'];
        $estoque             = $_POST['estoque'];
        $preco               = $_POST['preco'];

 
	$sql = "INSERT INTO PRODUTOS VALUES ";
	$sql .="('$idprod','$idcategoria','$idmarca','$nome','$descricao', '$estoque','$preco')";

	if($conexao->query($sql) == TRUE){
		$_SESSION['mensagem'] = "Usuario cadastrado com sucesso!";
	}else{
		echo "<h2> Erro ao inserir o produto!!!</h2>";

	}

	$conexao->close();




?>