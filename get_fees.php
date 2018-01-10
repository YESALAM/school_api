<?php
header("Content-Type: application/json; charset=UTF-8");
include_once("../../connection/connect.php");
if (!isset($_GET['student_roll_no'])) {
    echo '{"result":"no_roll"}';
} else {
    $student_roll_no = $_GET['student_roll_no'];
    $que = "select * from fees_student_fee_add where student_roll_no='$student_roll_no' ORDER BY s_no DESC";
    $run = mysql_query($que);
    if (mysql_num_rows($run) > 0) {
        $r = array();
        while ($row = mysql_fetch_assoc($run)) {
            $r[] = $row;
        }
        $r_json = json_encode($r);
        $ret_json = '{"result":"ok","fees":' . $r_json . '}';
        echo $ret_json;
    } else {
        $ret_json = '{"result":"no"}';
        echo $ret_json;
    }
}
?>