<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Produtos</title>
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
  </head>
    <header>
      <div class="center">
        <h1>Pagina Inicial</h1>


        <a href="carrinho.php">Carrinho</a>

        <a href="cliente.php">Cadastro de Cliente</a>

        <a href="cadastrarproduto.php">Cadastrar Produtos</a>

      </div>
    </header>
    <section id="produtos">
        <div class="center2">
          <?php require_once('controller/produtos-busca.php'); ?>
        </div>
    </section>

  </body>
</html>
