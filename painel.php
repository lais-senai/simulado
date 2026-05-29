<?php
include("conexao.php");

if(!isset($_SESSION['usuario'])){
    header("Location:index.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>painel</title>
</head>
<body>
   <h2> Bem-vindo <?php echo $_SESSION['usuario']; ?></h2>
    <form style="text-align:center; background:none; box-shadow:none">

    <a href="produtos.php">
      Cadastro de produtos
    </a> <br><br>

    <a href="estoque.php">
        Gestao de estoque
    </a> <br><br>

    <a href="logout.php">
       Logout
    </a> <br><br>
    
    </form>
</body>
</html>