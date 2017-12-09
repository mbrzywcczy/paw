<?php
	session_start();
	if(isset($_SESSION['login']))
	{
		echo 'Witaj ' . $_SESSION['login'] . '!</br>';
		echo '<a href=show_plans.php>Zobacz swoje plany</a></br>';
	}
	else
	{
		echo 'Dzien dobry
				</br>
				<a href=register.php>Zarejestruj sie!</a>
				</br>
				<a href=login.php>Zaloguj sie!</a></br></br>';
	}
?>
<html>
<head>
<title>Planowanie wesel</title>
</head>
<body>
Witamy
</body>
</html>