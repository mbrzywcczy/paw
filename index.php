<?php
require('../paw/weselaPAW/functions.php');
$functions = new functions('PDO');
session_start();
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
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-5">
                    <div class="form-group">
                        <select class="form-control" id="sel1"">
                        <option>Wybierz województwo</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <select class="form-control" id="sel1"">
                        <option>Wybierz kategorie</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="form-group">
                        <select disabled class="form-control" id="sel1""> <!-- opcja będzie się pojawiac gdy wybierzemy województwo -->
                        <option>Wybierz miasto</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-2">
                    <a href="main.php">
                        <button type="button" class="btn btn-default padd">Zobacz</button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluidys bg-1 text-center"></div>


<div class="container-fluid bg-3 text-center">
    <h2 class="kategoria">Nasze kategorie</h2>
    <div class="row">
        <div class="col-sm-3">
            <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;
            <b>Kategoria 1</b>
            <p>
            <ul class="lista">
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
            </ul>
            </p>

        </div>
        <div class="col-sm-3">
            <span class="glyphicon glyphicon-tags" aria-hidden="true"></span>&nbsp;
            <b>Kategoria 2</b>
            <p>
            <ul class="lista">
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
            </ul>
            </p>

        </div>
        <div class="col-sm-3">
            <span class="glyphicon glyphicon-camera" aria-hidden="true"></span>&nbsp;
            <b>Kategoria 3</b>
            <p>
            <ul class="lista">
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
            </ul>
            </p>

        </div>
        <div class="col-sm-3">
            <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>&nbsp;
            <b>Kategoria 4</b>
            <p>
            <ul class="lista">
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
                <li><a href="#">- Lorem ipsum</a></li>
            </ul>
            </p>
        </div>
    </div>
</div>
<?php
$functions->displayFooter();
?>
</body>
</html>
