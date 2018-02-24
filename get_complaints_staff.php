<?php
header("Content-Type: application/json; charset=UTF-8");
include("connect.php");

if (!isset($_GET['roll_no'])) {
    echo '{"result":"no_roll"}';
} else {
    $roll = $_GET['roll_no'];
    $que = "SELECT * FROM `complaint_staff` WHERE `student_roll_no` = '$roll' ";;
    $run = mysql_query($que) or die(mysql_error());
    if (mysql_num_rows($run) > 0) {
        $r = array();
        while ($row = mysql_fetch_assoc($run)) {
            $r[] = $row;
        }

        $r_json = json_encode($r);
        $ret_json = '{"result":"ok","staff_complaints":' . $r_json . '}';
        echo $ret_json;
    } else {
        echo '{"result":"not_ok"}';
    }

}
?>		