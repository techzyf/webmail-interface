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
mysqli_select_db($conn, 'yfzhang') or die('Error! '. mysqli_error($conn));
$query = "SELECT * FROM emails WHERE emailID='$id' ";
//Execute SQL query
$result = mysqli_query($conn, $query) or die('Error! '. mysql_error($conn));

while($row = mysqli_fetch_array($result)) {
    print "<div class=\"emailcontent\" id=".$row['emailID'].">";
    print "<p>".$row['content']."</p>" ;//Add code to display the notes
    print "</div>";
}

?>