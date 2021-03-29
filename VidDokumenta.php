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
<td itemprop=”orgName”> Наименование аккредитующей организации</td>
<td itemprop=”dateEnd”>дд.мм.гггг</td>
</tr>
<?php
			$q = "select * from viddokumenta";
          //  $result=$mysqli->query("select * from educational_program");
            $result = $conn->query($q);
            foreach ($result as $row) {

		//	foreach( $row = $result->fetch_array() )
			
			echo '<tr>
			<td>'.$row['Kod_educational'].'</td>
			<td>'.$row['Naimenovaniye_vida_dokumenta'].'</td>
			<td>'.$row['naim_accrOrgan'].'</td>
			<td>'.$row['Srok_deystviya_professional_no-obshchestvennoy_akkreditatsi'].'</td>
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