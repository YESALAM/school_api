<?php
header("Content-Type: application/json; charset=UTF-8");
include("connect.php");
$upload_dir = "uploads";
$que = "select *,count(*) from gallery GROUP BY gallery_name ";
$run = mysql_query($que) or die(mysql_error());
if (mysql_num_rows($run) > 0) {
    $ret_json = '{"result":"ok",';
    $r = array();
    while ($row = mysql_fetch_assoc($run)) {
        $gallery_name = $row['gallery_name'];
        $image_name = $row['image_name'];
        $r[] = $row;
    }
    $r_json = json_encode($r);
    $ret_json .= '"galleries":' . $r_json . '}';
    echo $ret_json;

} else {
    $json = '{"result":"no"}';
    echo $json;


}


?>		