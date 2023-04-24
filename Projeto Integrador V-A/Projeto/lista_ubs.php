<?php
require 'config.php';
$lista_ubs = [];
$sql= $pdo->query("SELECT * FROM ubs");
if($sql->rowCount() > 0){
    $lista_ubs = $sql->fetchAll(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de UBS's</title>
    <link rel="stylesheet" href="style.css">
</head>
<body id="container">
    <header>
        <h1>UBS Caxias</h1>   
    </header>
    <main>
        <h1>Lista de UBS's</h1> <br>

        <table border="1">
            <tr>
                <th>ID</th>
                <th>NOME</th>
                <th>ENDEREÇO</th>
                <th>TELEFONE</th>
                <th>EDITAR</th>
            </tr>

                <?php foreach ($lista_ubs as $ubs): ?>

            <tr>
                <td><?=$ubs['id'];?></td>
                <td><?=$ubs['nome'];?></td>
                <td><?=$ubs['endereco'];?></td>
                <td><?=$ubs['telefone'];?></td>
                <td>
                    <a href="editar_ubs.php?id=<?=$ubs['id'];?>">[Editar]</a>
                    <a href="excluir_ubs.php?id=<?=$ubs['id'];?>">[Excluir]</a>
                </td>
            </tr>

                <?php endforeach; ?>

        </table><br>

    </main>
    <footer>
        <
        <p>&copy; 2023 Projeto Integrador V-A.</p>
    </footer>
</body>
</html>
