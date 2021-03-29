<?php
session_start();
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';
	//выполним соединение с БД
	$connection = new mysqli('localhost','root','','dopbap_arkadi') or 
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
			<tr itemprop="Objectovz">
				<th itemprop="Kod_obje">Код </th>
				<th itemprop="NaimObje">Наименование оборудование овз</th>
				<th itemprop="DameVue">Даты выпу</th>
				<th itemprop="Variants">Варианты</th> 
				<th itemprop="Kod_kabi">Код кабинет</th> 
			</tr>	

	



<?php
			$sql = "select * from objectovz  where Kod_kabi= ".$kod  ;
			$result_table = $connection->query($sql);
			foreach($result_table as $row)
			{
				echo '<tr>
				<td>'.$row['Kod_obje'].'</td>
				<td>'.$row['NaimObje'].'</td>
				<td>'.$row['DameVue'].'</td>
				<td>'.$row['Variants'].'</td>
                <td>'.$row['Kod_kabi'].'</td>
				</tr>';
			}
			echo '</table>';
			$result_table->close();

