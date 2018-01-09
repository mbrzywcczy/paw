<?php require('weselaPAW/functions.php');
session_start();
$functions = new functions('PDO');
$id = $_GET['id'];
$type = $_GET['type'];

if($type == 'music_details')
{
    $info = $functions->artistInfo($id);
}elseif ($type == 'consultant_details'){
    $info = $functions->consultantInfo($id);
}elseif ($type == 'couple_transport_details'){
    $info = $functions->coupleTransportInfo($id);
}elseif ($type == 'guests_transport_details'){
    $info = $functions->guestTransportInfo($id);
}elseif ($type == 'photo_detail'){
    $info = $functions->photoInfo($id);
}elseif ($type == 'place_details'){
    $info = $functions->placeInfo($id);
}elseif ($type == 'type_details'){
    $info = $functions->typeInfo($id);
}else{
    echo 'brak danych';
}

$commentRow = $functions->getComment($id,$type);

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
        <?php $functions->displayLeftOffert($id,$type)?>
        <div class="col-md-5">
            <h1><?php echo $info['description'] ?></h1>
            <?php $functions->commentsCount($id,$type) ?> <span class="glyphicon glyphicon-comment" data-toggle="tooltip"
                                                       data-placement="right" title="Komentarzy"></span>
            <?php $functions->rateAverage($id,$type) ?> <span class="glyphicon glyphicon-star" data-toggle="tooltip"
                                                     data-placement="right" title="Ocena"></span></p>
            <img src="<?php echo $info['img_src'] ?>"
                 class="img-thumbnail">
            <br><br>
            <div class="form-group">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in sapien mollis, tincidunt augue vel,
                dignissim quam. Nunc non faucibus nisl, sed congue dolor. Vivamus volutpat euismod dolor, eget fermentum
                dui. Curabitur quis sagittis quam, eget tincidunt arcu. Phasellus iaculis tortor pellentesque tristique
                gravida. Cras a diam id velit tincidunt fermentum nec et purus. Ut ipsum orci, blandit a tempus id,
                faucibus vel neque. Donec at volutpat sem. Donec nec hendrerit elit. Nullam eu felis eget lacus
                consectetur ornare et vulputate erat. Praesent egestas erat mauris, at ultricies justo sagittis in.
                Fusce sit amet feugiat lectus. Quisque porta, velit in fermentum dapibus, sapien arcu accumsan dui, at
                aliquam magna augue ut turpis. Sed lacinia malesuada enim, vitae tempor purus. Donec consectetur, urna
                sit amet fringilla cursus, lorem augue vestibulum enim, ac rutrum erat mauris fringilla nulla.

            </div>
            <br>
            <form method='POST' action="<?php $functions->setComment($id,$type) ?>">
                <div class="form-group">
                    <div class="card-box">
                        <div class="row">
                            <div class="col-md-3" style="border-right: 1px solid #eee;">
                                <button type="button" class="btn btn-default btn-sm">
                                    <span class="glyphicon glyphicon-user"></span>User
                                </button>
                                <h4>Mateusz Pyka</h4>
                            </div>
                            <div class="col-md-7">
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
                    if(!is_null($commentRow)) {
                        foreach ($commentRow as $comment) {
                            echo '<div class="row">
                        <div class="col-md-3" style="border-right: 1px solid #eee;">
                            <button type="button" class="btn btn-default btn-sm">
                                <span class="glyphicon glyphicon-user"></span>User
                            </button>
                            <h4>Aleksander Kędzior</h4>
                        </div>
                        <div class="col-md-7">';
                            echo '<p>' . $comment['review'] . '</p>';
                            echo '</div>
                        <div class="col-md-2">
                            <p>' . $comment['rate'] . '/5 &nbsp;<span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>
                        </div>
                    </div> </br>';
                        }
                    }?>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3"></div>
</div>
<?php
$functions->displayFooter('kontakt.php');
?>
</body>
</html>
