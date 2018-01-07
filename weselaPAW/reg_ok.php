<?php

session_start();

if (!isset($_SESSION['login'])) {
    header('Location:register.php');
    exit;
} else {
    echo 'Pomyslne zarejestrowano uzytkownika ' . $_SESSION['login'];
    session_destroy();
    echo '</br><a href=../login.php>Logowanie</a>';
    echo '</br><a href=index.php>Strona glowna</a>';
}
?>