<?php
session_start();
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';


$conn = new mysqli('localhost','root','','environment') 
?>

<div class="container">
    <div class="row">
        <table class="table table-striped">
        <tr class="table-warning">
<tr itemprop=”purposeCab”>
<td itemprop=”Kod_pupr”>Код</td>
<td itemprop=”addressPrac”>Адрес места нахождения</td>
<td itemprop=”namePrac”> Наименование приспособленного объекта для проведения практических занятий</td>
<td itemprop=”osnPrac”> Оснащенность приспособленного объекта для проведения практических занятий</td>
<td itemprop=”ovzPrac”> Приспособленность для использования инвалидами и лицами с ограниченными возможностями здоровья</td>
</tr>


<?php
            $q = "select * from purposeprac";
            $result = $conn->query($q);
            foreach ($result as $row) {

				echo '<tr>
				<td>'.$row['Kod_pupr'].'</td>
				<td>'.$row['AddressPrac'].'</td>
				<td>'.$row['NamePrac'].'</td>
				<td>'.$row['OsnPrac'].'</td>
				<td>'.$row['OvzPrac'].'</td>
				
				</tr>';
			}
				$result->free();
				$conn->close(); 
				?>
			</table>
		</div>  
	</div>








