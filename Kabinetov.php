<?php

include 'temp/head.php';
include 'temp/header.php';
include 'temp/navbar.php';
include 'database.php';
	
?>

<div class="container">
	<div class="row">
	</div>
</div>
<?php 	
$Kod=0;
	if (!empty($_GET)) 
	{
		$kod =$_GET['kod'];	//ЭТО код помещения, нам надо выбрать кабинеты этого помещения, у которых такой же точно код
	}
?>	


<div class="container">
	<div class="row">

		<table class="table">
			<tr itemprop="purposeLibr">
				<th itemprop="objName">Наименование объекта</th>
				<th itemprop="objAddress">Адрес места нахождения объекта</th>
				<th itemprop="objSq">Площадь объекта</th>
				<th itemprop="objCnt">Количество мест</th>
			</tr>	


            <?php
			$sql = "select * from Kabinetov where Kod_Kabinetova=".$kod;
			$result_table = $conn->query($sql);
			foreach($result_table as $row)
			{
				echo '<tr>
				<td>'.$row['Kod_Kabinetova'].'</td>
				<td>'.$row['NaimRfbinet'].'</td>
				<td>'.$row['Kod_Vida'].'</td>
				<td>'.$row['Kod_Pomejenia'].'</td>
				<td><a href="Oborudovanie.php?Kod_Kabinetova='.$row['Kod_Kabinetova'].'"><button tupe="button" class="btn btn-danger btnuvol">Просмотреть</button></a></td></tr>';
			}
			echo '</table>';
			$result_table->close();
	?>