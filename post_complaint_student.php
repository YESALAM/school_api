<?php
header("Content-Type: application/json; charset=UTF-8");
include("connect.php");
if (!isset($_POST['student_roll_no'])) {
    echo '{"result":"no_roll"}';
} else {
    $student_roll_no = $_POST['student_roll_no'];
    $student_name = $_POST['student_name'];
    $student_complaint_class = $_POST['student_class'];
    //$student_complaint_roll_no = $_POST['student_complaint_roll_no'];
    $student_complaint_date = $_POST['date'];
    $student_complaint = $_POST['complaint'];
    $student_complaint_complainter_name = $_POST['complainter'];
    $student_complaint_contact_no = $_POST['contact'];
    //$student_complaint_remark = $_POST['student_complaint_remark'];
   // $student_complaint_seen_or_unseen = $_POST['student_complaint_seen_or_unseen'];
    //$student_complaint_teacher_reply = $_POST['student_complaint_teacher_reply'];
    $have_photo = $_POST['have_image'];
    $have_video = $_POST['have_video'];

    $cmp = strcmp($have_photo, "t");
    $cmp2 = strcmp($have_video,"t");

    $photo = "";
    if($cmp == 0){
        //todo have photo store itl̥
        //$info = pathinfo($_FILES['photo']['name']);
       /// $ext = $info['extension']; // get the extension of the file
        //$newname = "newname.".$ext; 

        $photo = basename($_FILES['photo']['name']);
        $target = 'complaint_images/'.$photo;
        move_uploaded_file( $_FILES['photo']['tmp_name'], $target);
    }

    $video = "";
    if($cmp2==0){
        //todo have video store it
       // $info = pathinfo($_FILES['video']['name']);
        ///ext = $info['extension']; // get the extension of the file
        //$newname = "newname.".$ext; 

        if ($_FILES["video"]["error"] > 0)
        {
        echo "Return Code: " . $_FILES["video"]["error"] . "<br />";
        }
    
        $video = basename($_FILES['video']['name']);
        $target = 'complaint_videos/'.$video;
        move_uploaded_file( $_FILES['video']['tmp_name'], $target);
    }

    $que = "INSERT INTO `complaint_student`(`student_name`, `student_complaint_class`, `student_complaint_roll_no`, `student_complaint_date`, `student_complaint`, `student_complaint_photo`, `student_complaint_vidio`, `student_complaint_complainter_name`, `student_complaint_contact_no`) VALUES ('$student_name','$student_complaint_class','$student_roll_no','$student_complaint_date','$student_complaint','$photo','$video','$student_complaint_complainter_name','$student_complaint_contact_no')";

    $run = mysql_query($que);
    if ($run) {
        echo '{"result":"ok"}';
    } else {
        echo '{"result":"not_ok"}';
    }

}
?>