<?php
require('./functions.php');
session_start();

if (isset($_SESSION['login'])) {
    header('Location:../index.php');
    exit;
} else {
    if (isset($_POST['log_button'])) {
        $login = trim($_POST['log_login']);
        $password = trim($_POST['log_password']);
        $pass_hash = md5($password);

        $object = new functions('PDO');
        $object->login($login, $pass_hash);
    }
}
?>