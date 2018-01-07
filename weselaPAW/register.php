<?php
require ('./functions.php');

if (isset($_POST['reg_button']))
{
	//czyści formularz
	$login = trim($_POST['reg_login']);
	$password1 = trim($_POST['reg_pass1']);
	$password2 = trim($_POST['reg_pass2']);
    $email = trim($_POST['reg_email']);
    $name = trim($_POST['reg_name']);
    $lastname = trim($_POST['reg_lastname']);
	$gender = $POST['underwear'];

	//zmienna z błędami
	$errors = NULL;
	
	//sprawdza czy dane są poprawne
	if(strlen($login)<4)
	{
		$errors .= 'Login musi miec co najmniej 4 znaki</br>';
	}
	if(strlen($password1)<6)
	{
		$errors .= 'Haslo musi miec co najmniej 6 znakow</br>';
	}
	if($password1 !== $password2)
	{
		$errors .= 'Podane hasla nie sa takie same</br>';
	}
	
	//sprawdza czy użytkownik o danym loginie już nie istnieje
	$object = new functions('PDO');
	$object -> check_reg();
	
	if(empty($errors))
	{
		$object -> register();
	}
	else
	{
		echo $errors;
	}
}

?>
<!--<form method="POST" action="register.php">
Login: <input name="reg_login"></br>
Haslo: <input type="password" name="reg_pass1"></br>
Powtorz haslo: <input type="password" name="reg_pass2"></br>
<input type="submit" name="reg_register" value="Utworz konto">
</form>-->