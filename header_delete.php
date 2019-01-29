<?
    include 'dbconnect.php';
    include 'users.php';

    $delete = new Delete;
    $delete->deleteUser();
    header('Location: index.php');
?>