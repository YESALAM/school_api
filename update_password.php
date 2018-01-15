<?php
header("Content-Type: application/json; charset=UTF-8");
include("connect.php");
if (!isset($_POST['student_roll_no'])) {
    echo '{"result":"no_roll"}';
} else {
    $student_roll_no = $_POST['user_id'];
    $password = $_POST['password'];
    $que = "update `student_admission_info` set student_password = '$password'  where 	student_roll_no='$student_roll_no' ";
    $run = mysql_query($que);
    if ($run) {
        $ret_json = '{"result":"ok"}';
        echo $ret_json;
    } else {
        $ret_json = '{"result":"no_update"}';
        echo $ret_json;
    }
}
?>