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
		$addressCab = $_POST['addressCab'];
		$nameCab = $_POST['nameCab'];
		$osnCab = $_POST['osnCab'];	
		$sql = "insert into SvedObObUcKab (addressCab, nameCab, osnCab) VALUES('$addressCab','$nameCab','$osnCab')";
		echo $sql; 
	}
?>	


<div class="container">
	<div class="row">

		<table class="table">
			<tr itemprop="SvedObObUcKab">
				<th itemprop="addressCab">Адрес места нахождения</th>
				<th itemprop="nameCab">Наименование оборудованного учебного кабинетова</th>
				<th itemprop="osnCab">Оснащенность оборудованного учебного кабинетова</th>
			</tr>	


            <?php
			$sql = "select * from SvedObObUcKab";
			$result_table = $connection->query($sql);
			foreach($result_table as $row)
			{
				echo '<tr>
				<td>'.$row['SvedObObUcKab'].'</td>
				<td>'.$row['nameCab'].'</td>
				<td>'.$row['osnCab'].'</td>
				<td><a href="Kabinetov.php?kod='.$row['Kod_Pomejenia'].'"><button tupe="button" class="btn btn-danger btnuvol" data-toggle="modal" data-target="#myModal" data-Kod_Pomejenia="'.
				$row['Kod_Pomejenia'].'"data-AdresMestNaxojd="'.$row['AdresMestNaxojd'].'">Просмотреть</button></a></td>
				</tr>';
			}
			echo '</table>';
			$result_table->close();
	