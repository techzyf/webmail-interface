<?php
/**
 * Created by PhpStorm.
 * User: zhang
 * Date: 2017/10/3
 * Time: 17:14
 */
//Connect to database
$conn=mysqli_connect('sophia.cs.hku.hk', 'yfzhang', '683046qq') or die('Error! '. mysqli_error($conn));
//Select database
$id=$_GET['id'];
$label=$_GET['newlabel'];
mysqli_select_db($conn, 'yfzhang') or die('Error! '. mysqli_error($conn));

if($label=="important" || $label=="inbox" ){
    $query1 = "update emails set mailbox= '$label' where emailID=".$_GET['id'];

    mysqli_query($conn, $query1) or die ('Query Error! '. mysqli_error($conn));
}
if($label=="trash" ){
    $query2="SELECT * FROM emails where emailID=".$_GET['id'];
    $result = mysqli_query($conn, $query2) or die('Error! '. mysql_error($conn));
    $row = mysqli_fetch_array($result);
    if($row['mailbox']!="trash") {
        $query1 = "update emails set mailbox= '$label' where emailID=" . $_GET['id'];
        mysqli_query($conn, $query1) or die ('Query Error! '. mysqli_error($conn));
    }else{
        $query3 = "DELETE FROM emails where emailID=" . $_GET['id'];
        mysqli_query($conn, $query3) or die ('Query Error! '. mysqli_error($conn));
    }


}



?>