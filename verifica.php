<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Verifica Informações</title>
</head>
<body>

	<?php

		$nome      		 = $_POST['nome'];
		$email      	 = $_POST['email'];
		$cidade    		 = $_POST['cidade'];
        $estado			 = $_POST['uf'];
        $CPF    		 = $_POST['CPF'];
        $endereco    	 = $_POST['endereco'];
        $Celular   		 = $_POST['Celular'];
        $telefone    	 = $_POST['telefone'];
        $senha     		 = $_POST['senha'];
        $sexo      		 = $_POST['sexo'];
		$vazio      	 = 0;

		
			include 'insere.inc';
		




	?>

</body>
</html>