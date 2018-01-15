<?php
$server = $_SERVER['HTTP_HOST'];
$cmp = strcmp($server, "192.168.1.100");
if ($cmp == 0) {
    $dbhost = 'localhost:3306';
    $dbuser = 'root';
    $dbpass = '';
    $conn = mysql_connect($dbhost, $dbuser, $dbpass);
    if (!$conn) {
        die('Could not connect: ' . mysql_error());
    }
//echo 'Connected successfully';
    mysql_select_db('test');
} else {
    include("../../connection/connect.php");
}


?>