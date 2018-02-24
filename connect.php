<?php
$server = $_SERVER['HTTP_HOST'];
$cmp = strcmp($server, "school.simption.com");
$cmp2 = strcmp($server,"192.168.42.66");

if ($cmp != 0 or $cmp2==0) {
    $dbhost = 'localhost:3306';
    $dbuser = 'root';
    $dbpass = '';
    $conn = mysql_connect($dbhost, $dbuser, $dbpass);
    if (!$conn) {
        die('Could not connect: ' . mysql_error());
    }
//echo 'Connected successfully';
    mysql_select_db('new_school_db');
} else {
    include("../../connection/connect.php");
}


?>