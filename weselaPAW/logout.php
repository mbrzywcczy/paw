<?php
session_start();
if (!isset($_SESSION['login'])) {
    header('Location: /paw');
    exit;
} else {
    session_unset();
    session_destroy();
    header('Location: /paw');
    exit;
}
?>