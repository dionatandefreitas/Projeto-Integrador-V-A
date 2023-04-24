<?php
require 'config.php';


$nome= filter_input(INPUT_POST, 'nome');
$telefone= filter_input(INPUT_POST, 'telefone');

$sql = $pdo->prepare("INSERT INTO usuario (nome, telefone) VALUES (:nome, :telefone)");
$sql->bindValue(':nome', $nome);
$sql->bindValue(':telefone', $telefone);
$sql->execute();

header("Location: index.html")

?>