<?php 
require 'config.php';

$medico = [];
$id = filter_input(INPUT_GET, 'id'); ///INPUT_POST
if($id){
    $sql = $pdo->prepare ("SELECT * FROM medico WHERE id = :id");
    $sql->bindValue(':id', $id);
    $sql->execute();

    if($sql->rowCount() > 0){
        $medico = $sql->fetch(PDO::FETCH_ASSOC);
    }else{
        header('Location: index.html');
        exit;
    }
}else{
       header('Location: index.html');
}
?>

<h1>Editar</h1>
<form method="POST" action="editar_medico_action.php">
    <input type="hidden" name="id" value="<?=$medico['id'];?>" />
    <label>
        Nome: <input type="text" name="nome" value="<?=$medico['nome'];?>" />
    </label>
    <br><br><br>
    <label>
        Especialidade: <input type="text" name="especialidade" value="<?=$medico['especialidade'];?>"/>
    </label>
    <input type="submit" value="Atualizar" />

</form>