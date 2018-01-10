<?php
header("Content-Type: application/json; charset=UTF-8");
include_once("../../connection/connect.php");
if (!isset($_GET['s_no'])) {
    echo '{"result":"no_srn"}';
} else {
    $s_no = $_GET['s_no'];
    $que = "select * from fees_student_fee_add where s_no='$s_no'";
    $run = mysql_query($que);
    if (mysql_num_rows($run) > 0) {
        $r = array();
        while ($row = mysql_fetch_assoc($run)) {
            $r[] = $row;
        }
        $r_json = json_encode($r);
        $ret_json = '{"result":"ok","detail":' . $r_json . '}';
        echo $ret_json;
    } else {
        $ret_json = '{"result":"no"}';
        echo $ret_json;
    }
}
?>