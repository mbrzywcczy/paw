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

    public function checkIfUserIsLogged()
    {
        session_start();
        if (isset($_SESSION['login'])) {
            return true;
        }
        return false;
    }

    public function getComment()
    {
        $idMusic = $_GET['id'];
        $stmt = $this->db->prepare('SELECT * FROM music_reviews WHERE music_id = :idMusic ORDER BY id DESC');
        $stmt->bindParam(':idMusic', $idMusic, PDO::PARAM_STR);
        $stmt->execute();

        while ($row = $stmt->fetch()) {

            echo '<div class="row">
                      <div class="col-md-3" style="border-right: 1px solid #eee;">
                        <button type="button" class="btn btn-default btn-sm">
                          <span class="glyphicon glyphicon-user"></span>User 
                        </button>
                        <h4>Aleksander Kędzior</h4>
                      </div>
                      <div class="col-md-7">';
            echo '<p>' . $row['review'] . '</p>';
            echo '</div> 
                      <div class="col-md-2">  
                       <p>' . $row['rate'] . '/5 &nbsp;<span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="right" title="Ocena"></span></p>       
                      </div>              
                        </div> </br>';
        }
    }

    public function rateAverage()
    {
        $idMusic = $_GET['id'];
        $stmt = $this->db->prepare('SELECT ROUND(AVG(rate),1) average FROM music_reviews WHERE music_id = :idMusic');
        $stmt->bindParam(':idMusic', $idMusic, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        echo $row['average'];
    }

    public function setComment()
    {
        if (isset($_POST['comment']) && isset($_POST['sell'])) {
            $comment = $_POST['comment'];
            $stars = $_POST['sell'];
            $idArtist = $_GET['id'];

            $set = $this->db->prepare('INSERT INTO music_reviews (id, music_id, review, rate) VALUES (null, :music_id, :review, :rate)');
            $set->bindParam(':music_id', $idArtist, PDO::PARAM_INT);
            $set->bindParam(':review', $comment, PDO::PARAM_STR);
            $set->bindParam(':rate', $stars, PDO::PARAM_INT);
            $set->execute();

            header('Location: /offert.php?' . $idArtist);
        }
    }

    public function commentsCount()
    {
        $idMusic = $_GET['id'];
        $stmt = $this->db->prepare('SELECT COUNT(*) counter FROM music_reviews WHERE music_id = :idMusic');
        $stmt->bindParam(':idMusic', $idMusic, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        echo $row['counter'];
    }

    public function artistInfo()
    {
        $idMusic = $_GET['id'];
        $stmt = $this->db->prepare('SELECT * FROM music_details WHERE music_id = :idMusic');
        $stmt->bindParam(':idMusic', $idMusic, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
    }

    public function salary()
    {
        $idMusic = $_GET['id'];
        $stmt = $this->db->prepare('SELECT * FROM music_details WHERE id = :idMusic');
        $stmt->bindParam(':idMusic', $idMusic, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch();
        echo $row['price_flat'];
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
            <a class="navbar-brand" href="' . $indexPath . '">Tu będzie logo</a>
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

?>