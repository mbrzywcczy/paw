<?php require('weselaPAW/functions.php');
session_start();
$functions = new functions('PDO');

$types = array('consultant_details', 'couple_transport_details', 'guest_transport_details', 'music_details',
    'photo_detail', 'place_details', 'type_details');
if (!isset($_GET['id']) || !isset($_GET['type']) || !in_array($_GET['type'], $types)) {
    header('Location: /paw/index.php');
    exit;
}
$id = $_GET['id'];
$type = $_GET['type'];
if ($type == 'music_details') {
    $info = $functions->artistInfo($id);
} elseif ($type == 'consultant_details') {
    $info = $functions->consultantInfo($id);
} elseif ($type == 'couple_transport_details') {
    $info = $functions->coupleTransportInfo($id);
} elseif ($type == 'guests_transport_details') {
    $info = $functions->guestTransportInfo($id);
} elseif ($type == 'photo_detail') {
    $info = $functions->photoInfo($id);
} elseif ($type == 'place_details') {
    $info = $functions->placeInfo($id);
} elseif ($type == 'type_details') {
    $info = $functions->typeInfo($id);
}

$commentRow = $functions->getComment($id, $type);

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Oferta</title>
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
<div class="container-fluid bg-3 text-center">
    <div class="row">
        <div class="col-md-1"></div>
        <!-- Z racji tego, że te wszystkie elementy się różnią od siebie polami to przerzuciłem kod HTML do funkcji wyświetlania. Trochę tego dużo tam
            ale no pola nie są jednolite niestety. ( w przyszłości do zmiany). -->
        <?php $functions->displayLeftOffert($id, $type) ?>
        <div class="col-md-7">
            <img src="<?php echo $info['img_src'] ?>" class="img-thumbnail">
            <br/>
            <?php $functions->commentsCount($id, $type) ?> <span class="glyphicon glyphicon-comment"
                                                                 data-toggle="tooltip"
                                                                 data-placement="right" title="Komentarzy"></span>
            <?php $functions->rateAverage($id, $type) ?> <span class="glyphicon glyphicon-star" data-toggle="tooltip"
                                                               data-placement="right" title="Ocena"></span></p>
            <br/>
            <div class="form-group">
            <h4><?php echo $info['description'] ?></h4>
            </div>
            <br>
            <form method='POST' action="<?php $functions->setComment($id, $type) ?>">
                <div class="form-group">
                    <div class="card-box">
                        <div class="row">
                            <div class="col-md-10">
                                <label for="comment">Komentarz:</label>
                                <textarea name="comment" class="form-control" rows="5" id="comment"></textarea>
                            </div>
                            <div class="col-md-2">
                                <p>Ocena: &nbsp;<span class="glyphicon glyphicon-star" data-toggle="tooltip"
                                                      data-placement="right" title="Ocena"></span></p>
                                <select class="form-control" id="sel1" name="sell">
                                    <option selected="selected">5</option>
                                    <option>4</option>
                                    <option>3</option>
                                    <option>2</option>
                                    <option>1</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-default" style="margin-left: 85%;">Opublikuj</button>
                        </div>
                    </div>
                </div>
            </form>
            <div class="form-group">
                <div class="card-box">
                    <?php
                    if (!is_null($commentRow)) {
                        foreach ($commentRow as $comment) {
                            echo '<div class="row">';
                            echo '<div class="col-md-10">';
                            echo '<p>' . $comment['review'] . '</p>';
                            echo '</div>';
                            echo '<div class="col-md-2">';
                            echo '<p>' . $comment['rate'] . ' / 10 &nbsp;<span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>';
                            echo '</div>';
                            echo '</div></br>';
                        }
                    } ?>
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
    <div class="col-md-3"></div>
</div>
<?php
$functions->displayFooter('kontakt.php');
?>
</body>
</html>
