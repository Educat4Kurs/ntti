<?php
session_start();
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';
	//выполним соединение с БД
	$conn = new mysqli('localhost','root','','environment')
?>


<div class="container">
	<div class="row">
<table class="table table-striped">
<tr>  
<td itemprop=”Kod_puca”>Код</td>
<td itemprop=”addressCab”>Адрес места нахождения</td>
<td itemprop=”nameCab”>Наименование Кабинет</td>
<td itemprop=”osnCab”>Приспособленность  возможностями здоровья</td>
<td itemprop=”ovzCab”>Приспособленность ограниченными </td>             
</tr>  





<?php
            $q = "select * from purposecab ";
            $result = $conn->query($q);
            foreach ($result as $row) {

				echo '<tr>
				<td>'.$row['Kod_puca'].'</td>
				<td>'.$row['AddressCab'].'</td>
				<td>'.$row['NameCab'].'</td>
				<td>'.$row['OsnCab'].'</td>
				<td>'.$row['OvzCab'].'</td>
				
				
				</tr>';
			}
				$result->free();
				$conn->close(); 
				?>
			</table>
		</div>  
	</div>













