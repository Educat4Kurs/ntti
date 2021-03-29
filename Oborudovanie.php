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

	if (!empty($_GET)) 
	{
	$kod =$_GET['kod'];	
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
			$sql = "select * from Oborudovanie where Kod_Kabinetova= ".$kod  ;
			var_dump($sql);
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
