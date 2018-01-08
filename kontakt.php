<?php
require('weselaPAW/functions.php');
$functions = new functions('PDO');
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions->displayMetaTags('style.css');
    ?>
    <title>Usuwanie rekordu</title>
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
?>

<?php
$functions->displayFooter();
?>
</body>
</html>
