<?php
require('../../paw/weselaPAW/functions.php');
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions = new functions('PDO');
    $functions->displayMetaTags()
    ?>
    <title>Zarządzanie</title>
</head>
<body>
<?php
$functions->displayTopNav("../login.html", "../index.html");
echo '<a href="panel.php" class="btn btn-primary" style="width:100%">Powrót do wyboru kategorii</a>';
//redirect when get is empty or has wrong values
//TODO redirect when user doesn't have admin privileges
$types = array('consultant_details', 'consultant_reviews', 'couple_transport_details', 'couple_transport_reviews',
    'guest_transport_details', 'guest_transport_reviews', 'music_details', 'music_reviews', 'photo_detail',
    'photo_reviews', 'place_details', 'place_reviews', 'type_details', 'type_reviews');
$type = "";
if (!isset($_GET['type']) || !in_array($_GET['type'], $types)) {
    header('Location: /paw/admin/panel.php');
    exit;
}

$type = $_GET['type'];
// charset=utf8 because without it PDO changes polish characters into question marks
$dbConn = $functions->db;

// display add button above the table if its not reviews table
// allowing admin to add new reviews would be ethically questionable
$rev = '';
if (strpos($type, 'review') == true) {
    $rev = 'disabled';
}
echo '<form action="/paw/admin/add.php"><input type="text" name="type" value="' . $type . '" hidden>
    <input type=submit class="btn btn-success" value="Dodaj rekord" style="width:100%" ' . $rev . '></form>';

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
echo '<th colspan="2" style="text-align: center">Akcje</th>';
echo '</tr>';
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
    echo '<td><form action="/paw/admin/edit.php"><input type="text" name="type" value="' . $type . '" hidden>
                <input type="text" name="id" value="' . $id . '" hidden>
                <input type=submit class="btn btn-info" value="Edytuj" style="width:100%"></form></td>
              <td><form action="/paw/admin/delete.php"><input type="text" name="type" value="' . $type . '" hidden>
                <input type="text" name="id" value="' . $id . '" hidden>
                <input type=submit class="btn btn-danger" value="Usuń" style="width:100%"></form></td></tr>';
}
echo '</table>';
$functions->displayFooter();
?>
</body>
</html>
