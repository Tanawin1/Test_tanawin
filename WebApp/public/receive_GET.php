<!DOCTYPE html>
<html>
    <head><meta charset="UTF-8">
        <link rel="stylesheet" href="welcome.css"> 
        <title>หน้าหลัก</title>
    </head>
<body>
    <div class = "welcome">
    <img src="razer.jpg" width="400"height="300">
<?php
    echo "<br>";
    echo "Welcome <br>";
    $user_name = $_GET["fname"];
    echo "$user_name";
    //$user_pass = $_GET["pname"];
    //echo "your passname is $user_pass";
?>
<br>
<form action="main.html" >
<br>
<input type="submit" name="suname" value="เข้าสู่ระบบ"></form>
</div>
</body>
</html>