<?php
require('../../paw/weselaPAW/functions.php');

$types = array('consultant_details', 'consultant_reviews', 'couple_transport_details', 'couple_transport_reviews',
    'guest_transport_details', 'guest_transport_reviews', 'music_details', 'music_reviews', 'photo_detail',
    'photo_reviews', 'place_details', 'place_reviews', 'type_details', 'type_reviews');
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
$functions->displayTopNav("../login.html", "../index.html");
$functions->displayFormAddEdit($type, "edit");
$functions->displayFooter();
?>
</body>
</html>
