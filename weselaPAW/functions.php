<?php

class functions
{
    public $login;
    public $password;
    public $conn;
    public $db;

    public function __construct($conn_type)
    {
        if ($conn_type == 'PDO') {
            $this->db = new PDO('mysql:host=localhost;dbname=weddings_db;charset=utf8', 'root', '');
        }
        if ($conn_type == 'mysqli') {
            $this->conn = new mysqli ('localhost', 'root', '', 'weddings_db');
        }
    }

    public function login($login, $password)
    {
        $check_login = $this->db->prepare("SELECT * FROM users WHERE login = :login and password = :pass");
        $check_login->bindParam(':login', $login, PDO::PARAM_STR);
        $check_login->bindParam(':pass', $password, PDO::PARAM_STR);
        $check_login->execute();
        $row = $check_login->fetch();
        if ($row['login'] == $login && $row['password'] == $password) {
            $user_id = $row['id'];
            session_start();
            $_SESSION['login'] = $login;
            $_SESSION['user_id'] = $user_id;
            header('Location:log_ok.php');
            exit;
        } else {
            echo 'Wpisano niepoprawne dane';
        }
    }

    public function check_reg()
    {
        $check_login = $this->db->prepare("SELECT COUNT(id) AS liczba FROM users WHERE login = :login");
        $check_login->bindParam(':login', $login, PDO::PARAM_STR);
        $check_login->execute();
        $row = $check_login->fetch();

        $errors = "";
        if ($row['liczba'] > 0) {
            $errors .= 'Login jest zajęty</br>';
        }
    }

    public function register()
    {
        $login = trim($_POST['reg_login']);
        $password1 = trim($_POST['reg_pass1']);
        $password1 = md5($password1);
        $email = trim($_POST['reg_email']);
        $name = trim($_POST['reg_name']);
        $lastname = trim($_POST['reg_lastname']);
        $gender = trim($_POST['underwear']);
        $add = $this->db->prepare('INSERT INTO users (id, login, password, email, first_name, last_name, gender, admin) VALUES (null, :login, :password, :email, :firstname, :lastname, :gender, 0)');
        $add->bindParam(':login', $login, PDO::PARAM_STR);
        $add->bindParam(':password', $password1, PDO::PARAM_STR);
        $add->bindParam(':email', $email, PDO::PARAM_STR);
        $add->bindParam(':firstname', $name, PDO::PARAM_STR);
        $add->bindParam(':lastname', $lastname, PDO::PARAM_STR);
        $add->bindParam(':gender', $gender, PDO::PARAM_STR);
        $add->execute();
        echo 'Utworzono konto ' . $login;

        session_start();
        $_SESSION['login'] = $login;
        header('Location:reg_ok.php');
        exit;
    }

    // TODO check if works and finish
    public function getComment()
    {
        $idMusic = $_GET['id'];
        $stmt = $this ->db->prepare('SELECT * FROM music_reviews WHERE music_id = :idMusic ORDER BY id DESC');
        $stmt -> bindParam(':idMusic', $idMusic, PDO::PARAM_STR);
        $stmt -> execute();

        while($row = $stmt->fetch()){

            echo '<div class="row">
                      <div class="col-md-3" style="border-right: 1px solid #eee;">
                        <button type="button" class="btn btn-default btn-sm">
                          <span class="glyphicon glyphicon-user"></span>User 
                        </button>
                        <h4>Aleksander Kędzior</h4>
                      </div>
                      <div class="col-md-7">';
            echo '<p>'.$row['review'].'</p>';
            echo '</div> 
                      <div class="col-md-2">  
                       <p>'.$row['rate'].'/5 &nbsp;<span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>       
                      </div>              
                        </div> </br>';
        }
    }

    public function rateAverage()
    {
        $idMusic = $_GET['id'];
        $stmt = $this ->db->prepare('SELECT ROUND(AVG(rate),1) average FROM music_reviews WHERE music_id = :idMusic');
        $stmt -> bindParam(':idMusic', $idMusic, PDO::PARAM_STR);
        $stmt -> execute();
        $row = $stmt->fetch();
        echo $row['average'];
    }

