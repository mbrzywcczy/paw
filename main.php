<?php require('weselaPAW/functions.php');
session_start();
$db = new functions('PDO');
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Wesela</title>
    <?php
    $db->displayMetaTags('style.css');
    ?>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
</head>
<body>

<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Tu będzie logo</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Strona główna</a></li>
                <li><a href="create_offert.html">Kreator ofert</a></li>
                <li><a href="#">Kontakt</a></li>
                <li><a href="#">Panel</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluidy bg-1 text-center">
    <h2 class="liczba">Ilość ogłoszeń: #liczba</h2>
</div>
<div class="container-fluid bg-3 text-center">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3" style="border-right: 1px solid #eee;">
            <h2>Kategoria</h2><hr>
            <span class="glyphicon glyphicon-tags"></span>&nbsp;
            <b>Kategorie</b>
            </br>
            <small>Zaznacz opcje które Cię interesują</small>
            </br></br>
            <div class="checkbox">
                <label><input type="checkbox" value="">Option 1</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" value="">Option 2</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" value="">Option 3</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" value="">Option 5</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" value="">Option 6</label>
            </div>
            <hr>
            <span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>&nbsp;
            <b>Kategorie dodatkowe</b>
            </br>
            <small>Zaznacz opcje które Cię interesują</small>
            </br></br>
            <div class="checkbox">
                <label><input type="checkbox" value="">Option 1</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" value="">Option 2</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" value="">Option 3</label>
            </div>
            </br>
            <button type="button" class="btn btn-default" style="float: right;">Szukaj</button>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <select class="form-control" id="sel1">
                    <option>Filtr</option>
                    <option>Cena rosnąco</option>
                    <option>Cena malejąco</option>
                    <option>Ocena rosnąco</option>
                    <option>Ocena malejąco</option>
                </select>
            </div><br><br>
            <div class="form-group"> <!-- #1 -->
                <div class="card-box">
                    <div class="row">
                        <div class="col-md-3" style="border-right: 1px solid #eee;">
                            <img src="https://images.unsplash.com/photo-1511217997341-fed0a62b3e28?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D" class="img-circle">
                        </div>
                        <div class="col-md-7">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur sit amet leo id bibendum. Quisque sit amet dapibus metus, non imperdiet enim. In hac habitasse platea dictumst.
                        </div>
                        <div class="col-md-2">
                            <p>85 <span class="glyphicon glyphicon-heart" data-toggle="tooltip" data-placement="right" title="Polubień"></span></p>
                            <p>48 <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="Komentarzy"></span></p>
                            <p>4,6 <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>
                        </div>
                    </div>
                    <a href="offert.php">
                        <button type="button" class="btn btn-default" style="margin-left: 70%;">Zobacz</button>
                    </a>
                </div>
            </div>
            <div class="form-group"> <!-- #2 -->
                <div class="card-box">
                    <div class="row">
                        <div class="col-md-3" style="border-right: 1px solid #eee;">
                            <img src="https://images.unsplash.com/photo-1462446892934-2c17979efefd?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D" class="img-circle">
                        </div>
                        <div class="col-md-7">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur sit amet leo id bibendum. Quisque sit amet dapibus metus, non imperdiet enim. In hac habitasse platea dictumst.
                        </div>
                        <div class="col-md-2">
                            <p>1125 <span class="glyphicon glyphicon-heart" data-toggle="tooltip" data-placement="right" title="Polubień"></span></p>
                            <p>67 <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="Komentarzy"></span></p>
                            <p>4,7 <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default" style="margin-left: 70%;">Zobacz</button>
                </div>
            </div>
            <div class="form-group"> <!-- #3 -->
                <div class="card-box">
                    <div class="row">
                        <div class="col-md-3" style="border-right: 1px solid #eee;">
                            <img src="https://images.unsplash.com/photo-1511795409834-ef04bbd61622?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D" class="img-circle">
                        </div>
                        <div class="col-md-7">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur sit amet leo id bibendum. Quisque sit amet dapibus metus, non imperdiet enim. In hac habitasse platea dictumst.
                        </div>
                        <div class="col-md-2">
                            <p>21 <span class="glyphicon glyphicon-heart" data-toggle="tooltip" data-placement="right" title="Polubień"></span></p>
                            <p>3 <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="Komentarzy"></span></p>
                            <p>3,9 <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default" style="margin-left: 70%;">Zobacz</button>
                </div>
            </div>
            <div class="form-group"> <!-- #4 -->
                <div class="card-box">
                    <div class="row">
                        <div class="col-md-3" style="border-right: 1px solid #eee;">
                            <img src="https://images.unsplash.com/photo-1415201364774-f6f0bb35f28f?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D" class="img-circle">
                        </div>
                        <div class="col-md-7">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur sit amet leo id bibendum. Quisque sit amet dapibus metus, non imperdiet enim. In hac habitasse platea dictumst.
                        </div>
                        <div class="col-md-2">
                            <p>28 <span class="glyphicon glyphicon-heart" data-toggle="tooltip" data-placement="right" title="Polubień"></span></p>
                            <p>31 <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="Komentarzy"></span></p>
                            <p>3,1 <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default" style="margin-left: 70%;">Zobacz</button>
                </div>
            </div>
            <div class="form-group"> <!-- #5 -->
                <div class="card-box">
                    <div class="row">
                        <div class="col-md-3" style="border-right: 1px solid #eee;">
                            <img src="https://images.unsplash.com/photo-1498050842100-717f08672ac6?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D" class="img-circle">
                        </div>
                        <div class="col-md-7">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur sit amet leo id bibendum. Quisque sit amet dapibus metus, non imperdiet enim. In hac habitasse platea dictumst.
                        </div>
                        <div class="col-md-2">
                            <p>61 <span class="glyphicon glyphicon-heart" data-toggle="tooltip" data-placement="right" title="Polubień"></span></p>
                            <p>23 <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="Komentarzy"></span></p>
                            <p>1,9 <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default" style="margin-left: 70%;">Zobacz</button>
                </div>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
<footer class="container-fluid bg-4 text-center">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <p>Projekt zaliczeniowy</p>
        </div>
        <div class="col-md-4">
            <a href="#" class="fa fa-facebook-square social-size"></a>
            <a href="#" class="fa fa-twitter-square social-size"></a>
            <a href="#" class="fa fa-google-plus-square social-size"></a>
            <a href="#" class="fa fa-instagram social-size"></a>
        </div>
    </div>
</footer>
</body>
</html>
