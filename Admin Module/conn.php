<?php
function createconn1()
{
	$conn1=mysqli_connect("localhost","root","Hello@Akash");
	return $conn1;
}
function closeconn()
{
	$v=createconn1();
	mysqli_close($v);
}
?>