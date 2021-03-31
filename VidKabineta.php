<?php
include 'temp/head.php';
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
		$kod =$_GET['kod'];
	}
?>	
<div class="container">
	<div class="row">

		<table class="table">
			<tr itemprop="purposeSport">
				<th itemprop="objName">Наименование объекта</th>
				<th itemprop="objAddress">Адрес места нахождения объекта</th>
				<th itemprop="objSq">Площадь объекта</th>
				<th itemprop="objCnt">Количество мест</th>
			</tr>	
            <?php
			$sql = "select * from VidKabineta";
			$result_table = $conn->query($sql);
			foreach($result_table as $row)
			{
				echo '<tr>
				<td>'.$row['Kod_Vida'].'</td>
				<td>'.$row['NazvVida'].'</td>
				</tr>';
			}
			echo '</table>';
			$result_table->close();