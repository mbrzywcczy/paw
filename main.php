<?php
require('weselaPAW/functions.php');
$functions = new functions('PDO');
session_start();

$types = array('consultant_details', 'couple_transport_details', 'guest_transport_details', 'music_details',
    'photo_detail', 'place_details', 'type_details', 'all');
if (!isset($_GET['type']) || !in_array($_GET['type'], $types)) {
    header('Location: index.php');
    exit;
}
$type = $_GET['type'];
$type_name = "";
if ($type == 'consultant_details') {
    $type_name = "konsultantów";
} elseif ($type == 'couple_transport_details') {
    $type_name = "tranportu dla par";
} elseif ($type == 'guest_transport_details') {
    $type_name = "transportu dla gości";
} elseif ($type == 'music_details') {
    $type_name = "muzyki";
} elseif ($type == 'photo_detail') {
    $type_name = "fotografów";
} elseif ($type == 'place_details') {
    $type_name = "miejsc";
} elseif ($type == 'type_details') {
    $type_name = "typów";
} elseif ($type == 'all') {
    $type_name = "wszyskich typów";
}
$state = null;
$states = array('Dolnośląskie', 'Kujawsko-Pomorskie', 'Lubelskie', 'Lubuskie', 'Łódzkie', 'Małopolskie', 'Mazowieckie',
    'Opolskie', 'Podkarpackie', 'Podlaskie', 'Pomorskie', 'Śląskie', 'Świętokrzyskie', 'Warmińsko-Mazurskie',
    'Wielkopolskie', 'Zachodniopomorskie');
if (isset($_GET['state']) && in_array($_GET['state'], $states)) {
    $state = $_GET['state'];
}
$dbConn = $functions->db;
$query = null;
$count = 0;
if ($type != 'all') {
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
} else {
    // TODO display for all - queries
    header('Location: index.php');
    exit;
}
if ($query->fetch() == null) {
    echo "empty";
} else {
    while ($row = $query->fetch()) {
        foreach ($row as $value) {
            echo '---' . $value . '---';
        }
    }
    $count = $query->rowCount();
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Wesela</title>
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
?>
<div class="container-fluidy bg-<?php if ($count > 0) echo 'info'; else echo 'danger'; ?> text-center">
    <h2 class="liczba">Znaleziono: <strong><?php echo $count; ?> ofert </strong>dla <?php echo $type_name; ?></h2>
</div>
<div class="container-fluid bg-3 text-center">
    <div class="row">
        <div class="col-md-6" style="padding: 10px;">
            <div class="form-group">
                <div class="card-box">
                    <div class="row">
                        <div class="col-md-3" style="border-right: 1px solid #eee;">
                            <img src="https://images.unsplash.com/photo-1511217997341-fed0a62b3e28?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D"
                                 class="img-circle">
                        </div>
                        <div class="col-md-7">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur sit amet leo id
                            bibendum. Quisque sit amet dapibus metus, non imperdiet enim. In hac habitasse platea
                            dictumst.
                        </div>
                        <div class="col-md-2">
                            <p>48 <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right"
                                        title="Komentarzy"></span></p>
                            <p>4,6 <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right"
                                         title="Ocena"></span></p>
                        </div>
                    </div>
                    <a href="offert.php">
                        <button type="button" class="btn btn-default" style="margin-left: 70%;">Zobacz</button>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-6" style="padding: 10px;">
            <div class="form-group">
                <div class="card-box">
                    <div class="row">
                        <div class="col-md-3" style="border-right: 1px solid #eee;">
                            <img src="https://images.unsplash.com/photo-1462446892934-2c17979efefd?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D"
                                 class="img-circle">
                        </div>
                        <div class="col-md-7">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur sit amet leo id
                            bibendum. Quisque sit amet dapibus metus, non imperdiet enim. In hac habitasse platea
                            dictumst.
                        </div>
                        <div class="col-md-2">
                            <p>67 <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right"
                                        title="Komentarzy"></span></p>
                            <p>4,7 <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right"
                                         title="Ocena"></span></p>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default" style="margin-left: 70%;">Zobacz</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6" style="padding: 10px;">
            <div class="form-group">
                <div class="card-box">
                    <div class="row">
                        <div class="col-md-3" style="border-right: 1px solid #eee;">
                            <img src="https://images.unsplash.com/photo-1511795409834-ef04bbd61622?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D"
                                 class="img-circle">
                        </div>
                        <div class="col-md-7">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur sit amet leo id
                            bibendum. Quisque sit amet dapibus metus, non imperdiet enim. In hac habitasse platea
                            dictumst.
                        </div>
                        <div class="col-md-2">
                            <p>3 <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right"
                                       title="Komentarzy"></span></p>
                            <p>3,9 <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right"
                                         title="Ocena"></span></p>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default" style="margin-left: 70%;">Zobacz</button>
                </div>
            </div>
        </div>
        <div class="col-md-6" style="padding: 10px;">
            <div class="form-group">
                <div class="card-box">
                    <div class="row">
                        <div class="col-md-3" style="border-right: 1px solid #eee;">
                            <img src="https://images.unsplash.com/photo-1415201364774-f6f0bb35f28f?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D"
                                 class="img-circle">
                        </div>
                        <div class="col-md-7">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur sit amet leo id
                            bibendum. Quisque sit amet dapibus metus, non imperdiet enim. In hac habitasse platea
                            dictumst.
                        </div>
                        <div class="col-md-2">
                            <p>31 <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right"
                                        title="Komentarzy"></span></p>
                            <p>3,1 <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right"
                                         title="Ocena"></span></p>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default" style="margin-left: 70%;">Zobacz</button>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
$functions->displayFooter('kontakt.php');
?>
</body>
</html>
