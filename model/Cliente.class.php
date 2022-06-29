<?php
  class Cliente {
    function __construct(){
      session_start();  

      function add() {
        require_once("../controller/conexao.php");
        
        
        // Redireciona para a inicial
        header('location: ../index.php');
      }
  
    }
}

      ?>    

