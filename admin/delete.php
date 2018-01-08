<?php
require('../../paw/weselaPAW/functions.php');
$functions = new functions('PDO');
$functions->checkIfUserIsAdmin();

$types = array('consultant_details', 'consultant_reviews', 'couple_transport_details', 'couple_transport_reviews',
    'guest_transport_details', 'guest_transport_reviews', 'music_details', 'music_reviews', 'photo_detail',
    'photo_reviews', 'place_details', 'place_reviews', 'type_details', 'type_reviews', 'users');
if (!isset($_GET['type']) || !in_array($_GET['type'], $types) || !isset($_GET['id'])) {
    header('Location: /paw/admin/panel.php');
    exit;
}
$type = $_GET['type'];
$id = $_GET['id'];
$dbConn = $functions->db;

$delete = $dbConn->prepare('DELETE FROM ' . $type . ' WHERE id = :id');
$delete->bindParam(':id', $id);
$delete->setFetchMode(PDO::FETCH_ASSOC);
$delete->execute();
if ($type == 'users') {
    header('Location: /paw/admin/users.php');
    exit;
}
header('Location: /paw/admin/table.php?type=' . $type);
exit;
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions->displayMetaTags('../style.css');
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
$functions->displayTopNav("../login.php", "../index.php", $username, $admin, "../../paw/weselaPAW/logout.php", 'panel.php');
?>
<h3 style="text-align: center;">Usuwanie rekordu o numerze identyfikacyjnym <?php echo $id; ?> z
    tabeli <?php echo $type; ?></h3>
<?php
$functions->displayFooter();
?>
</body>
</html>
