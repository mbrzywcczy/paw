<?php
require ('./functions.php');
	session_start();

if(isset($_SESSION['login']))
{
	header('Location:log_ok.php');
	exit;
}
else
{
	if(isset($_POST['log_button']))
	{
	$login = trim($_POST['log_login']);
	$password = trim($_POST['log_password']);
	$pass_hash = md5($password);
	
	
	$object = new functions('PDO');
	$object -> login($login,$pass_hash);
	//$object -> login($login,$password);
	}
}
?>
<!--<form method="POST" action="login.php">
Login: <input name="log_login"></br>
Haslo: <input type=password name="log_password"></br>
<input type="submit" name="log_button" value="Zaloguj">
</form>-->