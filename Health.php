<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';
include 'database.php';
?>

<div class="container">
	<div class="row">
<table class="table table-striped">
<tr>  
<td itemprop=”NaimPrem”>Наименование помещение</td>
<td itemprop=”AdresIocations”>Адрес места нахождения</td>
<td itemprop=”Square”>Площадь</td>
<td itemprop=”NumberSeats”>Количесто мест</td>     
<td itemprop=”FitnessDisabilities”>Приспособленность ограниченными </td>           
</tr> 

<?php
$result= $conn->query("select * from premises");
while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['NaimPrem'].'</td>
<td>'.$row['AdresIocations'].'</td>
<td>'.$row['Square'].'</td>
<td>'.$row['NumberSeats'].'</td>
<td>'.$row['FitnessDisabilities'].'</td>
</tr>';
}
$result->free();

?>


