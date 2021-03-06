<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Fazer Login</title>
        <meta charset="utf-8">
        <meta http-equiv=”content-type” content="text/html;" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="keywords" content="tags, que, eu, quiser, usar, para, os, robos, do, google" />
        <title>Fazer Login</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- BOOTSTRAP -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="shortcut icon" href="logo.jpg">
        <link rel="stylesheet" href="../css/style.css">

        <!-- ESTILOS PARA ESTA PÁGINA -->
        <!-- Nesse caso, este estilo é apenas para inserir imagens -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />

        <!-- SCRIPTS -->
        <script type="text/javascript" src="script.js"></script>

        <!-- JAVASCRIPT E JQUERY -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>



    </head>

    <body>

        <?php $verificacao = 1; include('menu.php'); ?>
<!--INICIO DO FORMULÁRIO -->
<!-- <div class="container">
Hello World
</div> -->

    <div class="row login-form">
        <form action="?section=UsuarioControle&function=fazerLogin<?php if(isset($id) && $id) echo "&id=".$id;?>" method="POST">
        
            <div class="input-group input-group-lg">
                <span class="input-group-text usr">USUÁRIO:</span>
                <input name="cpf" type="number" id="cpf" class="form-control item" onkeypress="return somenteNumerosCPF(event)"  maxlength="11" 
                required oninvalid="setCustomValidity('O campo CPF não pode estar vazio')" 
                onchange="try{setCustomValidity('')}catch(e){}"
                aria-describedby="inputGroup-sizing-lg">
            </div>
            
            <div class="input-group input-group-lg">
                <span class="input-group-text usr" id="inputGroup-sizing-lg">SENHA:</span>
                
                <input name="senha" type="password" class="form-control item" maxlength="100" 
                required oninvalid="setCustomValidity('O campo senha não pode estar vazio')"
                onchange="try{setCustomValidity('')}catch(e){}"
                aria-describedby="inputGroup-sizing-lg">
                <?php if(isset($msgLogin) && !$msgLogin): ?> <span style='color:red;' role="alert">Senha ou Login inválidos!</span> <br> <?php endif; ?>
                </div>
                
        <div class="form-group">
            <button type="submit" value="Entrar" class="btn btn-block login-account">ENVIAR</button>
        </div>
    </form><!--FIM DO FORMULÁRIO -->

</div>

</body>
</html>
