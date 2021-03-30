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
	if (!empty($_GET)) 
	{
		$kod =$_GET['kod'];	//ЭТО код помещения, нам надо выбрать кабинеты этого помещения, у которых такой же точно код
	}
?>	


<div class="container">
	<div class="row">

		<table class="table">
			<tr itemprop="Kabinetov">
				<th itemprop="Kod_Kabinetova">Код</th>
				<th itemprop="NaimRfbinet">Наименование кабинет</th>
				<th itemprop="Kod_Vida">Код_Вида</th>
				<th itemprop="Kod_Pomejenia">Код_Помещения</th>
			</tr>	


            <?php
			$sql = "select * from Kabinetov where Kod_Pomejenia=".$kod;
			$result_table = $conn->query($sql);
			foreach($result_table as $row)
			{
				echo '<tr>
				<td>'.$row['Kod_Kabinetova'].'</td>
				<td>'.$row['NaimRfbinet'].'</td>
				<td>'.$row['Kod_Vida'].'</td>
				<td>'.$row['Kod_Pomejenia'].'</td>
				<td><a href="Oborudovanie.php?kod='.$row['Kod_Kabinetova'].'"><button tupe="button" class="btn btn-danger btnuvol" data-toggle="modal" data-target="#myModal" data-Kod_Kabinetova="'.
				$row['Kod_Kabinetova'].'"data-NaimRfbinet="'.$row['NaimRfbinet'].'">Просмотреть</button></a></td>
				</tr>';
			}
			echo '</table>';
			$result_table->close();
	?>