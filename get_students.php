<?php
header("Content-Type: application/json; charset=UTF-8");
include_once("../../connection/connect.php");

$que = "SELECT * FROM `student_admission_info` where student_status = 'Active'";
$run = mysql_query($que);
if (mysql_num_rows($run) > 0) {
    $r = array();
    while ($row = mysql_fetch_assoc($run)) {
        $r[] = $row;
    }
    $r_json = json_encode($r);
    $ret_json = '{"result":"ok","students":' . $r_json . '}';
    echo $ret_json;
} else {
    $ret_json = '{"result":"no"}';
    echo $ret_json;

}
?>