<!DOCTYPE html>
<?php require ('weselaPAW/functions.php');
session_start();
$db = new functions('PDO');
?>
<html lang="pl">
<head>
  <title>Wesela</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="style.css" type="text/css"/>
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
        <li><a href="main.html">Strona główna</a></li>
        <li><a href="#">Kreator ofert</a></li>
        <li><a href="#">Kontakt</a></li>
        <li><a href="#">Panel</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid bg-3 text-center">
  <div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-3" style="border-right: 1px solid #eee;">
      <h2>Muzyk</h2><hr>
      <span class="glyphicon glyphicon-tags"></span>&nbsp;
      <b>DJ Trolo</b>
      </br>
      <small>Najważniejsze informacje</small>
      <hr>
      <div class="form-group">
        <span class="glyphicon glyphicon-asterisk"></span>&nbsp;
        <b>Województwo</b>
        <p>Śląskie</p>
      </div>
      <div class="form-group">
        <span class="glyphicon glyphicon-home"></span>&nbsp;
        <b>Miejscowość</b>
        <p>Katowice</p>
      </div>
      <div class="form-group">
        <span class="glyphicon glyphicon-usd"></span>&nbsp;
        <b>Wynagrodzenie</b>
        <p><?php $db->salary()
          ?> zł</p>
      </div>
      <div class="form-group">
        <span class="glyphicon glyphicon-time"></span>&nbsp;
        <b>Koniec pracy</b>
        <p>do 05:00</p>
      </div>
    </div>
    <div class="col-md-5">
      <h1>DJ Trolo</h1>
        <?php $db->commentsCount()?> <span class="glyphicon glyphicon-comment" data-toggle="tooltip" data-placement="right" title="Komentarzy"></span>
        <?php $db->rateAverage()?> <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>

      <img src="https://images.unsplash.com/photo-1511217997341-fed0a62b3e28?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D" class="img-thumbnail">
      <br><br>
      <div class="form-group">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in sapien mollis, tincidunt augue vel, dignissim quam. Nunc non faucibus nisl, sed congue dolor. Vivamus volutpat euismod dolor, eget fermentum dui. Curabitur quis sagittis quam, eget tincidunt arcu. Phasellus iaculis tortor pellentesque tristique gravida. Cras a diam id velit tincidunt fermentum nec et purus. Ut ipsum orci, blandit a tempus id, faucibus vel neque. Donec at volutpat sem. Donec nec hendrerit elit. Nullam eu felis eget lacus consectetur ornare et vulputate erat. Praesent egestas erat mauris, at ultricies justo sagittis in. Fusce sit amet feugiat lectus. Quisque porta, velit in fermentum dapibus, sapien arcu accumsan dui, at aliquam magna augue ut turpis. Sed lacinia malesuada enim, vitae tempor purus. Donec consectetur, urna sit amet fringilla cursus, lorem augue vestibulum enim, ac rutrum erat mauris fringilla nulla.

        Sed et lectus risus. Fusce pharetra hendrerit metus, nec ornare nibh ullamcorper non. Pellentesque eget ultricies elit. In vehicula lectus at urna elementum consectetur. Aliquam orci mauris, posuere a tortor euismod, pharetra mollis eros. Etiam sit amet urna id nisl porttitor auctor id vitae nisl. Donec id massa quam. Ut vel erat eu ligula dignissim placerat id non metus.

        Nam non convallis neque, vel elementum dolor. Pellentesque vel facilisis dui. Suspendisse facilisis vestibulum turpis in ornare. Duis pharetra ex non lorem auctor eleifend. Aliquam erat volutpat. Suspendisse non mattis erat. Aenean sit amet urna ac nisi elementum finibus. Suspendisse interdum, velit nec maximus semper, lacus risus maximus velit, non imperdiet odio urna congue leo.

        Fusce convallis gravida elementum. In sodales, tellus nec porta tempus, mi est dictum leo, nec aliquet neque nunc auctor turpis. Suspendisse blandit neque id velit lacinia mattis. Sed dui erat, iaculis sit amet ante at, lacinia ullamcorper urna. Aliquam eget consectetur velit. Aenean eu dictum lectus. Proin porttitor efficitur sodales. Nullam dolor libero, aliquet in tortor in, venenatis tempus odio. Nulla quam tortor, egestas suscipit ultricies ac, iaculis ac justo. Sed in fringilla lorem, eu volutpat nibh. Nullam ut nisi tempor, pharetra ex id, semper risus. Nam auctor nisi ut sem dapibus vehicula. Fusce quis maximus ligula.
      </div>
      <br>
        <form method = 'POST' action="<?php $db->setComment() ?>">
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
                  <p>Ocena: &nbsp;<span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>
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
          <?php $db->getComment();?>
        </div>
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