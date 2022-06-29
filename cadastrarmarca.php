
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Cadastro no Banco</title>
	<link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
</head>
<header>
      <div class="center">
        <h1>Programação Web II - Cadastro de Marcas</h1>

        <a href="cadastrarproduto.php">Voltar</a>

      </div>
    </header>

	<h1 class = "cadastro">
		Cadastro de Marcas</h1>

<form method="POST" action="verificamarca.php">
<pre class="cadastro" class ="center">
Insira as informações:

        Id:                <input type="text" size="40" maxlength="100" name="idmarca">

         Nome:             <input type="text" size="40" maxlength="100" name="descricao">
         
<input type="submit" value="Gravar Dados" name="enviar">
	
</pre>
</form>

</body>
</html>