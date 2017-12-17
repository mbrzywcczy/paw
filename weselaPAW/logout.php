<?php
session_start();
if(!isset($_SESSION['login']))
{
	echo "Nie jestes zalogowany. <a href=login.php>Zaloguj sie</a>";
}
else
{
session_destroy();
echo 'Wylogowano';
echo '</br><a href=login.php>Logowanie</a>';
}

?>