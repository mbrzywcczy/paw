<?php
	session_start();
    require ('./functions.php');
	if(isset($_SESSION['login']))
	{
		echo 'Witaj ' . $_SESSION['login'] . '!</br>';
		echo '<a href=logout.php>Wyloguj</a></br>';
	}
	else
	{
		echo 'Dzien dobry
				</br>
				<a href=register.php>Zarejestruj sie!</a>
				</br>
				<a href=login.php>Zaloguj sie!</a></br></br>';
	}

	var_dump(getComment());
?>
<html>
<head>
<title>Planowanie wesel</title>
</head>
<body>
Witamy
</body>
</html>