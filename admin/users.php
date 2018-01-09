<?php
require('../../paw/weselaPAW/functions.php');
require('../../paw/weselaPAW/admin_display.php');
$functions = new functions('PDO');
$functions->checkIfUserIsAdmin();
$admin_display = new admin_display();
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions->displayMetaTags('../style.css');
    ?>
    <title>Zarządzanie użytkownikami</title>
</head>
<body>
<?php
$username = "";
$admin = 1;
if (isset($_SESSION['login'])) {
    $username = $_SESSION['login'];
    $admin = $_SESSION['admin'];
}
$functions->displayTopNav("../login.php", "../index.php", $username, $admin, "../../paw/weselaPAW/logout.php", 'panel.php');

$dbConn = $functions->db;
$columns = [];
$colNames = $dbConn->query('SELECT * FROM users LIMIT 0');
for ($i = 0; $i < $colNames->columnCount(); $i++) {
    $columns[] = $colNames->getColumnMeta($i)['name'];
}

$records = $dbConn->prepare('SELECT * FROM users');
$records->setFetchMode(PDO::FETCH_ASSOC);
$records->execute();

$pass_id = 0;
$login_id = 0;
echo '<table class="table"><tr>';
for ($i = 0; $i < count($columns); $i++) {
    if ($columns[$i] != "password") {
        if ($columns[$i] == "login") {
            $login_id = $i;
        }
        echo '<th>' . $columns[$i] . '</th>';
    } else {
        $pass_id = $i;
    }
}
echo '<th colspan="2" style="text-align: center">Akcje</th></tr>';

while ($row = $records->fetch()) {
    echo '<tr>';
    $first = true;
    $id = 0;
    $loop = 0;
    $disabled = "";
    foreach ($row as $value) {
        if ($loop != $pass_id) {
            if ($loop == $login_id && $value == $username) {
                $disabled = "disabled";
            }
            echo '<td>' . $value . '</td>';
        }

        if ($first == true) {
            $id = $value;
            $first = false;
        }
        $loop++;
    }
    echo '<td><form action="/paw/admin/delete.php"><input type="text" name="type" value="users" hidden>';
    echo '<input type="text" name="id" value="' . $id . '" hidden>';
    echo '<input type=submit class="btn btn-danger" value="Usuń" style="width:100%" ' . $disabled . '></form></td></tr>';
}
echo '</table>';

$functions->displayFooter('../kontakt.php');
?>
</body>
</html>