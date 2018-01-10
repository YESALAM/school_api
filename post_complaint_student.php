<?php
header("Content-Type: application/json; charset=UTF-8");
include_once("../../connection/connect.php");
if (!isset($_POST['student_roll_no'])) {
    echo '{"result":"no_roll"}';
} else {
    $student_roll_no = $_POST['student_roll_no'];
    $student_name = $_POST['student_name'];
    $student_complaint_class = $_POST['student_complaint_class'];
    $student_complaint_roll_no = $_POST['student_complaint_roll_no'];
    $student_complaint_date = $_POST['student_complaint_date'];
    $student_complaint = $_POST['student_complaint'];
    $student_complaint_complainter_name = $_POST['student_complaint_complainter_name	'];
    $student_complaint_contact_no = $_POST['student_complaint_contact_no'];
    $student_complaint_remark = $_POST['student_complaint_remark'];
    $student_complaint_seen_or_unseen = $_POST['student_complaint_seen_or_unseen'];
    $student_complaint_teacher_reply = $_POST['student_complaint_teacher_reply'];
    $student_complaint_photo = $_POST['student_complaint_photo'];
    $student_complaint_vidio = $_POST['student_complaint_vidio'];

    $que = "INSERT INTO `complaint_student`(`student_name`, `student_complaint_class`, `student_complaint_roll_no`, `student_complaint_date`, `student_complaint`, `student_complaint_photo`, `student_complaint_vidio`, `student_complaint_complainter_name`, `student_complaint_contact_no`, `student_complaint_remark`, `student_complaint_seen_or_unseen`, `student_complaint_teacher_reply`) VALUES ('$student_name','$student_complaint_class','$student_complaint_roll_no','$student_complaint_date','$student_complaint','$student_complaint_photo','$student_complaint_vidio','$student_complaint_complainter_name','$student_complaint_contact_no','$student_complaint_remark ','$student_complaint_seen_or_unseen','$student_complaint_teacher_reply')";

    $run = mysql_query($que);
    if ($run) {
        echo '{"result":"ok"}';
    } else {
        echo '{"result":"not_ok"}';
    }

}
?>