<?php

//include (../config.php);

$search_value = $_POST["search_item"];


$conn = mysqli_connect('localhost','root','','ecommerce') or die('connection failed!!');

$sql = "SELECT * FROM product WHERE pname LIKE '%{$search_value}%'";

$run = mysqli_query($conn, $sql) or die('sql query failed!!');

$output = "";
if (mysqli_num_rows($run)>0){
    $output = '<table border = "1" cellspacing="0" width="100%" cellpadding="10px" >
       <tr>
       <th width="100px">ID</th>
       <th>Product</th>
       </tr>';

    while ($row = mysqli_fetch_assoc($run)){
        $output .= "<tr><td>{$row['pname']}</td></tr>";
		
    }
	

    $output .= "</table>";
	
	mysqli_close($conn);
    echo $output;
}else{
    echo "<h1>Record Not found!!</h1>";
}



?>