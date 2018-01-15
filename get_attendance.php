<?php
header("Content-Type: application/json; charset=UTF-8");
include("connect.php");
if (!isset($_GET['student_roll_no'])) {
    echo '{"result":"no_roll"}';
} else {
    $student_roll_no = $_GET['student_roll_no'];
    $que = "select * from student_attendance where attendance_roll_no='$student_roll_no'";

    $run = mysql_query($que);
    if (mysql_num_rows($run) > 0) {
        $r = array();
        while ($row = mysql_fetch_assoc($run)) {
            $r[] = $row;
        }
        $r_json = json_encode($r);
        $ret_json = '{"result":"ok","attendances":' . $r_json . '}';
        echo $ret_json;
    } else {
        $ret_json = '{"result":"no"}';
        echo $ret_json;
    }
}
?>