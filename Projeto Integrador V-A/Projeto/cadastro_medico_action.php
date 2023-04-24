<?php
require 'config.php';


$nome= filter_input(INPUT_POST, 'nome');
$especialidade= filter_input(INPUT_POST, 'especialidade');

$sql = $pdo->prepare("INSERT INTO medico (nome, especialidade) VALUES (:nome, :especialidade)");
$sql->bindValue(':nome', $nome);
$sql->bindValue(':especialidade', $especialidade);
$sql->execute();


header("Location: index.html");

?>