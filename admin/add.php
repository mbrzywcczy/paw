<?php
require('../../paw/weselaPAW/functions.php');
$functions = new functions('PDO');
$functions->checkSession();

$types = array('consultant_details', 'couple_transport_details', 'guest_transport_details', 'music_details',
    'photo_detail', 'place_details', 'type_details');
if (!isset($_GET['type']) || !in_array($_GET['type'], $types)) {
    header('Location: /paw/admin/panel.php');
    exit;
}
$type = $_GET['type'];
$dbConn = $functions->db;

if (isset($_GET['add']) && $_GET['add'] == 'true') {
    if ($type == "consultant_details") {
        $add = $dbConn->prepare('INSERT INTO ' . $type . '(first_name, last_name, description, price, state,
        city, street, img_src) VALUES (:first_name, :last_name, :description, :price, :state, :city, :street, :img_src)');
        $add->bindParam(':first_name', $_GET['first_name']);
        $add->bindParam(':last_name', $_GET['last_name']);
        $add->bindParam(':description', $_GET['description']);
        $add->bindParam(':price', $_GET['price']);
        $add->bindParam(':state', $_GET['state']);
        $add->bindParam(':city', $_GET['city']);
        $add->bindParam(':street', $_GET['street']);
        $add->bindParam(':img_src', $_GET['img_src']);
        $add->setFetchMode(PDO::FETCH_ASSOC);
        $add->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "couple_transport_details") {
        $add = $dbConn->prepare('INSERT INTO ' . $type . '(type, description, price, state,
        city, street, img_src) VALUES (:type, :description, :price, :state, :city, :street, :img_src)');
        $add->bindParam(':type', $_GET['typeQ']);
        $add->bindParam(':description', $_GET['description']);
        $add->bindParam(':price', $_GET['price']);
        $add->bindParam(':state', $_GET['state']);
        $add->bindParam(':city', $_GET['city']);
        $add->bindParam(':street', $_GET['street']);
        $add->bindParam(':img_src', $_GET['img_src']);
        $add->setFetchMode(PDO::FETCH_ASSOC);
        $add->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "guest_transport_details") {
        $add = $dbConn->prepare('INSERT INTO ' . $type . '(type, description, price_flat, price_per_person, 
        person_amount_per_unit, state, city, street, img_src) VALUES (:type, :description, :price_flat, :price_per_person, 
        :person_amount_per_unit, :state, :city, :street, :img_src)');
        $add->bindParam(':type', $_GET['typeQ']);
        $add->bindParam(':description', $_GET['description']);
        $add->bindParam(':price_flat', $_GET['price_flat']);
        $add->bindParam(':price_per_person', $_GET['price_per_person']);
        $add->bindParam(':person_amount_per_unit', $_GET['person_amount_per_unit']);
        $add->bindParam(':state', $_GET['state']);
        $add->bindParam(':city', $_GET['city']);
        $add->bindParam(':street', $_GET['street']);
        $add->bindParam(':img_src', $_GET['img_src']);
        $add->setFetchMode(PDO::FETCH_ASSOC);
        $add->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "music_details") {
        $add = $dbConn->prepare('INSERT INTO ' . $type . '(type, name, description, price_flat, price_per_person, 
        state, city, street, img_src) VALUES (:type, :name, :description, :price_flat, :price_per_person, :state, :city, 
        :street, :img_src)');
        $add->bindParam(':type', $_GET['typeQ']);
        $add->bindParam(':name', $_GET['name']);
        $add->bindParam(':description', $_GET['description']);
        $add->bindParam(':price_flat', $_GET['price_flat']);
        $add->bindParam(':price_per_person', $_GET['price_per_person']);
        $add->bindParam(':state', $_GET['state']);
        $add->bindParam(':city', $_GET['city']);
        $add->bindParam(':street', $_GET['street']);
        $add->bindParam(':img_src', $_GET['img_src']);
        $add->setFetchMode(PDO::FETCH_ASSOC);
        $add->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "photo_detail") {
        $add = $dbConn->prepare('INSERT INTO ' . $type . '(first_name, last_name, company_name, description, 
        photo, photo_price, video, video_price, drone, drone_price, state, city, street, img_src) VALUES (:first_name, 
        :last_name, :company_name, :description, :photo, :photo_price, :video, :video_price, :drone, :drone_price, :state, :city, 
        :street, :img_src)');
        $photo = 1;
        if (isset($_GET['photo_price']) && $_GET['photo_price'] != 0){
            $photo = 0;
        }
        $video = 1;
        if (isset($_GET['video_price']) && $_GET['video_price'] != 0){
            $video = 0;
        }
        $drone = 1;
        if (isset($_GET['drone_price']) && $_GET['drone_price'] != 0){
            $drone = 0;
        }
        $add->bindParam(':first_name', $_GET['first_name']);
        $add->bindParam(':last_name', $_GET['last_name']);
        $add->bindParam(':company_name', $_GET['company_name']);
        $add->bindParam(':description', $_GET['description']);
        $add->bindParam(':photo', $photo);
        $add->bindParam(':photo_price', $_GET['photo_price']);
        $add->bindParam(':video', $video);
        $add->bindParam(':video_price', $_GET['video_price']);
        $add->bindParam(':drone', $drone);
        $add->bindParam(':drone_price', $_GET['drone_price']);
        $add->bindParam(':state', $_GET['state']);
        $add->bindParam(':city', $_GET['city']);
        $add->bindParam(':street', $_GET['street']);
        $add->bindParam(':img_src', $_GET['img_src']);
        $add->setFetchMode(PDO::FETCH_ASSOC);
        $add->execute();
        header('Location: table.php?type=' . $type);

    } elseif ($type == "place_details") {
        $add = $dbConn->prepare('INSERT INTO ' . $type . '(type, description, price_flat, price_per_person, 
        max_guests, state, city, street, img_src) VALUES (:type, :description, :price_flat, :price_per_person, :max_guests, 
        :state, :city, :street, :img_src)');
        $add->bindParam(':type', $_GET['typeQ']);
        $add->bindParam(':description', $_GET['description']);
        $add->bindParam(':price_flat', $_GET['price_flat']);
        $add->bindParam(':price_per_person', $_GET['price_per_person']);
        $add->bindParam(':max_guests', $_GET['max_guests']);
        $add->bindParam(':state', $_GET['state']);
        $add->bindParam(':city', $_GET['city']);
        $add->bindParam(':street', $_GET['street']);
        $add->bindParam(':img_src', $_GET['img_src']);
        $add->setFetchMode(PDO::FETCH_ASSOC);
        $add->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "type_details") {
        $add = $dbConn->prepare('INSERT INTO ' . $type . '(type, description, state, city, street, img_src) 
        VALUES (:type, :description, :state, :city, :street, :img_src)');
        $add->bindParam(':type', $_GET['typeQ']);
        $add->bindParam(':description', $_GET['description']);
        $add->bindParam(':state', $_GET['state']);
        $add->bindParam(':city', $_GET['city']);
        $add->bindParam(':street', $_GET['street']);
        $add->bindParam(':img_src', $_GET['img_src']);
        $add->setFetchMode(PDO::FETCH_ASSOC);
        $add->execute();
        header('Location: table.php?type=' . $type);
    }
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
if ($type == 'consultant_details') {
    $functions->displayFormAddEditConsultantDetails($type, $id, "add", $row['first_name'], $row['last_name'], $row['description'], $row['price'], $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'couple_transport_details') {
    $functions->displayFormAddEditCoupleTransportDetails($type, $id, "add", $row['type'], $row['description'], $row['price'],  $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'guest_transport_details') {
    $functions->displayFormAddEditGuestTransportDetails($type, $id, "add", $row['type'], $row['description'], $row['price_flat'], $row['price_per_person'], $row['person_amount_per_unit'], $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'music_details') {
    $functions->displayFormAddEditMusicDetails($type, $id, "add", $row['type'], $row['name'], $row['description'], $row['price_flat'], $row['price_per_person'],  $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'photo_detail') {
    $functions->displayFormAddEditPhotoDetails($type, $id, "add", $row['first_name'], $row['last_name'], $row['company_name'], $row['description'], $row['photo_price'], $row['video_price'], $row['drone_price'], $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'place_details') {
    $functions->displayFormAddEditPlaceDetails($type, $id, "add", $row['type'], $row['description'], $row['price_flat'], $row['price_per_person'], $row['max_guests'], $row['state'], $row['city'], $row['street'], $row['img_src']);
} elseif ($type == 'type_details') {
    $functions->displayFormAddEditTypeDetails($type, $id, "add", $row['type'], $row['description'], $row['state'], $row['city'], $row['street'], $row['img_src']);
}
$functions->displayFooter();
?>
</body>
</html>
