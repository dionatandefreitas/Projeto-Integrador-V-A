<?php 
require 'config.php';

$id = filter_input(INPUT_POST, 'id'); ///INPUT_POST
$nome = filter_input(INPUT_POST, 'nome'); ///INPUT_POST
$especialidade = filter_input(INPUT_POST, 'especialidade'); ///INPUT_POST

if($id && $nome && $especialidade){
    $sql = $pdo->prepare("UPDATE medico SET nome = :nome, especialidade = :especialidade WHERE id = :id");
    
    $sql->bindValue(':nome', $nome);
    $sql->bindValue(':especialidade', $especialidade);
    $sql->bindValue(':id', $id);

    $sql->execute();

    header('Location: index.html');
    exit;
}

?>
