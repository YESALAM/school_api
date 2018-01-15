<?php
header("Content-Type: application/json; charset=UTF-8");
include("connect.php");

if (!isset($_GET['class'])) {
    echo '{"result":"no_id"}';
} else {
    $class = $_GET['class'];
    $section = $_GET['section'];
    $que = "select * from publish_time_table where class_name='$class' and 	section = '$section' ";
    $run = mysql_query($que) or die(mysql_error());
    $r = array();
    if (mysql_num_rows($run) > 0) {
        while ($row = mysql_fetch_array($run)) {
            $r[] = $row;
        }

        $r_json = json_encode($r);
        $ret_json = '{"result":"ok","published":' . $r_json . '}';
        echo $ret_json;


    } else {
        echo '{"result":"no"}';
    }
}
?>		