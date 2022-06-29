
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Cadastro no Banco</title>
	<link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
</head>
<header>
      <div class="center">
        <h1>Cadastro de clientes</h1>

        <a href="index.php">Voltar</a>
      </div>
    </header>

<body>


<form method="POST" action="verifica.php">
<pre class="cadastro" class ="center">

Insira as informações:

         Nome:             <input type="text" size="40" maxlength="100" name="nome">
       E-mail:              <input type="text" size="40" maxlength="100" name="email">
        Senha:             <input type="password" size="40" maxlength="100" name="senha">
       Cidade:             <input type="text" size="40" maxlength="100" name="cidade">
  Estado (UF):           <input type="text" size="40" maxlength="2" name="uf">
     Endereço:           <input type="text" size="40" maxlength="100" name="endereco">
          CPF:             <input type="text" size="40" maxlength="100" name="CPF">
Telefone Fixo:          <input type="text" size="40" maxlength="100" name="telefone">
      Celular:             <input type="text" size="40" maxlength="100" name="Celular">
         Sexo:             <input type="text"size="40" maxlength="100" name="sexo">

<input type="submit" value="Gravar Dados" name="enviar">
	
</pre>
</form>

</body>
</html>