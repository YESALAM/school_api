<?php
header("Content-Type: application/json; charset=UTF-8");
include("connect.php");
if (!isset($_POST['student_roll_no'])) {
    echo '{"result":"no_roll"}';
} else {
    $student_roll_no = $_POST['student_roll_no'];
    $staff_complaint_type = $_POST['staff_complaint_type'];
    $staff_name = $_POST['staff_name'];
    $staff_complaint_date = $_POST['staff_complaint_date'];
    $staff_complain = $_POST['staff_complain'];
    $staff_complaint_name = $_POST['staff_complaint_name'];
    $staff_complainter_contact_no = $_POST['staff_complainter_contact_no'];
    $staff_complaint_suggestion = $_POST['staff_complaint_suggestion'];
    $staff_complaint_seen_or_unseen = $_POST['staff_complaint_seen_or_unseen'];
    $staff_complaint_reply = $_POST['staff_complaint_reply'];


    $que = "INSERT INTO `complaint_staff`(`staff_complaint_type`, `student_roll_no`, `staff_name`, `staff_complaint_date`, `staff_complain`, `staff_complaint_name`, `staff_complainter_contact_no`, `staff_complaint_suggestion`, `staff_complaint_seen_or_unseen`, `staff_complaint_reply`) VALUES ('$staff_complaint_type','$student_roll_no','$staff_name','$staff_complaint_date','$staff_complain','$staff_complaint_name','$staff_complainter_contact_no','$staff_complaint_suggestion','$staff_complaint_seen_or_unseen','$staff_complaint_reply')";

    $run = mysql_query($que);
    if ($run) {
        echo '{"result":"ok"}';
    } else {
        echo '{"result":"not_ok"}';
    }
}
?>