<?php
session_start();
include 'temp/head.php';
include 'temp/navbar.php';
	//выполним соединение с БД
	$conn = new mysqli('localhost','root','','Denr') 
?>
 
<div class="container">
    <div class="row">
        <table class="table table-striped">
        <tr class="table-warning">
<tr itemprop=”eduAccred”>
<td>N</td>
<td itemprop=”addressPlace”>почтовый индекс, субъект Российской Федерации, город, улица (переулок, бульвар), номер дома</td>
</tr>
<?php
            $q = "select * from pomejenia";
            $result = $conn->query($q);
            foreach ($result as $row) {

       
            
            echo '<tr>
            <td>'.$row['Kod_Pomejenia'].'</td>
            <td>'.$row['AdresMestNaxojd'].'</td>
			<td><a href="Kabinetov.php?kod='.$row['Kod_Pomejenia'].'"><button tupe="button" class="btn btn-danger btnuvol" data-toggle="modal" data-target="#myModal" data-Kod_Pomejenia="'.
			$row['Kod_Pomejenia'].'"data-AdresMestNaxojd="'.$row['AdresMestNaxojd'].'">Просмотреть</button></a></td>
            </tr>';
        }
            $result->free();
            $conn->close(); 
            ?>
        </table>
    </div>  
</div>


