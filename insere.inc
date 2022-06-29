<?php

	include 'conecta_mysql.inc';

$
		
	    	$nome        = $_POST['nome'];
	  	  $email       = $_POST['email'];
        $cidade      = $_POST['cidade'];
        $estado      = $_POST['uf'];
        $CPF          = $_POST['CPF'];
        $endereco     = $_POST['endereco'];
        $Celular      = $_POST['Celular'];
        $telefone     = $_POST['telefone'];
        $senha       = $_POST['senha'];
        $sexo         = $_POST['sexo'];

	$sql = "INSERT INTO CADASTRO VALUES";
	$sql .="('$nome','$email','$cidade','$estado','$CPF', '$endereco','$Celular','$telefone',' $senha','$sexo')";

	if($conexao->query($sql) == TRUE){
		echo "<h1> Cliente inserido com sucesso !!!</h1>";
	}else{
		echo "<h2> Erro ao inserir o Cliente!!!</h2>";

	}

	$conexao->close();




?>
