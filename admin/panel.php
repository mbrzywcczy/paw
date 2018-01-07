<?php
require('../../paw/weselaPAW/functions.php');
session_start();
if (!isset($_SESSION['admin']) || $_SESSION['admin'] != 0){
    header('Location: /paw');
    exit;
}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <?php
    $functions = new functions('PDO');
    $functions->displayMetaTags()
    ?>
    <title>Panel administratorski</title>
</head>
<body>
<?php
$functions->displayTopNav("../login.html", "../index.html");
?>
<table align="center" class="table">
    <tr>
        <th colspan="2" style="text-align: center"><strong>Wybierz kategorię</strong></th>
    </tr>
    <tr>
        <td>
            <form action="/paw/admin/table.php?type=consultant_details"><input type="text" name="type"
                                                                               value="consultant_details" hidden>
                <input type=submit class="btn btn-primary" value="Konsultanci" style="width:100%"></form>
        </td>
        <td>
            <form action="/paw/admin/table.php?type=consultant_reviews"><input type="text" name="type"
                                                                               value="consultant_reviews" hidden>
                <input type=submit class="btn btn-secondary" value="Komentarze" style="width:100%"></form>
        </td>
    </tr>
    <tr>
        <td>
            <form action="/paw/admin/table.php?type=couple_transport_details"><input type="text" name="type"
                                                                                     value="couple_transport_details"
                                                                                     hidden>
                <input type=submit class="btn btn-primary" value="Transport dla par" style="width:100%"></form>
        </td>
        <td>
            <form action="/paw/admin/table.php?type=couple_transport_reviews"><input type="text" name="type"
                                                                                     value="couple_transport_reviews"
                                                                                     hidden>
                <input type=submit class="btn btn-secondary" value="Komentarze" style="width:100%"></form>
        </td>
    </tr>
    <tr>
        <td>
            <form action="/paw/admin/table.php?type=guest_transport_details"><input type="text" name="type"
                                                                                    value="guest_transport_details"
                                                                                    hidden>
                <input type=submit class="btn btn-primary" value="Transport dla gości" style="width:100%"></form>
        </td>
        <td>
            <form action="/paw/admin/table.php?type=guest_transport_reviews"><input type="text" name="type"
                                                                                    value="guest_transport_reviews"
                                                                                    hidden>
                <input type=submit class="btn btn-secondary" value="Komentarze" style="width:100%"></form>
        </td>
    </tr>
    <tr>
        <td>
            <form action="/paw/admin/table.php?type=music_details"><input type="text" name="type" value="music_details"
                                                                          hidden>
                <input type=submit class="btn btn-primary" value="Muzyka" style="width:100%"></form>
        </td>
        <td>
            <form action="/paw/admin/table.php?type=music_reviews"><input type="text" name="type" value="music_reviews"
                                                                          hidden>
                <input type=submit class="btn btn-secondary" value="Komentarze" style="width:100%"></form>
        </td>
    </tr>
    <tr>
        <td>
            <form action="/paw/admin/table.php?type=photo_detail"><input type="text" name="type" value="photo_detail"
                                                                         hidden>
                <input type=submit class="btn btn-primary" value="Fotograf" style="width:100%"></form>
        </td>
        <td>
            <form action="/paw/admin/table.php?type=photo_reviews"><input type="text" name="type" value="photo_reviews"
                                                                          hidden>
                <input type=submit class="btn btn-secondary" value="Komentarze" style="width:100%"></form>
        </td>
    </tr>
    <tr>
        <td>
            <form action="/paw/admin/table.php?type=place_details"><input type="text" name="type" value="place_details"
                                                                          hidden>
                <input type=submit class="btn btn-primary" value="Miejsce" style="width:100%"></form>
        </td>
        <td>
            <form action="/paw/admin/table.php?type=place_reviews"><input type="text" name="type" value="place_reviews"
                                                                          hidden>
                <input type=submit class="btn btn-secondary" value="Komentarze" style="width:100%"></form>
        </td>
    </tr>
    <tr>
        <td>
            <form action="/paw/admin/table.php?type=type_details"><input type="text" name="type" value="type_details"
                                                                         hidden>
                <input type=submit class="btn btn-primary" value="Typ" style="width:100%"></form>
        </td>
        <td>
            <form action="/paw/admin/table.php?type=type_reviews"><input type="text" name="type" value="type_reviews"
                                                                         hidden>
                <input type=submit class="btn btn-secondary" value="Komentarze" style="width:100%"></form>
        </td>
    </tr>
</table>
<?php
$functions->displayFooter();
?>
</body>
</html>