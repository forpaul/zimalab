<?
    include 'dbconnect.php';
    include 'users.php';

    $update = new Update(); 
    $update->updateData();
    header('Location: index.php');
?>