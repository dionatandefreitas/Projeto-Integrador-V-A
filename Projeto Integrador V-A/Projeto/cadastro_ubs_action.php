<?php
require 'config.php';


$nome= filter_input(INPUT_POST, 'nome');
$endereco= filter_input(INPUT_POST, 'endereco');
$telefone= filter_input(INPUT_POST, 'telefone');

$sql = $pdo->prepare("INSERT INTO ubs (nome, endereco, telefone) VALUES (:nome, :endereco, :telefone )");
$sql->bindValue(':nome', $nome);
$sql->bindValue(':endereco', $endereco);
$sql->bindValue(':telefone', $telefone);
$sql->execute();


header("Location: index.html");

?>