    public function setComment()
    {
        if(isset($_POST['comment']) && isset($_POST['sell'])){
            $comment = $_POST['comment'];
            $stars = $_POST['sell'];
            $idArtist = $_GET['id'];

            $set = $this->db->prepare('INSERT INTO music_reviews (id, music_id, review, rate) VALUES (null, :music_id, :review, :rate)');
            $set->bindParam(':music_id', $idArtist, PDO::PARAM_INT);
            $set->bindParam(':review', $comment, PDO::PARAM_STR);
            $set->bindParam(':rate', $stars, PDO::PARAM_INT);
            $set->execute();

            header('Location: /offert.php?'.$idArtist);
        }
    }

    public function commentsCount()
    {
        $idMusic = $_GET['id'];
        $stmt = $this ->db->prepare('SELECT COUNT(*) counter FROM music_reviews WHERE music_id = :idMusic');
        $stmt -> bindParam(':idMusic', $idMusic, PDO::PARAM_STR);
        $stmt -> execute();
        $row = $stmt->fetch();
        echo $row['counter'];
    }

    public function salary()
    {
        $idMusic = $_GET['id'];
        $stmt = $this ->db->prepare('SELECT * FROM music_details WHERE id = :idMusic');
        $stmt -> bindParam(':idMusic', $idMusic, PDO::PARAM_STR);
        $stmt -> execute();
        $row = $stmt->fetch();
        echo $row['price_flat'];
    }

    public function displayMetaTags()
    {
        echo '<meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <link rel="stylesheet" href="../style.css" type="text/css"/>';
    }

    public function displayTopNav($loginPath, $indexPath)
    {
        echo '<nav class="navbar navbar-default">
        <div class="container"><div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="' . $indexPath . '">Tu będzie logo</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="' . $loginPath . '">Logowanie/Rejestracja</a></li>
            </ul>
        </div></div></nav>';
    }

    public function displayFooter()
    {
        echo '<footer class="container-fluid bg-4 text-center" style="width: 100%; padding: 20px;">
        <div class="row"><div class="col-md-4"></div><div class="col-md-4">
            <p>Projekt zaliczeniowy</p>
        </div><div class="col-md-4">
            <a href="#" class="fa fa-facebook-square social-size"></a>
            <a href="#" class="fa fa-twitter-square social-size"></a>
            <a href="#" class="fa fa-google-plus-square social-size"></a>
            <a href="#" class="fa fa-instagram social-size"></a>
        </div></div></footer>';
    }

    public function displayFormEditReview ($type, $id, $review, $rate)
    {
        echo '<form action="/paw/admin/edit.php" style="padding: 20px;">';
        echo '<input type="text" name="type" value="' . $type . '" hidden>';
        echo '<input type="text" name="id" value="' . $id . '" hidden>';
        echo '<input type="text" name="edit" value="true" hidden>';
        echo '<div class="form-group">';
        echo '<label>Komentarz</label>';
        echo '<input class="form-control" type="text" name="review" maxlength="512" value="' . $review . '"></div>';
        echo '<label>Ocena</label>';
        echo '<input class="form-control" type="number" min="1" max="10" name="rate" value="' . $rate . '"></div>';
        echo '<br/><input type=submit class="btn btn-success" style="width:100%" value="Dodaj zmieniony rekord"></form>';
    }

