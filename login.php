<?php
require('../paw/weselaPAW/functions.php');
$functions = new functions('PDO');
$isLogged = $functions->checkIfUserIsLogged();
if ($isLogged){
    header('Location: /paw');
    exit;
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Wesela</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Tu będzie logo</a>
        </div>
    </div>
</nav>

<div class="container-fluidy bg-5 text-center">
</div>

<div class="container-fluid bg-3 text-center">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-3">
            <h2 class="kategoria">Logowanie</h2>
            <form class="form-horizontal" role="form" method="post" action="weselaPAW/login.php">
                <div class="form-group">
                    <label for="inputEmail3" class="col-md-5 control-label">Login</label>
                    <div class="col-md-7">
                        <input name="log_login" class="form-control" placeholder="Podaj login">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-md-5 control-label">Hasło</label>
                    <div class="col-md-7">
                        <input name="log_password" type="password" class="form-control" placeholder="Twoje tajne hasło">
                    </div>
                </div>
                <div class="form-group right">
                    <div >
                        <button name="log_button" type="submit" class="btn btn-default">Wyślij</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-3">
            <h2 class="kategoria">Rejestracja</h2>
            <form class="form-horizontal" role="form" method="post" action="weselaPAW/register.php">
                <div class="form-group">
                    <label for="inputEmail3" class="col-md-5 control-label">Login</label>
                    <div class="col-md-7">
                        <input name="reg_login" class="form-control" placeholder="Podaj login">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-md-5 control-label">Hasło</label>
                    <div class="col-md-7">
                        <input name="reg_pass1" type="password" class="form-control" placeholder="Podaj hasło">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-md-5 control-label">Hasło</label>
                    <div class="col-md-7">
                        <input name="reg_pass2" type="password" class="form-control" placeholder="Powtorz hasło">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-md-5 control-label">Email</label>
                    <div class="col-md-7">
                        <input name="reg_email" type="email" class="form-control" placeholder="Podaj adres email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-md-5 control-label">Imię</label>
                    <div class="col-md-7">
                        <input name="reg_name" class="form-control" placeholder="Podaj imię">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-md-5 control-label">Nazwisko</label>
                    <div class="col-md-7">
                        <input name="reg_lastname" class="form-control" placeholder="Podaj nazwisko">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-md-5 control-label">Płeć</label>
                    <div class="col-md-7">
                        <input type="radio" name="underwear" value="M" required />Mężczyzna
                        <input type="radio" name="underwear" value="K" required />Kobieta
                    </div>
                </div>
                <div class="form-group right">
                    <div >
                        <button name="reg_button" type="submit" class="btn btn-default">Wyślij</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
<br>
<footer class="container-fluid bg-4 text-center">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <p>Projekt zaliczeniowy</p>
        </div>
        <div class="col-md-4">
            <a href="#" class="fa fa-facebook-square social-size"></a>
            <a href="#" class="fa fa-twitter-square social-size"></a>
            <a href="#" class="fa fa-google-plus-square social-size"></a>
            <a href="#" class="fa fa-instagram social-size"></a>
        </div>
    </div>
</footer>
</body>
</html>