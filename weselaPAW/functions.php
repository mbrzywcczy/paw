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
        $login = trim($_POST['frm_login']);
        $password1 = trim($_POST['frm_pass1']);
        $password2 = trim($_POST['frm_pass2']);
        $password1 = md5($password1);
        $add = $this->db->prepare('INSERT INTO users (id, login, password) VALUES (null, :login, :password)');
        $add->bindParam(':login', $login, PDO::PARAM_STR);
        $add->bindParam(':password', $password1, PDO::PARAM_STR);
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
        //Pobranie id muzyka będzie z URL na razie robie sobie na sztywno
        $idMusician = 3;
        $query = $this->db->prepare("SELECT * FROM music_details WHERE id = :idMusician");
        $query->bindParam(':idMusician', $idMusician, PDO::PARAM_STR);
        $query->execute();

        while ($row = $query->fetch()) {
            echo var_dump($row['review']) .
                '<br/>';
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
        echo '<footer class="container-fluid bg-4 text-center" style="position: fixed; bottom: 0; width: 100%; padding: 20px;">
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
}

?>