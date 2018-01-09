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
            //$user_id = $row['id'];
            session_start();
            $_SESSION['login'] = $login;
            $_SESSION['user_id'] = $row['id'];
            $_SESSION['admin'] = $row['admin'];
            header('Location:../index.php');
            exit;
        } else {
            header('Location: ../login.php?err=t');
            exit;
        }
    }

    public function register($login, $password1, $email, $name, $lastname, $gender)
    {
        $register = $this->db->prepare('INSERT INTO users (login, password, email, first_name, last_name, gender, 
            admin) VALUES (:login, :password, :email, :firstname, :lastname, :gender, 1)');
        $register->bindParam(':login', $login, PDO::PARAM_STR);
        $register->bindParam(':password', $password1, PDO::PARAM_STR);
        $register->bindParam(':email', $email, PDO::PARAM_STR);
        $register->bindParam(':firstname', $name, PDO::PARAM_STR);
        $register->bindParam(':lastname', $lastname, PDO::PARAM_STR);
        $register->bindParam(':gender', $gender, PDO::PARAM_STR);
        $register->execute();

        header('Location:../index.php?reg=ok');
        exit;
    }

    public function check_reg($login)
    {
        $check_login = $this->db->prepare("SELECT COUNT(id) AS liczba FROM users WHERE login = :login");
        $check_login->bindParam(':login', $login, PDO::PARAM_STR);
        $check_login->execute();
        $row = $check_login->fetch();

        if ($row['liczba'] > 0) {
            return 'reg_log=err';
        }
        return "";
    }

    public function checkIfUserIsAdmin()
    {
        session_start();
        if (!isset($_SESSION['admin']) || $_SESSION['admin'] != 0) {
            header('Location: /paw');
            exit;
        }
    }

    public function getEmail($username){
        $check_login = $this->db->prepare("SELECT email FROM users WHERE login = :login");
        $check_login->bindParam(':login', $username, PDO::PARAM_STR);
        $check_login->execute();
        $row = $check_login->fetch();
        if (isset($row[0])){
            return $row[0];
        }
        return "";
    }

    public function checkIfUserIsLogged()
    {
        session_start();
        if (isset($_SESSION['login'])) {
            return true;
        }
        return false;
    }

    public function getComment($id, $type)
    {
        if($type == 'music_details'){
            $stmt = $this->db->prepare('SELECT * FROM music_reviews WHERE music_id = :id ORDER BY id DESC');
        }elseif($type == 'consultant_details')
        {
            $stmt = $this->db->prepare('SELECT * FROM consultant_reviews WHERE consultant_id = :id ORDER BY id DESC');
        }elseif($type == 'couple_transport_details')
        {
            $stmt = $this->db->prepare('SELECT * FROM couple_transport_reviews WHERE couple_transport_id = :id ORDER BY id DESC');
        }elseif($type == 'guest_transport_details')
        {
            $stmt = $this->db->prepare('SELECT * FROM guest_transport_reviews WHERE guest_transport_id = :id ORDER BY id DESC');
        }elseif($type == 'photo_detail')
        {
            $stmt = $this->db->prepare('SELECT * FROM photo_reviews WHERE photo_id = :id ORDER BY id DESC');
        }elseif($type == 'place_details')
        {
            $stmt = $this->db->prepare('SELECT * FROM place_reviews WHERE place_id = :id ORDER BY id DESC');
        }elseif($type == 'type_details')
        {
            $stmt = $this->db->prepare('SELECT * FROM type_reviews WHERE type_id = :id ORDER BY id DESC');
        }else
        {
            return null;
        }
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        $rows = $stmt->fetchAll();
        return $rows;
    }

    public function rateAverage($id,$type)
    {
        if($type == 'music_details'){
            $stmt = $this->db->prepare('SELECT ROUND(AVG(rate),1) average FROM music_reviews WHERE music_id = :id');
        }elseif($type == 'consultant_details')
        {
            $stmt = $this->db->prepare('SELECT ROUND(AVG(rate),1) average FROM consultant_reviews WHERE consultant_id = :id');
        }elseif($type == 'couple_transport_details')
        {
            $stmt = $this->db->prepare('SELECT ROUND(AVG(rate),1) average FROM couple_transport_reviews WHERE couple_transport_id = :id');
        }elseif($type == 'guest_transport_details')
        {
            $stmt = $this->db->prepare('SELECT ROUND(AVG(rate),1) average FROM guest_transport_reviews WHERE guest_transport_id = :id');
        }elseif($type == 'photo_detail')
        {
            $stmt = $this->db->prepare('SELECT ROUND(AVG(rate),1) average FROM photo_reviews WHERE photo_id = :id');
        }elseif($type == 'place_details')
        {
            $stmt = $this->db->prepare('SELECT ROUND(AVG(rate),1) average FROM place_reviews WHERE place_id = :id');
        }elseif($type == 'type_details')
        {
            $stmt = $this->db->prepare('SELECT ROUND(AVG(rate),1) average FROM type_reviews WHERE type_id = :id');
        }else
        {
            $stmt = null;
        }
        if(!is_null($stmt))
        {
            $stmt->bindParam(':id', $id, PDO::PARAM_STR);
            $stmt->execute();
            $row = $stmt->fetch();
            echo $row['average'];
        }else
        {
            echo 'Brak ocen';
        }


    }
    public function setComment($id,$type)
    {
        if (isset($_POST['comment']) && isset($_POST['sell'])) {
            $comment = $_POST['comment'];
            $stars = $_POST['sell'];

            if($type == 'music_details'){
                $stmt = $this->db->prepare('INSERT INTO music_reviews (id, music_id, review, rate) VALUES (null, :id, :review, :rate)');
            }elseif($type == 'consultant_details')
            {
                $stmt = $this->db->prepare('INSERT INTO consultant_reviews (id, consultant_id, review, rate) VALUES (null, :id, :review, :rate)');
            }elseif($type == 'couple_transport_details')
            {
                $stmt = $this->db->prepare('INSERT INTO couple_transport_reviews (id, couple_transport_id, review, rate) VALUES (null, :id, :review, :rate)');
            }elseif($type == 'guest_transport_details')
            {
                $stmt = $this->db->prepare('INSERT INTO guest_transport_reviews (id, guest_transport_id, review, rate) VALUES (null, :id, :review, :rate)');
            }elseif($type == 'photo_detail')
            {
                $stmt = $this->db->prepare('INSERT INTO photo_reviews (id, photo_id, review, rate) VALUES (null, :id, :review, :rate)');
            }elseif($type == 'place_details')
            {
                $stmt = $this->db->prepare('INSERT INTO place_reviews (id, place_id, review, rate) VALUES (null, :id, :review, :rate)');
            }elseif($type == 'type_details')
            {
                $stmt = $this->db->prepare('INSERT INTO type_reviews (id, type_id, review, rate) VALUES (null, :id, :review, :rate)');
            }else
            {
                $stmt = null;
            }
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->bindParam(':review', $comment, PDO::PARAM_STR);
            $stmt->bindParam(':rate', $stars, PDO::PARAM_INT);
            $stmt->execute();
            header('Location: ../paw/offert.php?type=' . $type .'&id='.$id);
        }
    }

    public function commentsCount($id,$type)
    {
        if($type == 'music_details'){
            $stmt = $this->db->prepare('SELECT COUNT(*) counter FROM music_reviews WHERE music_id = :id');
        }elseif($type == 'consultant_details')
        {
            $stmt = $this->db->prepare('SELECT COUNT(*) counter FROM consultant_reviews WHERE consultant_id = :id');
        }elseif($type == 'couple_transport_details')
        {
            $stmt = $this->db->prepare('SELECT COUNT(*) counter FROM couple_transport_reviews WHERE couple_transport_id = :id');
        }elseif($type == 'guest_transport_details')
        {
            $stmt = $this->db->prepare('SELECT COUNT(*) counter FROM guest_transport_reviews WHERE guest_transport_id = :id');
        }elseif($type == 'photo_detail')
        {
            $stmt = $this->db->prepare('SELECT COUNT(*) counter FROM photo_reviews WHERE photo_id = :id');
        }elseif($type == 'place_details')
        {
            $stmt = $this->db->prepare('SELECT COUNT(*) counter FROM place_reviews WHERE place_id = :id');
        }elseif($type == 'type_details')
        {
            $stmt = $this->db->prepare('SELECT COUNT(*) counter FROM type_reviews WHERE type_id = :id');
        }else
        {
            $stmt = null;
        }
        if(!is_null($stmt))
        {
            $stmt->bindParam(':id', $id, PDO::PARAM_STR);
            $stmt->execute();
            $row = $stmt->fetch();
            echo $row['counter'];
        }else
        {
            echo 'Brak ocen';
        }
    }

    public function artistInfo($id)
    {
        $stmt = $this->db->prepare("SELECT * FROM music_details WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row;
    }

    public function photoInfo($id)
    {
        $stmt = $this->db->prepare("SELECT * FROM photo_detail WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row;
    }

    public function consultantInfo($id)
    {
        $stmt = $this->db->prepare("SELECT * FROM consultant_details WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row;
    }

    public function coupleTransportInfo($id)
    {
        $stmt = $this->db->prepare("SELECT * FROM couple_transport_details WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row;
    }

    public function guestTransportInfo($id)
    {
        $stmt = $this->db->prepare("SELECT * FROM guest_transport_details WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row;
    }

    public function typeInfo($id)
    {
        $stmt = $this->db->prepare("SELECT * FROM type_details WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row;
    }

    public function placeInfo($id)
    {
        $stmt = $this->db->prepare("SELECT * FROM place_details WHERE id = :id");
        $stmt->bindParam(':id', $id, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row;
    }

    public function salary($idMusic)
    {
        $stmt = $this->db->prepare('SELECT * FROM music_details WHERE id = :idMusic');
        $stmt->bindParam(':idMusic', $idMusic, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        return $row['price_flat'];
    }

    public function displayMetaTags($styleDir)
    {
        echo '<meta charset="UTF-8">';
        echo '<meta name="viewport" content="width=device-width, initial-scale=1">';
        echo '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">';
        echo '<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">';
        echo '<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">';
        echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>';
        echo '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>';
        echo '<link rel="stylesheet" href="' . $styleDir . '" type="text/css"/>';
    }

    public function displayTopNav($loginPath, $indexPath, $username, $admin, $logoutPath, $adminPath)
    {
        echo '<nav class="navbar navbar-default">
        <div class="container"><div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="' . $indexPath . '" style="font-size:40px;">Just<strong> Together</strong></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">';
        if ($username == "") {
            echo '<li><a href="' . $loginPath . '">Logowanie/Rejestracja</a></li>';
        } else {
            echo '<li><span>Witaj, ' . $username . ' | <a class="btn btn-warning" href="' . $logoutPath . '">Wyloguj</a></li>';
        }
        echo '</ul></div></div></nav>';
        if ($admin == 0) {
            echo '<a href="' . $adminPath . '" class="btn btn-primary" style="width:100%">Panel administratora</a>';
        }
    }

    public function displayLeftOffert($id, $type)
    {
        if($type == 'music_details') {
            $info = $this->artistInfo($id);
            echo '
            <div class="col-md-3" style="border-right: 1px solid #eee;">
                <h2>' . $info['type'] . '</h2>
                <hr>
                <span class="glyphicon glyphicon-tags"></span>&nbsp;
                <b>' . $info['name'] . '</b>
                </br>
                <hr>
                <div class="form-group">
                    <span class="glyphicon glyphicon-asterisk"></span>&nbsp;
                    <b>Województwo</b>
                    <p>' . $info['state'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-home"></span>&nbsp;
                    <b>Miejscowość</b>
                    <p>' . $info['city'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-usd"></span>&nbsp;
                    <b>Cena</b>
                    <p>' . $info['price_flat'] . ' zł</p>
                </div>
            </div>
            ';
        }elseif($type == 'photo_detail')
        {
            $info = $this->photoInfo($id);
            $drone = $info['drone'];
            echo '
            <div class="col-md-3" style="border-right: 1px solid #eee;">
                <h2>' . $info['first_name']. ' '. $info['last_name'] . '</h2>
                <hr>
                <span class="glyphicon glyphicon-tags"></span>&nbsp;
                <small>' . $info['company_name'] . '</small>
                <hr>
                <div class="form-group">
                    <span class="glyphicon glyphicon-asterisk"></span>&nbsp;
                    <b>Województwo</b>
                    <p>' . $info['state'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-home"></span>&nbsp;
                    <b>Miejscowość</b>
                    <p>' . $info['city'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-usd"></span>&nbsp;
                    <b>Zdjęcia</b>
                    <p>' . $info['photo_price'] . ' zł</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-usd"></span>&nbsp;
                    <b>Wideo</b>
                    <p>' . $info['video_price'] . ' zł</p>
                </div>
                ';
                if($drone == 0){
                    echo '<div class="form-group">
                    <span class="glyphicon glyphicon-usd"></span>&nbsp;
                    <b>Ujęcia z drona</b>
                    <p>' . $info['drone_price'] . ' zł</p>
                </div>';
                }
                echo '</div>';
        }elseif($type == 'consultant_details'){
            $info = $this->consultantInfo($id);
            echo '
            <div class="col-md-3" style="border-right: 1px solid #eee;">
                <h2>' . $info['first_name'] . ' '.$info['last_name'] . '</h2>
                <hr>
                <div class="form-group">
                    <span class="glyphicon glyphicon-asterisk"></span>&nbsp;
                    <b>Województwo</b>
                    <p>' . $info['state'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-home"></span>&nbsp;
                    <b>Miejscowość</b>
                    <p>' . $info['city'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-usd"></span>&nbsp;
                    <b>Cena</b>
                    <p>' . $info['price'] . ' zł</p>
                </div>
            </div>
            ';
        }elseif($type == 'couple_transport_details') {
            $info = $this->coupleTransportInfo($id);
            echo '
            <div class="col-md-3" style="border-right: 1px solid #eee;">
                <h2>' . $info['type'] . '</h2>
                <hr>
                <div class="form-group">
                    <span class="glyphicon glyphicon-asterisk"></span>&nbsp;
                    <b>Województwo</b>
                    <p>' . $info['state'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-home"></span>&nbsp;
                    <b>Miejscowość</b>
                    <p>' . $info['city'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-usd"></span>&nbsp;
                    <b>Cena</b>
                    <p>' . $info['price'] . ' zł</p>
                </div>
            </div>
            ';
        }elseif($type == 'guest_transport_details') {
            $info = $this->guestTransportInfo($id);
            echo '
            <div class="col-md-3" style="border-right: 1px solid #eee;">
                <h2>' . $info['type'] . '</h2>
                <hr>
                <div class="form-group">
                    <span class="glyphicon glyphicon-asterisk"></span>&nbsp;
                    <b>Województwo</b>
                    <p>' . $info['state'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-home"></span>&nbsp;
                    <b>Miejscowość</b>
                    <p>' . $info['city'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-usd"></span>&nbsp;
                    <b>Cena</b>
                    <p>' . $info['price_flat'] . ' zł</p>
                </div>
            </div>
            ';
        }elseif($type == 'type_details') {
            $info = $this->typeInfo($id);
            echo '
            <div class="col-md-3" style="border-right: 1px solid #eee;">
                <h2>' . $info['type'] . '</h2>
                <hr>
                <div class="form-group">
                    <span class="glyphicon glyphicon-asterisk"></span>&nbsp;
                    <b>Województwo</b>
                    <p>' . $info['state'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-home"></span>&nbsp;
                    <b>Miejscowość</b>
                    <p>' . $info['city'] . '</p>
                </div>
            </div>
            ';
        }elseif($type == 'place_details') {
            $info = $this->placeInfo($id);
            echo '
            <div class="col-md-3" style="border-right: 1px solid #eee;">
                <h2>' . $info['type'] . '</h2>
                <hr>
                <div class="form-group">
                    <span class="glyphicon glyphicon-asterisk"></span>&nbsp;
                    <b>Województwo</b>
                    <p>' . $info['state'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-home"></span>&nbsp;
                    <b>Miejscowość</b>
                    <p>' . $info['city'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-home"></span>&nbsp;
                    <b>Maks. gości</b>
                    <p>' . $info['max_guests'] . '</p>
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-home"></span>&nbsp;
                    <b>Cena</b>
                    <p>' . $info['price_flat'] . '</p>
                </div>
            </div>
            ';
        }else
        {
            header('Location:../404.html');
        }

    }

    public function displayFooter($kontaktPath)
    {
        echo '<footer class="container-fluid bg-4 text-center" style="width: 100%; padding: 20px;">';
        echo '<div class="row"><div class="col-md-4">';
        echo '<a href="' . $kontaktPath . '">Kontakt</a>';
        echo '</div><div class="col-md-4">';
        echo '<p>Projekt zaliczeniowy</p>';
        echo '</div><div class="col-md-4">';
        echo '<a href="#" class="fa fa-facebook-square social-size"></a>';
        echo '<a href="#" class="fa fa-twitter-square social-size"></a>';
        echo '<a href="#" class="fa fa-google-plus-square social-size"></a>';
        echo '<a href="#" class="fa fa-instagram social-size"></a>';
        echo '</div></div></footer>';
    }
}