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
$box=$_GET['box'];
$num=$_GET['num'];
mysqli_select_db($conn, 'yfzhang') or die('Error! '. mysqli_error($conn));
$query = "SELECT * FROM emails WHERE mailbox='$box' ORDER by emailID desc  LIMIT ".$_GET['lastRecord'].", $num";
//Execute SQL query
$result = mysqli_query($conn, $query) or die('Error! '. mysql_error($conn));
$q1="SELECT * FROM emails WHERE mailbox='$box'";
$r1=mysqli_query($conn,$q1);
$num1=mysqli_num_rows($r1);

if($num1+4<$_GET['lastRecord']+5 && $num==5) {

    die('No email left. Please go previous or switch to other boxes.' . mysql_error($conn));
}

while($row = mysqli_fetch_array($result)) {
    print "<div class=\"emails\" id=".$row['emailID'].">";
    print "<input type=\"checkbox\" name=".$box."><a class=\"sender\" href=\"javascript:void(0)\" onclick=\"getcontent(this)\" >".$row['sender']."</a><a class=\"title\" href=\"javascript:void(0)\" onclick=\"getcontent(this)\">".$row['title']."</a><a class=\"date\" href=\"javascript:void(0)\" onclick=\"getcontent(this)\">".$row['date']."</a>" ;//Add code to display the notes
    print "</div>";
}

?>