<?php		
header("Content-Type: application/json; charset=UTF-8");
include_once("../../connection/connect.php");
$que="SELECT * FROM `holiday_manage` ";
$run=mysql_query($que) or die(mysql_error());
if(mysql_num_rows($run)>0){
$r = array();
while($row=mysql_fetch_assoc($run)){		
	    $r[] = $row;
		}
		$r_json = json_encode($r);
		$ret_json.= '{"result":"ok","holidays":'.$r_json.'}';
		echo $ret_json;

}else{
$json = '{"result":"no"}';
            echo $json;


}

	
?>		