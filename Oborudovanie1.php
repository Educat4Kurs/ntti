<?php
session_start();
include 'temp/head.php';
include 'temp/navbar.php';
	//выполним соединение с БД
	$connection = new mysqli('localhost','root','','Denr') or 
	die(mysqli_errno($connect).mysqli_error($connect));
	
?>

<div class="container">
	<div class="row">
	</div>
</div>
<?php 	
	if (!empty($_POST)) 
	{
		$Kod_Oborudovanie = $_POST['Kod_Oborudovanie'];
		$NaimObject = $_POST['NaimObject'];
		$Kolicestvo = $_POST['Kolicestvo'];	
		$God_vspuska = $_POST['God_vspuska'];	
		$Kod_Kabinetova = $_POST['Kod_Kabinetova'];	
		$sql = "insert into Oborudovanie (Kod_Oborudovanie, NaimObject, Kolicestvo,God_vspuska,Kod_Kabinetova) VALUES('$Kod_Oborudovanie','$NaimObject','$Kolicestvo','$God_vspuska','$Kod_Kabinetova')";
		echo $sql; 
	}
?>	


<div class="container">
	<div class="row">

		<table class="table">
			<tr itemprop="Oborudovanie">
				<th itemprop="Kod_Oborudovanie">Код</th>
				<th itemprop="NaimObject">Наименование объекта</th>
				<th itemprop="Kolicestvo">Количество</th>
				<th itemprop="God_vspuska">Год_выпуска</th>
				<th itemprop="Kod_Kabinetova">Код_Кабинетова</th>
			</tr>	


            <?php
			$sql = "select * from Oborudovanie";
			$result_table = $connection->query($sql);
			foreach($result_table as $row)
			{
				echo '<tr>
				<td>'.$row['Kod_Oborudovanie'].'</td>
				<td>'.$row['NaimObject'].'</td>
				<td>'.$row['Kolicestvo'].'</td>
				<td>'.$row['God_vspuska'].'</td>
				<td>'.$row['Kod_Kabinetova'].'</td>
				</tr>';
			}
			echo '</table>';
			$result_table->close();
