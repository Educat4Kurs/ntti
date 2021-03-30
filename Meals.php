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
<tr itemprop=”purposeLibr”>
<td itemprop=”Kod_meal”>Код</td>
<td itemprop=”objName”>Наименование объекта</td>
<td itemprop=”objAddress”> Адрес места нахождения объекта </td>
<td itemprop=”objSq”> Площадь объекта </td>
<td itemprop=”objCnt”> Количество мест </td>
<td itemprop=”objOvz”> Приспособленность для использования инвалидами и лицами с ограниченными возможностями здоровья </td>
</tr>



<?php
            $q = "select * from meals";
            $result = $conn->query($q);
            foreach ($result as $row) {

				echo '<tr>
				<td>'.$row['Kod_meal'].'</td>
				<td>'.$row['ObjName'].'</td>
				<td>'.$row['ObjAddress'].'</td>
				<td>'.$row['ObjSq'].'</td>
				<td>'.$row['ObjCnt'].'</td>
				<td>'.$row['ObjOvz'].'</td>
				
				</tr>';
			}
				$result->free();
				$conn->close(); 
				?>
			</table>
		</div>  
	</div>