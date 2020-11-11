<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
include('dbconnect.php');
try{
	$stmt = $con->prepare("SELECT * FROM traces order by record_time DESC");
	$stmt->execute();
	$arr = $stmt->fetchAll(PDO::FETCH_NUM);
	$result="";

	foreach($arr as $values){
		echo $values[0]."  |  ".$values[1]."  |  ".$values[2]."  |  ".$values[3]."<br/>";
	}
	} catch(PDOException $e){
		echo "error!! ".$e->getMessage();
	}
?>
