<?php
require('./functions.php');
session_start();

if (isset($_SESSION['login'])) {
    header('Location:../index.php');
    exit;
} else {
    if (isset($_POST['log_button'])) {
        $object = new functions('PDO');
        $object->login(trim($_POST['log_login']), md5(trim($_POST['log_password'])));
    } else {
        header('Location:../index.php');
        exit;
    }
}
?>