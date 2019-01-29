<?
    include 'dbconnect.php';
    include 'users.php';
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Zimalab test</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
</head>
<body>
    <div class="container">
        <div class="AddUserContainer">
        <form id="AddUserForm" action="header_add.php" method="post">
            <input type="text" required name="first_name" placeholder="First Name">
            <input type="text" required name="last_name" placeholder="Last Name">
            <input type="email" required name="email" placeholder="Email">
            <input type="text" name="company_name" placeholder="Company Name">
            <select name="position" id="position">
                <option value="Новосибирск">Новосибирск</option>
                <option value="Москва">Москва</option>
                <option value="Санкт-Петербург">Санкт-Петербург</option>
                <option value="Красноярск">Красноярск</option>
                <option value="Самара">Самара</option>
            </select>
            <input type="text" name="mobile_phone" placeholder="Mobile phone">
            <input type="text" name="home_phone" placeholder="Home phone">
            <input type="text" name="work_phone" placeholder="Work phone">
            <input type="submit" name="adduser" value="Add user" id="btn-adduser">
        </form>  
        </div>    
    <?
        $users = new Viewusers(); 
        $users->showAllUsers();
        $paginator = new Paginator();
    ?>
    </div>
</body>
</html>