<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar UBS's</title>
    <link rel="stylesheet" href="style.css">
</head>
<body id="container">
    <header>
        <h1>UBS Caxias</h1>
    </header>
    <main>
    <h1>Cadastrar UBS's</h1> <br><br><br>
<form method="POST" action="cadastro_ubs_action.php">
    <label>
        Nome: <br><input type="text" name="nome"/>
    </label>
    <br><br>

    <label>
        Endereço: <br><input type="text" name="endereco"/>
    </label>
    <br><br>
    
    <label>
       Telefone: <br><input type="text" name="telefone"/>
    </label>
    <br><br>

    <input class="botao" type="submit" value="Cadastrar"/>
</form>
    </main>
    <footer>
        
        <p>&copy; 2023 Projeto Integrador V-A.</p>
    </footer>
</body>
</html>