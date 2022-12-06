<?php
	$conn1=mysqli_connect("localhost","root","Hello@Akash");
	mysqli_select_db($conn1,"projectsubmission");

	$admin_query=mysqli_query($conn1,"SELECT a_type from admin where a_id=".$_POST["a_id"]);
	$admin_rows = mysqli_fetch_array($admin_query);
	if(mysqli_num_rows($admin_query)>0)
	{
		$return_data["a_type"]=$admin_rows["a_type"];
	}
 
	$query=mysqli_query($conn1,"SELECT s_id,s_name,s_gr,s_pn,s_email,'NOT YET ASSIGNED' from college_database.stud_table where s_id NOT IN (SELECT s_id from projectsubmission.student)");
	if(mysqli_num_rows($query)>0)
	{
		$arr1=[];
		$arr2=[];
		$arr3=[];
		$total_rows=mysqli_query($conn1,"SELECT s_id,s_email,s_name from college_database.stud_table where s_id NOT IN (SELECT s_id from projectsubmission.student) order by s_id");
	    $a=0;
	    while($rows= mysqli_fetch_array($total_rows)){
	        $arr1[$a]=$rows['s_id'];
	        $arr2[$a]=$rows['s_email'];
	        $arr3[$a]=$rows['s_name'];
	        $a++;
	    }
		mysqli_query($conn1,"INSERT INTO student(s_id,s_name,s_gr,s_pn,s_email,group_id) SELECT s_id,s_name,s_gr,s_pn,s_email,'NOT YET ASSIGNED' from college_database.stud_table where s_id NOT IN (SELECT s_id from projectsubmission.student) order by s_id");
		ini_set("SMTP", "smtp.gmail.com");
		ini_set("sendmail_from", "cartoonlovers185@gmail.com");
		ini_set("smtp_port", "465");
		for($i=0;$i<count($arr1);$i++){
			$vkey = base64_encode($arr1[$i]);
			$source = base64_encode("student");
	    	$msg="<html><body><h1>Hi ".explode("@",$arr3[$i])[0].",</h1> <p>A new Account Has been created for You.</p><p>Click the url below to activate your account and select a password!</p><p>Admin%20Module/setPassword.php?vkey=$vkey&source=$source</p><p>If the above URL does not work try copying and pasting it into your browser. If you continue to have problems, please feel free to contact us.</p><p>Regards Admin.</p></body></html>";
		    $headers = "MIME-Version: 1.0" . "\r\n";
			$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
			$headers .= 'From: PROJECT MANAGEMENT SYSTEM<cartoonlovers185@gmail.com>' . "\r\n";
	    	mail($arr2[$i],"Account Creation",$msg,$headers);
	    }
	}
		
	$teac_total_rows=mysqli_num_rows(mysqli_query($conn1,"SELECT group_id from teacher"));
	$stud_total_rows=mysqli_num_rows(mysqli_query($conn1,"SELECT s_id from college_database.stud_table"));
	if($teac_total_rows==0)
	{
		mysqli_query($conn1,"UPDATE student set group_id='NOT YET ASSIGNED'");
	}

	if($teac_total_rows>0)
	{
		 $remaining_stud_total_rows=0;
		 $remaining_teac_total_rows=$teac_total_rows;
		 $stud_total_rows1 = $stud_total_rows;
		 $z=0;
		 for($i=0;$i<$teac_total_rows;$i++){
		       $remaining_stud_total_rows = ceil($stud_total_rows / $remaining_teac_total_rows);
		       for($j=0;$j<$remaining_stud_total_rows;$j++){
		              mysqli_query($conn1, "UPDATE student set group_id=(SELECT group_id from teacher order by group_id LIMIT $i,1) where s_id IN (SELECT s_id from (SELECT s_id from student order by s_id LIMIT $z,1)l)");
		              $z++;
		        }
		        $remaining_teac_total_rows--;
		        $stud_total_rows = $stud_total_rows - $remaining_stud_total_rows;
		  }
	}

	if(!empty($return_data))
	{
		echo json_encode($return_data);
		exit();	
	}
?>