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

<tr itemprop="Kabinet">
<th itemprop="Kod_kabi">Код</th>
<th itemprop="NaimKabi">Наименование Кабинет</th>
<th itemprop="FitnessHealth">Приспособленность  возможностями здоровья</td>
<th itemprop="Kod_typka">Код вид кабинета</th>
<th itemprop="Kod_prem">Код Помещение</th>            
</tr>  





<?php
			$sql = "select * from kabinet where Kod_obje=".$kod;
			$result_table = $connection->query($sql);
			foreach($result_table as $row)
			{
				echo '<tr>
				<td>'.$row['Kod_kabi'].'</td>
				<td>'.$row['NaimKabi'].'</td>
				<td>'.$row['FitnessHealth'].'</td>
				<td>'.$row['Kod_typka'].'</td>
                <td>'.$row['Kod_prem'].'</td>
				
				<td><a href="Objectovz.php?kod='.$row['Kod_kabi'].'"><button tupe="button" class="btn btn-danger btnuvol" data-toggle="modal" data-target="#myModal" data-Kod_kabi="'.
				$row['Kod_kabi'].'"data-NaimKabi="'.$row['NaimKabi'].'">Просмотреть</button></a></td>
				</tr>';
			}
			echo '</table>';
			$result_table->close();





