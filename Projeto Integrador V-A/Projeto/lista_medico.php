<?php
require 'config.php';
$lista_medico = [];
$sql= $pdo->query("SELECT * FROM medico");
if($sql->rowCount() > 0){
    $lista_medico = $sql->fetchAll(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Médicos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body id="container">
    <header>
        <h1>UBS Caxias</h1>
    </header>
    <main>
        <h1>Lista de Medico</h1><br>

        <table border="1">
            <tr>
                <th>ID</th>
                <th>NOME</th>
                <th>ESPECIALIDADE</th>
                <th>EDITAR</th>
            </tr>

                <?php foreach ($lista_medico as $medico): ?>

            <tr>
                <td><?=$medico['id'];?></td>
                <td><?=$medico['nome'];?></td>
                <td><?=$medico['especialidade'];?></td>
                <td>
                    <a href="editar_medico.php?id=<?=$medico['id'];?>">[Editar]</a>
                    <a href="excluir_medico.php?id=<?=$medico['id'];?>">[Excluir]</a>
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