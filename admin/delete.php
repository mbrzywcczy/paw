<?php
require('../../paw/weselaPAW/functions.php');
$functions = new functions('PDO');
$functions->checkSession();

$types = array('consultant_details', 'consultant_reviews', 'couple_transport_details', 'couple_transport_reviews',
    'guest_transport_details', 'guest_transport_reviews', 'music_details', 'music_reviews', 'photo_detail',
    'photo_reviews', 'place_details', 'place_reviews', 'type_details', 'type_reviews');
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
header('Location: /paw/admin/table.php?type=' . $type);

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions->displayMetaTags()
    ?>
    <title>Usuwanie rekordu</title>
</head>
<body>
<?php
$functions->displayTopNav("../login.html", "../index.html");
?>
<h3 style="text-align: center;">Usuwanie rekordu o numerze identyfikacyjnym <?php echo $id; ?> z
    tabeli <?php echo $type; ?></h3>
<?php
$functions->displayFooter();
?>
</body>
</html>
