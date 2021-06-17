<?php
$connection = mysqli_connect('localhost', 'fashicko_sakhiho', 'hgRTR$#$#@9213816442');
if (!$connection){
    die("Database Connection Failed" . mysqli_error($connection));
}
$select_db = mysqli_select_db($connection, 'fashicko_botm');
if (!$select_db){
    die("Database Selection Failed" . mysqli_error($connection));
}
?>