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
$functions->displayTopNav("../login.html", "../index.html");
$functions->displayFormAddEdit($type, "add");
$functions->displayFooter();
?>
</body>
</html>
