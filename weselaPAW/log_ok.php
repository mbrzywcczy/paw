<?php

session_start();

if(!isset($_SESSION['login']))
{
	header('Location:login.php');
	exit;
}
else
{
	echo 'Pomyslne zalogowano uzytkownika ' .$_SESSION['login'] . '</br>';
	echo '<a href=index1.php>Strona glowna</a></br>';
	echo '<a href=logout.php>Wyloguj sie</a>';
}
?>