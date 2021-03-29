<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';

//выполним соединение с БД
$mysqli=new mysqli ("localhost", "root", "","dopbap_arkadi");

$mysqli->set_charset("utf8");
?>

 <div class="container">
	<div class="row">

		<table class="table">
			<tr itemprop="Premises">
				<th itemprop="Kod_prem">Код </th>
				<th itemprop="NaimPrem">Наименование помещение</th>
				<th itemprop="AdresIocations">Адрес места нахождения</th>
				<th itemprop="Square">Площадь</th>
				<th itemprop="NumberSeats">Количесто мест</th>
                <th itemprop="FitnessDisabilities">Приспособленность ограниченными возможностями</th>
			</tr>

<?php
$result= $mysqli->query("select * from premises");
while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['Kod_prem'].'</td>
<td>'.$row['NaimPrem'].'</td>
<td>'.$row['AdresIocations'].'</td>
<td>'.$row['Square'].'</td>
<td>'.$row['NumberSeats'].'</td>
<td>'.$row['FitnessDisabilities'].'</td>
</tr>';
}
$result->free();
$mysqli->close(); 
?>




              



