<?php
require('./functions.php');

if (isset($_POST['reg_button'])) {
    //czyści formularz
    $login = trim($_POST['reg_login']);
    $password1 = trim($_POST['reg_pass1']);
    $password2 = trim($_POST['reg_pass2']);
    $email = trim($_POST['reg_email']);
    $name = trim($_POST['reg_name']);
    $lastname = trim($_POST['reg_lastname']);
    $gender = $POST['underwear'];

    //zmienna z błędami
    $errors = null;

    if ($password1 !== $password2) {
        $errors .= 'pass2=err';
    }

    //sprawdza czy użytkownik o danym loginie już nie istnieje
    $object = new functions('PDO');
    $user_exists .= $object->check_reg($login);

    if ($errors == null){
        $errors = $user_exists;
    } else {
        if ($user_exists != ""){
            $errors = $errors . '&' . $user_exists;
        }
    }

    if (empty($errors)) {
        $object->register();
    } else {
        header('Location: ../login.php?' . $errors);
        exit;
    }
}

?>