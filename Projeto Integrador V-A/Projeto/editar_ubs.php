<?php 
require 'config.php';

$ubs = [];
$id = filter_input(INPUT_GET, 'id'); ///INPUT_POST
if($id){
    $sql = $pdo->prepare ("SELECT * FROM ubs WHERE id = :id");
    $sql->bindValue(':id', $id);
    $sql->execute();

    if($sql->rowCount() > 0){
        $ubs = $sql->fetch(PDO::FETCH_ASSOC);
    }else{
        header('Location: index.php');
        exit;
    }
}else{
       header('Location: index.php');
}
?>

<h1>Editar UBS</h1>
<form method="POST" action="editar_ubs_action.php">
    <input type="hidden" name="id" value="<?=$ubs['id'];?>" />
    <label>
        Nome: <input type="text" name="nome" value="<?=$ubs['nome'];?>" />
    </label>
    <br><br><br>
    <label>
        Endereço: <input type="text" name="endereco" value="<?=$ubs['endereco'];?>" />
    </label>
    <br><br><br>
    <label>
        Telefone: <input type="text" name="telefone" value="<?=$ubs['telefone'];?>"/>
    </label>
    <input type="submit" value="Atualizar" />

</form>