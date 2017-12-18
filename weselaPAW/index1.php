<?php
	session_start();
<<<<<<< HEAD
    require ('./functions.php');
=======
>>>>>>> 67a466dc840305e8110fa10fa6ea92400d816d7e
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
<<<<<<< HEAD

	var_dump(getComment());
=======
>>>>>>> 67a466dc840305e8110fa10fa6ea92400d816d7e
?>
<html>
<head>
<title>Planowanie wesel</title>
</head>
<body>
Witamy
</body>
</html>