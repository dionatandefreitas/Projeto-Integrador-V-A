<?php 
require 'config.php';

$id = filter_input(INPUT_POST, 'id'); ///INPUT_POST
$nome = filter_input(INPUT_POST, 'nome'); ///INPUT_POST
$telefone = filter_input(INPUT_POST, 'telefone'); ///INPUT_POST

if($id && $nome && $telefone){
    $sql = $pdo->prepare("UPDATE usuario SET nome = :nome, telefone = :telefone WHERE id = :id");
    
    $sql->bindValue(':nome', $nome);
    $sql->bindValue(':telefone', $telefone);
    $sql->bindValue(':id', $id);

    $sql->execute();

    header('Location: index.html');
    exit;
}

?>
