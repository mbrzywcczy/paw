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

if (isset($_GET['edit']) && $_GET['edit'] == 'true') {
    if (strpos($type, 'review') == true) {
        $edit = $dbConn->prepare('UPDATE ' . $type . ' SET review = :review, rate = :rate WHERE id = :id');
        $edit->bindParam(':review', $_GET['review']);
        $edit->bindParam(':rate', $_GET['rate']);
        $edit->bindParam(':id', $id);
        $edit->setFetchMode(PDO::FETCH_ASSOC);
        $edit->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "consultant_details") {
        $edit = $dbConn->prepare('UPDATE ' . $type . ' SET first_name = :first_name, last_name = :last_name, 
            description = :description, price = :price, state = :state, city = :city, street = :street, 
            img_src = :img_src WHERE id = :id');
        $edit->bindParam(':first_name', $_GET['first_name']);
        $edit->bindParam(':last_name', $_GET['last_name']);
        $edit->bindParam(':description', $_GET['description']);
        $edit->bindParam(':price', $_GET['price']);
        $edit->bindParam(':state', $_GET['state']);
        $edit->bindParam(':city', $_GET['city']);
        $edit->bindParam(':street', $_GET['street']);
        $edit->bindParam(':img_src', $_GET['img_src']);
        $edit->bindParam(':id', $id);
        $edit->setFetchMode(PDO::FETCH_ASSOC);
        $edit->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "couple_transport_details") {
        //TODO insert

    } elseif ($type == "guest_transport_details") {
        //TODO insert

    } elseif ($type == "music_details") {
        //TODO insert

    } elseif ($type == "photo_detail") {
        //TODO insert

    } elseif ($type == "place_details") {
        //TODO insert

    } elseif ($type == "type_details") {
        //TODO insert

    }
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
    if ($type == 'consultant_details') {
        $functions->displayFormAddEditConsultantDetails($type, $id, "edit", $row['first_name'], $row['last_name'], $row['description'], $row['price'], $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'couple_transport_details') {
        $functions->displayFormAddEditCoupleTransportDetails($type, $id, "edit", $row['type'], $row['description'], $row['price'], $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'guest_transport_details') {
        $functions->displayFormAddEditGuestTransportDetails($type, $id, "edit", $row['type'], $row['description'], $row['price_flat'], $row['price_per_person'], $row['person_amount_per_unit'], $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'music_details') {
        $functions->displayFormAddEditMusicDetails($type, $id, "edit", $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'photo_detail') {
        $functions->displayFormAddEditPhotoDetails($type, $id, "edit", $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'place_details') {
        $functions->displayFormAddEditPlaceDetails($type, $id, "edit", $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'type_details') {
        $functions->displayFormAddEditTypeDetails($type, $id, "edit", $row['state'], $row['city'], $row['street'], $row['img_src']);
    }
}
$functions->displayFooter();
?>
</body>
</html>
