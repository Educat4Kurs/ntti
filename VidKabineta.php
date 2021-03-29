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
		$Kod_Vida = $_POST['Kod_Vida'];
		$NazvVida = $_POST['NazvVida'];
		$sql = "insert into VidKabineta (Kod_Vida, NazvVida) VALUES('$Kod_Vida','$NazvVida')";
		echo $sql; 
	}
?>	
<div class="container">
	<div class="row">

		<table class="table">
			<tr itemprop="VidKabineta">
				<th itemprop="Kod_Vida">Код</th>
				<th itemprop="NazvVida">Название вида</th>
			</tr>	
            <?php
			$sql = "select * from VidKabineta";
			$result_table = $connection->query($sql);
			foreach($result_table as $row)
			{
				echo '<tr>
				<td>'.$row['Kod_Vida'].'</td>
				<td>'.$row['NazvVida'].'</td>
				</tr>';
			}
			echo '</table>';
			$result_table->close();
