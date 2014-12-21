<html>
<?php
require_once "config.php";

$id = $_POST['id'];
$passwd = $_POST['passwd'];

$conn = mysql_connect('localhost' , 'root' , 'takming') or die("Can not connect to mysql");
$db = mysql_select_db('D10116114');
$sql = "select * from user_profile where id = '[$id]'";
$result = mysql_query($sql) or die("can not get data");
$row = mysql_fetch_array($result);
$loginSuccess = false;
if ($row && $row['password'])
{
    if (md5($passwd) == $row['password'])
    {
        loginSuccess == true;
    }
}

if ($loginSuccess)
{
    echo "Login Success";
}
/*
else
{
    
}
*/
?>
</html>