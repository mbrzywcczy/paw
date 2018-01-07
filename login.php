<?php
require('../paw/weselaPAW/functions.php');
$functions = new functions('PDO');
$isLogged = $functions->checkIfUserIsLogged();
if ($isLogged) {
    header('Location: /paw');
    exit;
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Wesela</title>
    <?php
    $functions->displayMetaTags('style.css');
    ?>
</head>
<body>

<?php
$username = "";
$admin = 1;
if (isset($_SESSION['login'])){
    $username = $_SESSION['login'];
    $admin = $_SESSION['admin'];
}
$functions->displayTopNav("login.php", "index.php", $username, $admin, "../paw/weselaPAW/logout.php", 'admin/panel.php');
?>

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
                    <div>
                        <button name="log_button" type="submit" class="btn btn-default">Wyślij</button>
                    </div>
                </div>
                <?php
                if (isset($_GET['err']) && $_GET['err'] = 't'){
                    echo '<br/>';
                    echo '<div class="form-group"><div>';
                    echo '<span class="label label-danger">Wprowadzono niepoprawne dane</span>';
                    echo '</div></div>';
                }
                ?>
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
                        <input type="radio" name="underwear" value="M" required/>Mężczyzna
                        <input type="radio" name="underwear" value="K" required/>Kobieta
                    </div>
                </div>
                <div class="form-group right">
                    <div>
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