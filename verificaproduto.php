<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Verifica Informações</title>
</head>
<body>

	<?php

        $idprod              = $_POST['idprod'];
        $idcategoria         = $_POST['idcategoria'];
        $idmarca             = $_POST['idmarca'];
        $nome                = $_POST['nome'];
        $descricao           = $_POST['descricao'];
        $estoque             = $_POST['estoque'];
        $preco               = $_POST['preco'];
		$vazio      	     = 0;

		
			include 'insereproduto.inc';
		




	?>

</body>
</html>