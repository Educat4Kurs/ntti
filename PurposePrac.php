<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';


//выполним соединение с БД
$mysqli=new mysqli ("localhost", "root", "","dopbap_arkadi");

$mysqli->set_charset("utf8");
?>

<?php
	//Если массив POST непустой, то добавить запись в базу	
	if (!empty($_POST)) 
{

$AdresIocations=$_POST['AdresIocations'];
$AdresIocations=$_POST['AdresIocations'];
$Square=$_POST['Square'];
$NumberSeats=$_POST['NumberSeats'];
$FitnessDisabilities=$_POST['FitnessDisabilities'];
$sql="insert into premises(AdresIocations, AdresIocations,Square,NumberSeats,FitnessDisabilities) values ('$AdresIocations','$AdresIocations','$Square','$NumberSeats','$FitnessDisabilities')";
$result= $mysqli->query($sql);
}
?>
<div class="container">
	<div class="row">
<table class="table table-striped">
<tr>  
<tr itemprop="AdresIocations">
<td itemprop=”AdresIocations”>Адрес места нахождения</td>
<td itemprop=”AdresIocations”>Адрес места нахождения</td>
<td itemprop=”Square”>Площадь</td>
<td itemprop=”NumberSeats”>Количесто мест</td>     
<td itemprop=”FitnessDisabilities”>Приспособленность ограниченными </td>           
</tr> 

<?php
$result= $mysqli->query("select * from premises");
while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['AdresIocations'].'</td>
<td>'.$row['AdresIocations'].'</td>
<td>'.$row['Square'].'</td>
<td>'.$row['NumberSeats'].'</td>
<td>'.$row['FitnessDisabilities'].'</td>
</tr>';
}
$result->free();
$mysqli->close(); 
?>
