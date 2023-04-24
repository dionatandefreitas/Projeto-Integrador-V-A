<?php 
require 'config.php';

$id = filter_input(INPUT_POST, 'id'); ///INPUT_POST
$nome = filter_input(INPUT_POST, 'nome'); ///INPUT_POST
$endereco = filter_input(INPUT_POST, 'endereco'); ///INPUT_POST
$telefone = filter_input(INPUT_POST, 'telefone'); ///INPUT_POST

if($id && $nome && $endereco && $telefone){
    $sql = $pdo->prepare("UPDATE ubs SET nome = :nome, endereco = :endereco, telefone = :telefone WHERE id = :id");
    
    $sql->bindValue(':nome', $nome);
    $sql->bindValue(':endereco', $endereco);
    $sql->bindValue(':telefone', $telefone);
    $sql->bindValue(':id', $id);

    $sql->execute();

    header('Location: index.html');
    exit;
}

?>
