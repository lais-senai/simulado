<?php

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

include("conexao.php");

echo"<table border='1'>";
echo"<tr>";
echo"<th>nome</th>";
echo"<th>marca</th>";
echo"<th>estoque</th>";
echo"<th>minimo</th>";
echo"</tr>";

$sql = "SELECT * FROM produtos";
$resultado = mysqli_query($conn, $sql);

while($linha = mysqli_fetch_assoc($resultado)){
echo"<tr>";
echo"<td>{$linha['nome']}</td>";
echo"<td>{$linha['marca']}</td>";
echo"<td>{$linha['estoque']}</td>";
echo"<td>{$linha['minimo']}</td>";
echo"</tr>";

}
echo"</table>";

?>

<a href="painel.php">Voltar</a>