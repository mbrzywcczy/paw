<?php
require('../../paw/weselaPAW/functions.php');

$types = array('consultant_details', 'couple_transport_details', 'guest_transport_details', 'music_details',
    'photo_detail', 'place_details', 'type_details');
//TODO redirect when user doesn't have admin privileges
if (!isset($_GET['type']) || !in_array($_GET['type'], $types)) {
    header('Location: /paw/admin/panel.php');
    exit;
}
$type = $_GET['type'];
$functions = new functions('PDO');
$dbConn = $functions->db;

if (isset($_GET['add']) && $_GET['add'] == 'true') {
    echo 'adding to database';
    // TODO actual adding to database new data
}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions->displayMetaTags()
    ?>
    <title>Dodawanie nowego rekordu</title>
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
if ($type == 'consultant_details'){
    $functions->displayFormAddEditConsultantDetails($type, $id, "add", $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'couple_transport_details'){
    $functions->displayFormAddEditCoupleTransportDetails($type, $id, "add", $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'guest_transport_details'){
    $functions->displayFormAddEditGuestTransportDetails($type, $id, "add", $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'music_details'){
    $functions->displayFormAddEditMusicDetails($type, $id, "add", $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'photo_detail'){
    $functions->displayFormAddEditPhotoDetails($type, $id, "add", $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'place_details'){
    $functions->displayFormAddEditPlaceDetails($type, $id, "add", $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'type_details'){
    $functions->displayFormAddEditTypeDetails($type, $id, "add", $row['state'], $row['city'], $row['street'], $row['img_src']);
}
$functions->displayFooter();
?>
</body>
</html>
