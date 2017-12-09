<?php
class functions
{
	public $login;
	public $password;
	public $conn;
	public $db;
	
	public function __construct($conn_type)
	{
		if($conn_type == 'PDO')
		{
			$this -> db = new PDO('mysql:host=localhost;dbname=weddings_db','root','');
		}
		if($conn_type == 'mysqli')
		{
			$this -> conn = new mysqli ('localhost','root','','weddings_db');
		}
	}
	
public function login($login, $password)
{
	
	$check_login = $this -> db -> prepare("SELECT * FROM users WHERE login = :login and password = :pass");
	$check_login -> bindParam(':login', $login, PDO::PARAM_STR);
	$check_login -> bindParam(':pass', $password, PDO::PARAM_STR);
	$check_login -> execute();
	$row = $check_login -> fetch();
	if($row['login'] == $login && $row['password'] == $password)
	{
		$user_id = $row['id'];
		session_start();
		$_SESSION['login'] = $login;
		$_SESSION['user_id'] = $user_id;
		header('Location:log_ok.php');
		exit;
	}
	else
	{
		echo 'Wpisano niepoprawne dane';
	}
}

public function check_reg()
{
	$check_login = $this -> db -> prepare("SELECT COUNT(id) AS liczba FROM users WHERE login = :login");
	$check_login -> bindParam(':login', $login, PDO::PARAM_STR);
	$check_login -> execute();
	$row = $check_login -> fetch();
	

	if($row['liczba'] > 0)
	{
		$errors .= 'Login jest zajęty</br>';
	}
}

public function register()
{
		$login = trim($_POST['frm_login']);
		$password1 = trim($_POST['frm_pass1']);
		$password2 = trim($_POST['frm_pass2']);
		$password1 = md5($password1);
		$add = $this -> db -> prepare('INSERT INTO users (id, login, password) VALUES (null, :login, :password)');
		$add -> bindParam(':login', $login, PDO::PARAM_STR);
		$add -> bindParam(':password', $password1, PDO::PARAM_STR);
		$add -> execute();
		echo 'Utworzono konto ' .$login;
		
		session_start();
		$_SESSION['login'] = $login;
		header('Location:reg_ok.php');
		exit;
}


}
?>