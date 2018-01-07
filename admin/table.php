<?php
require('../../paw/weselaPAW/functions.php');
$functions = new functions('PDO');
$functions->checkIfUserIsAdmin();
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions->displayMetaTags('../style.css');
    ?>
    <title>Zarządzanie</title>
</head>
<body>
<?php
$username = "";
$admin = 1;
if (isset($_SESSION['login'])){
    $username = $_SESSION['login'];
    $admin = $_SESSION['admin'];
}
$functions->displayTopNav("../login.php", "../index.php", $username, $admin, "../../paw/weselaPAW/logout.php", 'panel.php');
echo '<a href="panel.php" class="btn btn-primary" style="width:100%">Powrót do wyboru kategorii</a>';

$types = array('consultant_details', 'consultant_reviews', 'couple_transport_details', 'couple_transport_reviews',
    'guest_transport_details', 'guest_transport_reviews', 'music_details', 'music_reviews', 'photo_detail',
    'photo_reviews', 'place_details', 'place_reviews', 'type_details', 'type_reviews');
$type = "";
if (!isset($_GET['type']) || !in_array($_GET['type'], $types)) {
    header('Location: /paw/admin/panel.php');
    exit;
}
$type = $_GET['type'];
$dbConn = $functions->db;
$rev = '';
if (strpos($type, 'review') == true) {
    $rev = 'disabled';
}
echo '<form action="/paw/admin/add.php"><input type="text" name="type" value="' . $type . '" hidden>';
echo '<input type=submit class="btn btn-success" value="Dodaj rekord" style="width:100%" ' . $rev . '></form>';

$columns = [];
$colNames = $dbConn->query('SELECT * FROM ' . $type . ' LIMIT 0');
for ($i = 0; $i < $colNames->columnCount(); $i++) {
    $columns[] = $colNames->getColumnMeta($i)['name'];
}

$records = $dbConn->prepare('SELECT * FROM ' . $type);
$records->setFetchMode(PDO::FETCH_ASSOC);
$records->execute();

echo '<table class="table"><tr>';
foreach ($columns as $col) {
    echo '<th>' . $col . '</th>';
}
echo '<th colspan="2" style="text-align: center">Akcje</th></tr>';

while ($row = $records->fetch()) {
    echo '<tr>';
    $first = true;
    $id = 0;
    foreach ($row as $value) {
        echo '<td>' . $value . '</td>';
        if ($first == true) {
            $id = $value;
            $first = false;
        }
    }
    echo '<td><form action="/paw/admin/edit.php"><input type="text" name="type" value="' . $type . '" hidden>';
    echo '<input type="text" name="id" value="' . $id . '" hidden>';
    echo '<input type=submit class="btn btn-info" value="Edytuj" style="width:100%"></form></td>';
    echo '<td><form action="/paw/admin/delete.php"><input type="text" name="type" value="' . $type . '" hidden>';
    echo '<input type="text" name="id" value="' . $id . '" hidden>';
    echo '<input type=submit class="btn btn-danger" value="Usuń" style="width:100%"></form></td></tr>';
}
echo '</table>';

$functions->displayFooter();
?>
</body>
</html>