    public function displayFormAddEditCoupleTransportDetails($type, $id, $action, $type_name, $description, $price,
                                                             $state, $city, $street, $path){
        $this->displayFormStart($type, $id, $action);

        echo '<div class="form-group">';
        echo '<label>Typ</label>';
        echo '<input class="form-control" type="text" name="typeQ" maxlength="64" value="' . $type_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Opis</label>';
        echo '<input class="form-control" type="text" name="description" maxlength="512" value="' . $description . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena</label>';
        echo '<input class="form-control" type="number" name="price" min="0" value=" max="1000000"' . $price . '"></div>';

        $this->displayAddressInputs($state, $city, $street);
        $this->displayImagePath($path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditGuestTransportDetails($type, $id, $action, $type_name, $description, $price_flat,
                                                            $price_person, $person, $state, $city, $street, $path){
        $this->displayFormStart($type, $id, $action);

        echo '<div class="form-group">';
        echo '<label>Typ</label>';
        echo '<input class="form-control" type="text" name="typeQ" maxlength="64" value="' . $type_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Opis</label>';
        echo '<input class="form-control" type="text" name="description" maxlength="512" value="' . $description . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena (pojazd)</label>';
        echo '<input class="form-control" type="number" name="price_flat" min="0" max="1000000" value="' . $price_flat . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena (za osobę)</label>';
        echo '<input class="form-control" type="number" name="price_per_person" min="0" max="1000000" value="' . $price_person . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Ilość osób (na pojazd)</label>';
        echo '<input class="form-control" type="number" name="person_amount_per_unit" min="0" max="1000000" value="' . $person . '"></div>';

        $this->displayAddressInputs($state, $city, $street);
        $this->displayImagePath($path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditConsultantDetails($type, $id, $action, $first_name, $last_name, $description,
                                                        $price, $state, $city, $street, $path){
        $this->displayFormStart($type, $id, $action);

        echo '<div class="form-group">';
        echo '<label>Imię</label>';
        echo '<input class="form-control" type="text" name="first_name" maxlength="32" value="' . $first_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Nazwisko</label>';
        echo '<input class="form-control" type="text" name="last_name" maxlength="32" value="' . $last_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Opis</label>';
        echo '<input class="form-control" type="text" name="description" maxlength="512" value="' . $description . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena</label>';
        echo '<input class="form-control" type="number" name="price" min="0" max="1000000" value="' . $price . '"></div>';

        $this->displayAddressInputs($state, $city, $street);
        $this->displayImagePath($path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditPhotoDetails($type, $id, $action, $first_name, $last_name, $company_name, $description,
                                                   $photo_price, $video_price, $drone_price, $state, $city, $street, $path){
        $this->displayFormStart($type, $id, $action);

        echo '<div class="form-group">';
        echo '<label>Imię</label>';
        echo '<input class="form-control" type="text" name="first_name" maxlength="32" value="' . $first_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Nazwisko</label>';
        echo '<input class="form-control" type="text" name="last_name" maxlength="32" value="' . $last_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Firma</label>';
        echo '<input class="form-control" type="text" name="company_name" maxlength="64" value="' . $company_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Opis</label>';
        echo '<input class="form-control" type="text" name="description" maxlength="512" value="' . $description . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Zdjęcia - cena</label>';
        echo '<input class="form-control" type="text" name="photo_price" min="0" max="1000000" value="' . $photo_price . '">';
        echo '<small class="form-text text-muted">Pozostawienie pola pustego lub wpisanie 0 oznacza brak wykonywane usługi.</small></div>';

        echo '<div class="form-group">';
        echo '<label>Wideo - cena</label>';
        echo '<input class="form-control" type="text" name="video_price" min="0" max="1000000" value="' . $video_price . '">';
        echo '<small class="form-text text-muted">Pozostawienie pola pustego lub wpisanie 0 oznacza brak wykonywane usługi.</small></div>';

        echo '<div class="form-group">';
        echo '<label>Dron - cena</label>';
        echo '<input class="form-control" type="text" name="drone_price" min="0" max="1000000" value="' . $drone_price . '">';
        echo '<small class="form-text text-muted">Pozostawienie pola pustego lub wpisanie 0 oznacza brak wykonywane usługi.</small></div>';

        $this->displayAddressInputs($state, $city, $street);
        $this->displayImagePath($path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditMusicDetails($type, $id, $action, $type_name, $name, $description, $price_flat,
                                                   $price_person,$state, $city, $street, $path){
        $this->displayFormStart($type, $id, $action);

        echo '<div class="form-group">';
        echo '<label>Typ</label>';
        echo '<input class="form-control" type="text" name="typeQ" maxlength="64" value="' . $type_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Nazwa</label>';
        echo '<input class="form-control" type="text" name="name" maxlength="64" value="' . $name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Opis</label>';
        echo '<input class="form-control" type="text" name="description" maxlength="512" value="' . $description . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena</label>';
        echo '<input class="form-control" type="number" name="price_flat" min="0" max="1000000" value="' . $price_flat . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena (za osobę)</label>';
        echo '<input class="form-control" type="number" name="price_per_person" min="0" max="1000000" value="' . $price_person . '"></div>';

        $this->displayAddressInputs($state, $city, $street);
        $this->displayImagePath($path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditTypeDetails($type, $id, $action, $type_name, $description, $state, $city, $street, $path){
        $this->displayFormStart($type, $id, $action);

        echo '<div class="form-group">';
        echo '<label>Typ</label>';
        echo '<input class="form-control" type="text" name="typeQ" maxlength="128" value="' . $type_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Opis</label>';
        echo '<input class="form-control" type="text" name="description" maxlength="512" value="' . $description . '"></div>';

        $this->displayAddressInputs($state, $city, $street);
        $this->displayImagePath($path);
        $this->displayFormEnd($action);
    }

    public function displayFormAddEditPlaceDetails($type, $id, $action, $type_name, $description, $price_flat, $price_person,
                                                   $person, $state, $city, $street, $path){
        $this->displayFormStart($type, $id, $action);

        echo '<div class="form-group">';
        echo '<label>Typ</label>';
        echo '<input class="form-control" type="text" name="typeQ" maxlength="64" value="' . $type_name . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Opis</label>';
        echo '<input class="form-control" type="text" name="description" maxlength="512" value="' . $description . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena</label>';
        echo '<input class="form-control" type="number" name="price_flat" min="0" max="1000000" value="' . $price_flat . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Cena (za osobę)</label>';
        echo '<input class="form-control" type="number" name="price_per_person" min="0" max="1000000" value="' . $price_person . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Maksymalna ilość gości</label>';
        echo '<input class="form-control" type="number" name="max_guests" min="0" max="1000000" value="' . $person . '"></div>';

        $this->displayAddressInputs($state, $city, $street);
        $this->displayImagePath($path);
        $this->displayFormEnd($action);
    }

    private function displayAddressInputs($state, $city, $street){
        echo '<div class="form-group">';
        echo '<label>Województwo</label>';
        echo '<input class="form-control" type="text" name="state" maxlength="128" value="' . $state . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Miasto</label>';
        echo '<input class="form-control" type="text" name="city" maxlength="128" value="' . $city . '"></div>';

        echo '<div class="form-group">';
        echo '<label>Ulica</label>';
        echo '<input class="form-control" type="text" name="street" maxlength="128" value="' . $street . '"></div>';
    }

    private function displayImagePath($path){
        echo '<div class="form-group">';
        echo '<label>Lokalizacja zdjęcia na serwerze</label>';
        echo '<input class="form-control" type="text" name="img_src" maxlength="128" value="' . $path . '"></div>';
    }

    private function displayFormStart($type, $id, $action){
        echo '<form action="/paw/admin/' . $action . '.php" style="padding: 20px;">';
        echo '<input type="text" name="type" value="' . $type . '" hidden>';
        echo '<input type="text" name="id" value="' . $id . '" hidden>';
        echo '<input type="text" name="' . $action . '" value="true" hidden>';
    }

    private function displayFormEnd($action){
        $edit = "";
        if ($action == "edit"){
            $edit = 'zmieniony ';
        }
        echo '<br/><input type=submit class="btn btn-success" style="width:100%" value="Dodaj ' . $edit . 'rekord"></form>';
    }
}

?>