<?php
header("Content-Type: application/json; charset=UTF-8");
include_once("../../connection/connect.php");
if(!isset($_POST['user_id'])){
	echo '{"result":"no_id"}';
}else{      
	$student_roll_no=$_POST['user_id'];
	$password = $_POST['password'];
	$que="SELECT * FROM `student_admission_info` where 	student_roll_no='$student_roll_no' and student_password = '$password' and student_status = 'Active'";	
    $run=mysql_query($que);
	if(mysql_num_rows($run)>0){
		$r = array();
	while($row=mysql_fetch_assoc($run)){
			$r[] = $row;
	}
	$r_json = json_encode($r);
	$ret_json = '{"result":"ok","infos":'.$r_json.'}';
	echo $ret_json;
	}else{
		$ret_json = '{"result":"no_login"}';
		echo $ret_json;
	}
 }  
 ?>