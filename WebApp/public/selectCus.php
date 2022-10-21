<?php
$servername = "localhost";
$username = "root";

$password = "";
$dbname = "dbproduct";
$conn = new mysqli($servername, $username, $password, $dbname);
if($conn -> connect_error)
{
    die("connection failed".$conn->connect_error);
}
echo "connection comple";
//----------------------------------------------------------
$sql = "SELECT * From customer" ;

$result = $conn->query($sql);

if($result->num_rows > 0){

    //output data of each row

    while($row = $result -> fetch_assoc()){

        echo "<br>" . "รหัสลูกค้า" . $row["CustomerId"] . "<br>"."ชื่อลูกค้า" . $row["CustomerName"] . "<br>"."ที่อยู่" . $row["Locations"] . "<br>"."อีเมล" . $row["Email"] . "<br>"."วัน/เดือน/ปี เกิด" . $row["DateOfBirth"] . "<br>"."วันผลิด" . $row["CDate"] . "<br>"."วันหมดอายุ" . $row["ModDate"] . "<br>"."รหัสไปรษณี" . $row["Postcost"] . "<br>";

}

}

else{

    echo "0 results";

}

$conn -> close();
?>