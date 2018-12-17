<?php

$hostname = "localhost";
$username = "root";
$password = "sesame";
$db_name = "projectDB";

$mysqli = new mysqli($hostname, $username, $password, $db_name);

if ($mysqli->connect_errno){
   die('Unable to connect to DB');
 }else{
   echo "Connected successfully";
 }

/*Attempts to query the database,
couldn't get to work properly despite successful connect so we mostly used html since the php pages kept crashing

 <!DOCTYPE html>
 <html>
   <head>
     <title></title>
     </head>
     <body>

<?php
$sql = 'SELECT * FROM Course;';
$result = $mysqli->query($sql);
$num_rows = $result->num_rows;
for ($i = 0; $i < $num_rows; ++$i) {
 $row = $result->fetch_array(MYSQLI_ASSOC);
 echo $row['CourseName']);
}

$sql = 'SELECT * FROM Professor;';
$result = $mysqli->query($sql);
$num_rows = $result->num_rows;
for ($i = 0; $i < $num_rows; ++$i) {
 $row = $result->fetch_array(MYSQLI_ASSOC);
 echo $row['LastName']);
}

$sql = 'SELECT * FROM Section;';
$result = $mysqli->query($sql);
$num_rows = $result->num_rows;
for ($i = 0; $i < $num_rows; ++$i) {
 $row = $result->fetch_array(MYSQLI_ASSOC);
 echo $row['SectionNum']);
}

$sql = 'SELECT * FROM Login;';
$result = $mysqli->query($sql);
$num_rows = $result->num_rows;
for ($i = 0; $i < $num_rows; ++$i) {
 $row = $result->fetch_array(MYSQLI_ASSOC);
 echo $row['UserName']);
}
?>

#Attempt for password system
<?php
if (empty($UserName) || empty($Password){
exit();
}else(
$sql = "SELECT UserName from Login where UserName=?";
$stmt = mysqli_stmt_init($mysqli);
if () {
  exit();
}else{

}

)
?>

</body>
</html>
*/

$mysqli->close();
?>
