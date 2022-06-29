<?php
include_once("conecta_mysql.inc");
?>
<!DOCTYPE html>
<html>


<head>
  <meta charset="utf-8">
  <title>Cadastro no Banco</title>
  <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<header>
  <div class="center">
    <h1>Cadastro de produtos</h1>

    <a href="index.php">Voltar</a>
    <!--  <a href="cadastrarcategoria.php">Cadastrar Categoria</a>
   <a href="cadastrarmarca.php">Cadastrar Marca</a>-->
    <a type='button' data-bs-toggle='modal' data-bs-target='#loginModal'>Cadastrar Marca</a>
    <a type='button' data-bs-toggle='modal' data-bs-target='#cadUsuarioModal'>Cadastrar Categoria</a>

  </div>
  </div>
  
  

  <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="loginModalLabel">Cadastrar Marca</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <<form method="POST" action="verificamarca.php">
          <pre class="cadastro" class="center">
Insira as informações:

        Id:                <input type="text" size="40" maxlength="100" name="idmarca">

         Nome:             <input type="text" size="40" maxlength="100" name="descricao">
         
<input type="submit" value="Gravar Dados" name="enviar">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="cadUsuarioModal" tabindex="-1" aria-labelledby="cadUsuarioModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cadUsuarioModalLabel">Cadastrar Categoria</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <<form method="POST" action="verificacategoria.php">
<pre class="cadastro" class ="center">
Insira as informações:

    Id:             <input type="text" size="40" maxlength="100" name="idcategoria">
         Nome:             <input type="text" size="40" maxlength="100" name="descricao">

<input type="submit" value="Gravar Dados" name="enviar">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="js/custom.js"></script>

  
</header>

  <form method="POST" action="verificaproduto.php">

    <div class="cadastro2">
    <h1>Insira as informações:</h1>

      id:............<input type="text" size="40" maxlength="100" name="idprod"> <div class="select">Categoria:.<select name="idcategoria"><option>Selecione </option>          <?php
                                                                                                                                                                                $result_categoria = "SELECT * FROM categoria";
                                                                                                                                                                                $resultado_categoria = mysqli_query($conexao, $result_categoria);
                                                                                                                                                                                while ($row_categoria = mysqli_fetch_assoc($resultado_categoria)) { ?>
							<option value="<?php echo $row_categoria['IDCATEGORIA']; ?>"><?php echo $row_categoria['DESCRICAO']; ?></option> <?php
                                                                                                                                                                                } ?></select > <div class="select">         Marca:......<select name="idmarca">    <option> Selecione                   </option><?php
                                                                                                                                        $result_marca = "SELECT * FROM marca";
                                                                                                                                        $resultado_marca = mysqli_query($conexao, $result_marca);
                                                                                                                                        while ($row_marca = mysqli_fetch_assoc($resultado_marca)) { ?>
							<option value="<?php echo $row_marca['IDMARCA']; ?>"><?php echo $row_marca['DESCRICAO']; ?></option> <?php
                                                                                                                                        }
                                                                                                                    ?>
                                   </select><br>    
       
                                   Nome:.....<input type="text" size="40" maxlength="100" name="nome"> <br>
        
                                   Descrição:<input type="text" size="40" maxlength="100" name="descricao"> <br>
        
                                   Estoque:..<input type="text" size="40" maxlength="100" name="estoque"><br>
        
                                   Preço:.....<input type="text" size="40" maxlength="100" name="preco"><br>

<input type="submit" value="Gravar Dados" name="enviar">

	
                                                                                                                  </pre>
          </form>
          <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
          <!-- Include all compiled plugins (below), or include individual files as needed -->
          <script src="js/bootstrap.min.js"></script>
          <script type="text/javascript">
            $('#exampleModal').on('show.bs.modal', function(event) {
              var button = $(event.relatedTarget) // Button that triggered the modal
              var recipient = button.data('whatever') // Extract info from data-* attributes
              var recipientnome = button.data('whatevernome')
              var recipientdetalhes = button.data('whateverdetalhes')
              // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
              // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
              var modal = $(this)
              modal.find('.modal-title').text('ID do Curso: ' + recipient)
              modal.find('#id_curso').val(recipient)
              modal.find('#recipient-name').val(recipientnome)
              modal.find('#detalhes-text').val(recipientdetalhes)
            })
          </script>

          </body>

</html>