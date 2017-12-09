<?php
require ('./functions.php');

if (isset($_POST['frm_register']))
{
	//czyści formularz
	$login = trim($_POST['frm_login']);
	$password1 = trim($_POST['frm_pass1']);
	$password2 = trim($_POST['frm_pass2']);
	
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
<form method="POST" action="register.php">
Login: <input name="frm_login"></br>
Haslo: <input type="password" name="frm_pass1"></br>
Powtorz haslo: <input type="password" name="frm_pass2"></br>
<input type="submit" name="frm_register" value="Utworz konto">
</form>