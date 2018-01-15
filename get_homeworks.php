<?php
header("Content-Type: application/json; charset=UTF-8");
include("connect.php");

if (!isset($_GET['class'])) {
    echo '{"result":"no_class"}';
} else {
    $class = $_GET['class'];
    $section = $_GET['section'];
    $que = "select * from homework_student where homework_class='$class' and homework_section='$section'";;
    $run = mysql_query($que) or die(mysql_error());
    if (mysql_num_rows($run) > 0) {
        $r = array();
        while ($row = mysql_fetch_array($run)) {
            $r[] = $row;
        }

        $r_json = json_encode($r);
        $ret_json = '{"result":"ok","homeworks":' . $r_json . '}';
        echo $ret_json;
    } else {
        echo '{"result":"not_ok"}';
    }

}
?>		