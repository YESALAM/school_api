<?php
include_once("../../connection/connect.php");

if (!isset($_GET['id'])) {
    echo '{"result":"no_id"}';
} else {
    $id = $_GET['id'];
    $que = "select * from gallery where gallery_name='$id' ";
    $run = mysql_query($que) or die(mysql_error());
    $r = array();
    while ($row = mysql_fetch_assoc($run)) {
        $r[] = $row;

        $s_no = $row['s_no'];
        $image_name = $row['image_name'];

    }

    $r_json = json_encode($r);
    $ret_json = '{"result":"ok","images":' . $r_json . '}';
    echo $ret_json;


}
?>		