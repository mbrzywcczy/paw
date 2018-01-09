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
if (isset($_SESSION['login'])) {
    $username = $_SESSION['login'];
    $admin = $_SESSION['admin'];
}
$functions->displayTopNav("login.php", "index.php", $username, $admin, "../paw/weselaPAW/logout.php", 'admin/panel.php');
if (isset($_GET['reg']) && $_GET['reg'] == 'ok') {
    echo '<a href="login.php" class="btn btn-success" style="width:100%">Zarejestrowano pomyślnie, możesz się zalogować</a>';
}
?>
<div class="container-fluidy bg-5 text-center">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form action="main.php">
                    <div class="col-md-10">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="type" class="label label-info">Wybierz typ</label>
                                <select class="form-control" id="type" name="type" required>
                                    <option value="consultant_details">Konsultanci</option>
                                    <option value="couple_transport_details">Transport dla par</option>
                                    <option value="guest_transport_details">Transport dla gości</option>
                                    <option value="music_details">Muzyka</option>
                                    <option value="photo_detail">Fotograf</option>
                                    <option value="place_details">Miejsce</option>
                                    <option value="type_details">Typ</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="state" class="label label-info">Wybierz województwo</label>
                                <select class="form-control" id="state" name="state" required>
                                    <option value="Dolnośląskie">Dolnośląskie</option>
                                    <option value="Kujawsko-Pomorskie">Kujawsko-Pomorskie</option>
                                    <option value="Lubelskie">Lubelskie</option>
                                    <option value="Lubuskie">Lubuskie</option>
                                    <option value="Łódzkie">Łódzkie</option>
                                    <option value="Małopolskie">Małopolskie</option>
                                    <option value="Mazowieckie">Mazowieckie</option>
                                    <option value="Opolskie">Opolskie</option>
                                    <option value="Podkarpackie">Podkarpackie</option>
                                    <option value="Podlaskie">Podlaskie</option>
                                    <option value="Pomorskie">Pomorskie</option>
                                    <option value="Śląskie">Śląskie</option>
                                    <option value="Świętokrzyskie">Świętokrzyskie</option>
                                    <option value="Warmińsko-Mazurskie">Warmińsko-Mazurskie</option>
                                    <option value="Wielkopolskie">Wielkopolskie</option>
                                    <option value="Zachodniopomorskie">Zachodniopomorskie</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <a href="main.php">
                            <input type=submit class="btn btn-success padd" value="Zobacz" style="width:100%">
                        </a>
                    </div>
                </form>
                <div class="col-md-12">
                    <a href="main.php?type=all" class="btn btn-primary" style="width:100%">Pokaż wszystkie oferty</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluidys bg-1 text-center"></div>
<div class="container-fluid bg-3 text-center">
    <h2 class="kategoria">Nasze kategorie</h2>
    <div class="row">
        <div class="col-sm-12">
            <p>
            <ul class="list-inline">
                <a class="btn btn-info" href="main.php?type=consultant_details">
                    <li>Konsultanci</li>
                </a>
                <a class="btn btn-info" href="main.php?type=couple_transport_details">
                    <li>Transport dla par</li>
                </a>
                <a class="btn btn-info" href="main.php?type=guest_transport_details">
                    <li>Transport dla gości</li>
                </a>
                <a class="btn btn-info" href="main.php?type=music_details">
                    <li>Muzyka</li>
                </a>
                <a class="btn btn-info" href="main.php?type=photo_detail">
                    <li>Fotograf</li>
                </a>
                <a class="btn btn-info" href="main.php?type=place_details">
                    <li>Miejsce</li>
                </a>
                <a class="btn btn-info" href="main.php?type=type_details">
                    <li>Typ</li>
                </a>
            </ul>
            </p>
        </div>
    </div>
</div>
<?php
$functions->displayFooter('kontakt.php');
?>
</body>
</html>
