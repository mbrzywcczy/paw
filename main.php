<?php
require('weselaPAW/functions.php');
require('weselaPAW/main_display.php');
$functions = new functions('PDO');
$main_display = new main_display();
session_start();

$types = array('consultant_details', 'couple_transport_details', 'guest_transport_details', 'music_details',
    'photo_detail', 'place_details', 'type_details');
if (!isset($_GET['type']) || !in_array($_GET['type'], $types)) {
    header('Location: index.php');
    exit;
}
$type = $_GET['type'];
$type_name = "";
$comments = '';
$conIdWithMainTable = '';
if ($type == 'consultant_details') {
    $type_name = "konsultantów";
    $comments = "consultant_reviews";
    $conIdWithMainTable = 'consultant_id';
} elseif ($type == 'couple_transport_details') {
    $type_name = "tranportu dla par";
    $comments = "couple_transport_reviews";
    $conIdWithMainTable = 'couple_transport_id';
} elseif ($type == 'guest_transport_details') {
    $type_name = "transportu dla gości";
    $comments = "guest_transport_reviews";
    $conIdWithMainTable = 'guest_transport_id';
} elseif ($type == 'music_details') {
    $type_name = "muzyki";
    $comments = "music_reviews";
    $conIdWithMainTable = 'music_id';
} elseif ($type == 'photo_detail') {
    $type_name = "fotografów";
    $comments = "photo_reviews";
    $conIdWithMainTable = 'photo_id';
} elseif ($type == 'place_details') {
    $type_name = "miejsc";
    $comments = "place_reviews";
    $conIdWithMainTable = 'place_id';
} elseif ($type == 'type_details') {
    $type_name = "typów";
    $comments = "type_reviews";
    $conIdWithMainTable = 'type_id';
}

$state = null;
$states = array('Dolnośląskie', 'Kujawsko-Pomorskie', 'Lubelskie', 'Lubuskie', 'Łódzkie', 'Małopolskie', 'Mazowieckie',
    'Opolskie', 'Podkarpackie', 'Podlaskie', 'Pomorskie', 'Śląskie', 'Świętokrzyskie', 'Warmińsko-Mazurskie',
    'Wielkopolskie', 'Zachodniopomorskie', 'All');
if (isset($_GET['state']) && in_array($_GET['state'], $states)) {
    $state = $_GET['state'];
}
if ($state == 'All') {
    $state = null;
}
$dbConn = $functions->db;
$query = null;
$count = 0;

if ($state == null) {
    $query = $dbConn->prepare('SELECT * FROM ' . $type);
    $query->setFetchMode(PDO::FETCH_ASSOC);
    $query->execute();
} else {
    $query = $dbConn->prepare('SELECT * FROM ' . $type . '  WHERE state = :state');
    $query->bindParam(':state', $state);
    $query->setFetchMode(PDO::FETCH_ASSOC);
    $query->execute();
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Just Together</title>
    <?php
    $functions->displayMetaTags('style.css');
    ?>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
</head>
<body>
<?php
$username = "";
$admin = 1;
if (isset($_SESSION['login'])) {
    $username = $_SESSION['login'];
    $admin = $_SESSION['admin'];
}
$functions->displayTopNav("login.php", "index.php", $username, $admin, "../paw/weselaPAW/logout.php", 'admin/panel.php');
$allRecords = null;

if ($query->fetch() != null) {
    $count = $query->rowCount();
}
if ($count > 0) {
    $query->execute();
    $allRecords = $query->fetchAll(PDO::FETCH_ASSOC);
}
?>
<div class="container-fluidy bg-<?php if ($count > 0) echo 'info';
else echo 'danger'; ?> text-center">
    <h2 class="liczba">Znaleziono: <strong><?php echo $count; ?> ofert </strong>dla <?php echo $type_name; ?></h2>
</div>
<?php
if ($count == 0) {
    echo '<br/><br/><br/><br/>';
    echo '<h1 class="text-center" style="font-size: 72px">( ◕ ʖ̯ ◕ )</h1>';
    echo '<br/><br/><br/><br/>';
    echo '<a href="index.php" class="btn btn-primary" style="width:100%">Powróć na stronę główną</a>';
} else {
    echo '<div class="container-fluid bg-3 text-center">';
    for ($i = 0; $i < $count; $i++) {
        echo '<div class="row">';
        if ($i + 1 < $count) {
            $lastRow = false;
        } else {
            $lastRow = true;
        }
        if ($i + 1 < $count) {
            for ($j = 0; $j < 2; $j++) {
                $index = $allRecords[$i + $j]['id'];
                $query = $dbConn->prepare('SELECT count(*) as \'count\' FROM ' . $comments . ' WHERE ' . $conIdWithMainTable . ' = :typeId');
                $query->bindParam(':typeId', $index);
                $query->setFetchMode(PDO::FETCH_ASSOC);
                $query->execute();
                $commCount = ($query->fetch())['count'];

                $query = $dbConn->prepare('SELECT round(avg(rate), 2) as \'rate\' FROM ' . $comments . ' WHERE ' . $conIdWithMainTable . ' = :typeId');
                $query->bindParam(':typeId', $index);
                $query->setFetchMode(PDO::FETCH_ASSOC);
                $query->execute();
                $rateCount = ($query->fetch())['rate'];
                $main_display->displayOfferBlock($allRecords[$i + $j]['description'], $allRecords[$i + $j]['img_src'], $allRecords[$i + $j]['id'], $type, $lastRow, $commCount, $rateCount);
            }
            $i++;
        } else {
            $index = $allRecords[$i]['id'];
            $query = $dbConn->prepare('SELECT count(*) as \'count\' FROM ' . $comments . ' WHERE ' . $conIdWithMainTable . ' = :typeId');
            $query->bindParam(':typeId', $index);
            $query->setFetchMode(PDO::FETCH_ASSOC);
            $query->execute();
            $commCount = ($query->fetch())['count'];

            $query = $dbConn->prepare('SELECT round(avg(rate), 2) as \'rate\' FROM ' . $comments . ' WHERE ' . $conIdWithMainTable . ' = :typeId');
            $query->bindParam(':typeId', $index);
            $query->setFetchMode(PDO::FETCH_ASSOC);
            $query->execute();
            $rateCount = ($query->fetch())['rate'];
            $main_display->displayOfferBlock($allRecords[$i]['description'], $allRecords[$i]['img_src'], $allRecords[$i]['id'], $type, $lastRow, $commCount, $rateCount);
        }
        echo '</div>';
    }
    echo '</div>';
}
?>
<?php
$functions->displayFooter('kontakt.php');
?>
</body>
</html>
