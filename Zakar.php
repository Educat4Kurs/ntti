<?php
include 'temp/head_index.php';
include 'temp/navbar_index.php';
include 'temp/header_index.php';

$conn =  new mysqli('localhost','root','','syrpp'); 


?>

<div class="container">
	<div class="row">
		<table class="table table-striped">
        <tr class="table-warning">
<tr itemprop=”eduPOAccred”>
<td itemprop=”eduCode”>Код</td>
<td itemprop=”eduName”> Наименование профессии, специальности, направления подготовки </td>
<td itemprop=”eduLevel”> Уровень образования </td>
<td itemprop=”perechenNir”>Перечень научных направлений, в рамках которых ведется научная (научно-исследовательская) деятельность </td>
<td itemprop=”resultNir”> Результаты научной (научно-исследовательской) деятельности </td>
<td itemprop=”baseNir”> Сведения о научно-исследовательской базе для осуществления научной (научно-исследовательской) деятельности</td>
</tr>
<?php
			$q = "select * from specialty";
          //  $result=$mysqli->query("select * from educational_program");
            $result = $conn->query($q);
            foreach ($result as $row) {

		//	foreach( $row = $result->fetch_array() )
			
			echo '<tr>
			<td>'.$row['Kod_Specialty'].'</td>
			<td>'.$row[''].'</td>
			<td>'.$row[''].'</td>
			<td>'.$row[''].'</td>
			<td>'.$row[''].'</td>
			<td>'.$row[''].'</td>
			<td>'.$row[''].'</td>
			<td>'.$row[''].'</td>
			</tr>';
			}
			$result->free();
			$conn->close(); 
			?>
		</table>
	</div>	
</div>



<?php
include 'temp/footer_index.php';
?>