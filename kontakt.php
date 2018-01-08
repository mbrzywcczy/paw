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
<div class="container" style="padding-top:20px;">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="well well-sm">
                <form class="form-horizontal" action="" method="post">
                    <fieldset>
                        <legend class="text-center">Skontaktuj się z nami</legend>
                        <div class="form-group">
                            <label class="col-md-3 control-label" for="name">Nazwa użytkownika</label>
                            <div class="col-md-9">
                                <input id="name" name="name" type="text" placeholder="Nazwa użytkownika"
                                       class="form-control"
                                       required<?php if ($username != '') echo ' value="' . $username . '" disabled'; ?>>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label" for="email">E-mail</label>
                            <div class="col-md-9">
                                <input id="email" name="email" type="text" placeholder="E-mail" class="form-control"
                                       required<?php if ($username != '') echo ' value="' . $functions->getEmail($username) . '" disabled'; ?>>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label" for="message">Wiadomość</label>
                            <div class="col-md-9">
                                <textarea class="form-control" id="message" name="message"
                                          placeholder="Wpisz tutaj swoją wiadomość..." rows="10" maxlength="512"
                                          required></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12 text-right">
                                <button type="submit" class="btn btn-primary btn-lg" disabled>Wyślij</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
<?php
$functions->displayFooter('kontakt.php');
?>
</body>
</html>
