<?php
require 'config.php';
$lista_usuario = [];
$sql= $pdo->query("SELECT * FROM usuario");
if($sql->rowCount() > 0){
    $lista_usuario = $sql->fetchAll(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Usuários</title>
    <link rel="stylesheet" href="style.css">
</head>
<body id="container">
    <header>
        <h1>UBS Caxias</h1>
    </header>
    <main>
        <h1>Lista de Usuários</h1> <br>

        
        <table border="1">
            <tr>
                <th>ID</th>
                <th>NOME</th>
                <th>TELEFONE</th>
                <th>EDITAR</th>
            </tr>

    <?php foreach ($lista_usuario as $usuario): ?>

            <tr>
                <td><?=$usuario['id'];?></td>
                <td><?=$usuario['nome'];?></td>
                <td><?=$usuario['telefone'];?></td>
                <td>
                    <a href="editar_usuario.php?id=<?=$usuario['id'];?>">[Editar]</a>
                    <a href="excluir_usuario.php?id=<?=$usuario['id'];?>">[Excluir]</a>
                </td>
             </tr>

                <?php endforeach; ?>
        </table><br>
        
    </main>
    <footer>
        
        <p>&copy; 2023 Projeto Integrador V-A.</p>
    </footer>
</body>
</html>