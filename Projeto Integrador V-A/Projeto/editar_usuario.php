<?php 
require 'config.php';

$usuario = [];
$id = filter_input(INPUT_GET, 'id'); ///INPUT_POST
if($id){
    $sql = $pdo->prepare ("SELECT * FROM usuario WHERE id = :id");
    $sql->bindValue(':id', $id);
    $sql->execute();

    if($sql->rowCount() > 0){
        $usuario = $sql->fetch(PDO::FETCH_ASSOC);
    }else{
        header('Location: index.html');
        exit;
    }
}else{
       header('Location: index.html');
}
?>

<h1>Editar</h1>
<form method="POST" action="editar_usuario_action.php">
    <input type="hidden" name="id" value="<?=$usuario['id'];?>" />
    <label>
        Nome: <input type="text" name="nome" value="<?=$usuario['nome'];?>" />
    </label>
    <br><br><br>
    <label>
        Telefone: <input type="text" name="telefone" value="<?=$usuario['telefone'];?>"/>
    </label>
    <input type="submit" value="Atualizar" />

</form>