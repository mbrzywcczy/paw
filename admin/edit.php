<?php
require('../../paw/weselaPAW/functions.php');

$types = array('consultant_details', 'consultant_reviews', 'couple_transport_details', 'couple_transport_reviews',
    'guest_transport_details', 'guest_transport_reviews', 'music_details', 'music_reviews', 'photo_detail',
    'photo_reviews', 'place_details', 'place_reviews', 'type_details', 'type_reviews');
//TODO redirect when user doesn't have admin privileges
if (!isset($_GET['type']) || !in_array($_GET['type'], $types) || !isset($_GET['id'])) {
    header('Location: /paw/admin/panel.php');
    exit;
}
$type = $_GET['type'];
$id = $_GET['id'];
$functions = new functions('PDO');
$dbConn = $functions->db;

if (isset($_GET['edit']) && $_GET['edit'] == 'true' && isset($_GET['review'])&& isset($_GET['rate'])) {
    echo 'editing in database';


    $edit = $dbConn->prepare('UPDATE ' . $type . ' SET review = :review, rate = :rate WHERE id = :id');
    $edit->bindParam(':review', $_GET['review']);
    $edit->bindParam(':rate', $_GET['rate']);
    $edit->bindParam(':id', $id);
    $edit->setFetchMode(PDO::FETCH_ASSOC);
    $edit->execute();
    header('Location: table.php?type=' . $type);
    // TODO actual editing data in database
}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions->displayMetaTags()
    ?>
    <title>Edycja rekordu</title>
</head>
<body>
<?php
$records = $dbConn->prepare('SELECT * FROM ' . $type . ' WHERE id = :id');
$records->bindParam(':id', $id);
$records->setFetchMode(PDO::FETCH_ASSOC);
$records->execute();
$row = $records->fetch();

$functions->displayTopNav("../login.html", "../index.html");
echo '<a href="table.php?type=' . $type . '" class="btn btn-primary" style="width:100%">Powrót do tabeli rekordów</a>';
if (strpos($type, 'review') == true) {
    $functions->displayFormEditReview($type, $id, $row['review'], $row['rate']);
} else {
    //TODO edit details
}
$functions->displayFooter();
?>
</body>
</html>
