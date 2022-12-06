<?php
require_once 'conn.php';
$conn1=createconn1();
mysqli_select_db($conn1,"projectsubmission");
$id="<script>document.write(localStorage.getItem('sid'))</script>";
echo "<pre>";

print_r(gettype((int)$id));
echo "</pre>";
die("id");
$query=mysqli_query($conn1,"SELECT proj_name from project where s_id=$id");
                var_dump($query);
                print_r($query);
                die("query");
?>