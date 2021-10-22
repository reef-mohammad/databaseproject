<?php

$search = $_POST['search'];

$servername = "localhost";
$username = "root";
$password = "";
$db = "it332p";

$conn = new mysqli($servername, $username, $password, $db);

if ($conn->connect_error){
	die("Connection failed: ". $conn->connect_error);
}

 echo "<p style='background-color: #f5f5f5; text-align:center;
 color:#0d98ba;
 font-family:courier bold;
 font-size:160%;'> BOOK DETAILS</p> </p>";
 echo "<table border='1'   style='color:gray;  margin-left: auto;
  margin-right: auto;'
 <thead><tr>
 <th>  <p style='color:#0d98ba;'> ISBN </th></p>
 <th> <p style='color:#0d98ba;'> BOOK NAME</th></p>
 <th> <p style='color:#0d98ba;'> STATUS </th></p>
 <th> <p style='color:#0d98ba;'> SECTION_ID </th></p>
 <th> <p style='color:#0d98ba;'>AUTHOR </th></p>
 </tr></thead>";



$sql= "SELECT * FROM book c JOIN Author l ON c.ISBN=l.ISBN
 WHERE name_B LIKE '%$search%'";



$result = $conn->query($sql);

if ($result->num_rows > 0){
while($row = $result->fetch_assoc() ){
	echo "<tbody><tr> <td> <h4>  <p style='color:#6a6c6d;'>".$row["ISBN"]. "</h4> </td></p>";
 echo "<td> <h4>  <p style='color:#6a6c6d;'>".$row["name_B"]. "</h4></td></p>";

 echo "<td> <h4><p style='color:#6a6c6d;'>".$row["status_B"]. "</h4></td> </p>";
  echo "<td> <h4> <p style='color:#6a6c6d;text-align:center;'>".$row["id_s"]. "</h4></td></p>";
	  echo "<td> <h4> <p style='color:#6a6c6d;text-align:center;'>".$row["Author"]. "</h4></td></p>";
"</tr></tbody>"; }


} else {
	echo "<p style='color:#6a6c6d;  font-family:courier bold;text-align:center;font-size:130%;'>there is no book with that name try again!</p>";
}

$conn->close();

?>
