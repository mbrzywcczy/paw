<?php
require('weselaPAW/functions.php');
$functions = new functions('PDO');
session_start();
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions->displayMetaTags('style.css');
    ?>
    <title>Kontakt</title>
</head>
<body>
<?php
$username = "";
$admin = 1;
if (isset($_SESSION['login'])) {
    $username = $_SESSION['login'];
    $admin = $_SESSION['admin'];
}

$username = "";
$admin = 1;
if (isset($_SESSION['login'])) {
    $username = $_SESSION['login'];
    $admin = $_SESSION['admin'];
}
$functions->displayTopNav("login.php", "index.php", $username, $admin, "../paw/weselaPAW/logout.php", 'admin/panel.php');
?>
<div class="container-fluid bg-3 text-center">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-4">
            <div class="row">
                <div class="form-group">
                    <h2>Dane kontaktowe:</h2>
                    Nazwa firmy<br>
                    ul. Zmyślona 8/65<br>
                    40-096 Katowice<br>
                    Mail: kontakt@wesela.pl
                </div>
                <hr>
                <div class="form-group">
                    <h2>Dane firmowe:</h2>
                    Spółka z ograniczoną odpowiedzialnością<br>
                    KRS: 0000000000<br>
                    NIP: 0000000000<br>
                    REGON: 000000000
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-4">
            <h2 class="kategoria">Formularz kontaktowy</h2>
            <form class="form" name="contactform" method="post">
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6">
                            <input type="text" class="form-control" name="first_name" required placeholder="Podaj imię"
                                <?php if ($username != '') echo ' value="' . $username . '" disabled'; ?>>
                        </div>
                        <div class="col-md-6">
                            <input type="email" class="form-control" name="email" required placeholder="Podaj adres email"
                                <?php if ($username != '') echo ' value="' . $functions->getEmail($username) . '" disabled'; ?>>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="subject" required placeholder="Temat">
                </div>
                <div class="form-group">
                    <textarea name="comments" required class="form-control" style="resize: vertical;  overflow: auto;" rows="5" placeholder="Zostaw wiadomość"></textarea>
                </div>
                <input name="submit" type="submit" value="Wyślij" class="btn right btn-primary">
            </form>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<?php
$functions->displayFooter('kontakt.php');
?>
</body>
</html>
