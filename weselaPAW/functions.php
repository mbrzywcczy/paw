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

    public function displayFormAddEdit($type, $action)
    {
        $edit = "";
        if ($action == "edit") {
            $edit = "zmieniony";
        }
        echo '<form action="/paw/admin/add.php">
            <input type="text" name="type" value="' . $type . '" hidden>
            <input type="text" name="add" value="true" hidden>';
        $this->getFormFields($type);
        echo '<input type=submit class="btn btn-primary" value="Dodaj ' . $edit . ' rekord">
            </form>';
    }

    private function getFormFields($type)
    {

        if (strpos($type, 'review') == true) {
            echo 'test';
        }
        echo 'test2';
    }
}

//>>>>>>> 67a466dc840305e8110fa10fa6ea92400d816d7e

?>