<?php
require('../../paw/weselaPAW/functions.php');
require('../../paw/weselaPAW/admin_display.php');
$functions = new functions('PDO');
$functions->checkIfUserIsAdmin();
$admin_display = new admin_display();

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
        $edit = $dbConn->prepare('UPDATE ' . $type . ' SET type = :type, description = :description, 
            price = :price, state = :state, city = :city, street = :street, img_src = :img_src WHERE id = :id');
        $edit->bindParam(':type', $_GET['typeQ']);
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
    } elseif ($type == "guest_transport_details") {
        $edit = $dbConn->prepare('UPDATE ' . $type . ' SET type = :type, description = :description, 
            price_flat = :price_flat, price_per_person = :price_per_person, person_amount_per_unit = :person_amount_per_unit, 
            state = :state, city = :city, street = :street, img_src = :img_src WHERE id = :id');
        $edit->bindParam(':type', $_GET['typeQ']);
        $edit->bindParam(':description', $_GET['description']);
        $edit->bindParam(':price_flat', $_GET['price_flat']);
        $edit->bindParam(':price_per_person', $_GET['price_per_person']);
        $edit->bindParam(':person_amount_per_unit', $_GET['person_amount_per_unit']);
        $edit->bindParam(':state', $_GET['state']);
        $edit->bindParam(':city', $_GET['city']);
        $edit->bindParam(':street', $_GET['street']);
        $edit->bindParam(':img_src', $_GET['img_src']);
        $edit->bindParam(':id', $id);
        $edit->setFetchMode(PDO::FETCH_ASSOC);
        $edit->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "music_details") {
        $edit = $dbConn->prepare('UPDATE ' . $type . ' SET type = :type, name = :name, description = :description, 
            price_flat = :price_flat, price_per_person = :price_per_person, state = :state, city = :city, street = :street, 
            img_src = :img_src WHERE id = :id');
        $edit->bindParam(':type', $_GET['typeQ']);
        $edit->bindParam(':name', $_GET['name']);
        $edit->bindParam(':description', $_GET['description']);
        $edit->bindParam(':price_flat', $_GET['price_flat']);
        $edit->bindParam(':price_per_person', $_GET['price_per_person']);
        $edit->bindParam(':state', $_GET['state']);
        $edit->bindParam(':city', $_GET['city']);
        $edit->bindParam(':street', $_GET['street']);
        $edit->bindParam(':img_src', $_GET['img_src']);
        $edit->bindParam(':id', $id);
        $edit->setFetchMode(PDO::FETCH_ASSOC);
        $edit->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "photo_detail") {
        $edit = $dbConn->prepare('UPDATE ' . $type . ' SET first_name = :first_name, last_name = :last_name, 
            company_name = :company_name, description = :description, photo = :photo, photo_price = :photo_price,
            video = :video, video_price = :video_price, drone = :drone, drone_price = :drone_price,
            state = :state, city = :city, street = :street, img_src = :img_src WHERE id = :id');
        $photo = 1;
        if (isset($_GET['photo_price']) && $_GET['photo_price'] != 0) {
            $photo = 0;
        }
        $video = 1;
        if (isset($_GET['video_price']) && $_GET['video_price'] != 0) {
            $video = 0;
        }
        $drone = 1;
        if (isset($_GET['drone_price']) && $_GET['drone_price'] != 0) {
            $drone = 0;
        }
        $edit->bindParam(':first_name', $_GET['first_name']);
        $edit->bindParam(':last_name', $_GET['last_name']);
        $edit->bindParam(':company_name', $_GET['company_name']);
        $edit->bindParam(':description', $_GET['description']);
        $edit->bindParam(':photo', $photo);
        $edit->bindParam(':photo_price', $_GET['photo_price']);
        $edit->bindParam(':video', $video);
        $edit->bindParam(':video_price', $_GET['video_price']);
        $edit->bindParam(':drone', $drone);
        $edit->bindParam(':drone_price', $_GET['drone_price']);
        $edit->bindParam(':state', $_GET['state']);
        $edit->bindParam(':city', $_GET['city']);
        $edit->bindParam(':street', $_GET['street']);
        $edit->bindParam(':img_src', $_GET['img_src']);
        $edit->bindParam(':id', $id);
        $edit->setFetchMode(PDO::FETCH_ASSOC);
        $edit->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "place_details") {
        $edit = $dbConn->prepare('UPDATE ' . $type . ' SET type = :type, description = :description, 
            price_flat = :price_flat, price_per_person = :price_per_person, max_guests = :max_guests, state = :state, 
            city = :city, street = :street, img_src = :img_src WHERE id = :id');
        $edit->bindParam(':type', $_GET['typeQ']);
        $edit->bindParam(':description', $_GET['description']);
        $edit->bindParam(':price_flat', $_GET['price_flat']);
        $edit->bindParam(':price_per_person', $_GET['price_per_person']);
        $edit->bindParam(':max_guests', $_GET['max_guests']);
        $edit->bindParam(':state', $_GET['state']);
        $edit->bindParam(':city', $_GET['city']);
        $edit->bindParam(':street', $_GET['street']);
        $edit->bindParam(':img_src', $_GET['img_src']);
        $edit->bindParam(':id', $id);
        $edit->setFetchMode(PDO::FETCH_ASSOC);
        $edit->execute();
        header('Location: table.php?type=' . $type);
    } elseif ($type == "type_details") {
        $edit = $dbConn->prepare('UPDATE ' . $type . ' SET type = :type, description = :description, 
            state = :state, city = :city, street = :street, img_src = :img_src WHERE id = :id');
        $edit->bindParam(':type', $_GET['typeQ']);
        $edit->bindParam(':description', $_GET['description']);
        $edit->bindParam(':state', $_GET['state']);
        $edit->bindParam(':city', $_GET['city']);
        $edit->bindParam(':street', $_GET['street']);
        $edit->bindParam(':img_src', $_GET['img_src']);
        $edit->bindParam(':id', $id);
        $edit->setFetchMode(PDO::FETCH_ASSOC);
        $edit->execute();
        header('Location: table.php?type=' . $type);
    }
}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions->displayMetaTags('../style.css');
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

$username = "";
$admin = 1;
if (isset($_SESSION['login'])){
    $username = $_SESSION['login'];
    $admin = $_SESSION['admin'];
}
$functions->displayTopNav("../login.php", "../index.php", $username, $admin, "../../paw/weselaPAW/logout.php", 'panel.php');
echo '<a href="table.php?type=' . $type . '" class="btn btn-primary" style="width:100%">Powrót do tabeli rekordów</a>';
if (strpos($type, 'review') == true) {
    $admin_display->displayFormEditReview($type, $id, $row['review'], $row['rate']);
} else {
    if ($type == 'consultant_details') {
        $admin_display->displayFormAddEditConsultantDetails($type, $id, "edit", $row['first_name'], $row['last_name'], $row['description'], $row['price'], $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'couple_transport_details') {
        $admin_display->displayFormAddEditCoupleTransportDetails($type, $id, "edit", $row['type'], $row['description'], $row['price'], $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'guest_transport_details') {
        $admin_display->displayFormAddEditGuestTransportDetails($type, $id, "edit", $row['type'], $row['description'], $row['price_flat'], $row['price_per_person'], $row['person_amount_per_unit'], $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'music_details') {
        $admin_display->displayFormAddEditMusicDetails($type, $id, "edit", $row['type'], $row['name'], $row['description'], $row['price_flat'], $row['price_per_person'], $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'photo_detail') {
        $admin_display->displayFormAddEditPhotoDetails($type, $id, "edit", $row['first_name'], $row['last_name'], $row['company_name'], $row['description'], $row['photo_price'], $row['video_price'], $row['drone_price'], $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'place_details') {
        $admin_display->displayFormAddEditPlaceDetails($type, $id, "edit", $row['type'], $row['description'], $row['price_flat'], $row['price_per_person'], $row['max_guests'], $row['state'], $row['city'], $row['street'], $row['img_src']);
    } elseif ($type == 'type_details') {
        $admin_display->displayFormAddEditTypeDetails($type, $id, "edit", $row['type'], $row['description'], $row['state'], $row['city'], $row['street'], $row['img_src']);
    }
}
$functions->displayFooter('../kontakt.php');
?>
</body>
</html>
