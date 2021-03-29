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
<tr itemprop=”eduAccred”>
<td itemprop=”eduCode”>Код</td>
<td itemprop=”eduName”> Наименование профессии, специальности, направления подготовки </td>
<td itemprop=”eduLevel”> Уровень образования </td>
<td itemprop=”eduForm”> Форма обучения </td>
<td itemprop=”learningTerm”> Срок получения образования </td>
<td itemprop=”dateEnd”>дд.мм.гггг</td>
<td itemprop=”language”> Языки, на которых осуществляется образование (обучение)</td>
</tr>
<?php
			$q = "select * from educational_program";
          //  $result=$mysqli->query("select * from educational_program");
            $result = $conn->query($q);
            foreach ($result as $row) {

		//	foreach( $row = $result->fetch_array() )
			
			echo '<tr>
			<td>'.$row['Kod_educational'].'</td>
			<td>'.$row['Naimenovaniye_akkredituyushchey_organizatsii'].'</td>
			<td>'.$row['level_obrazov'].'</td>
			<td>'.$row['Forma_obucheniya'].'</td>
			<td>'.$row['Srok_obucheniya'].'</td>
            <td>'.$row['DOkonch_obuch'].'</td>
            <td>'.$row['YAzyk_obucheniya'].'</td>

			<td><a href="Kabinetov.php?kod='.$row['Kod_educational'].'"><button tupe="button" class="btn btn-danger btnuvol" data-toggle="modal" data-target="#myModal" data-Kod_Pomejenia="'.
			$row['Kod_Pomejenia'].'"data-AdresMestNaxojd="'.$row['AdresMestNaxojd'].'">Просмотреть</button></a></td>
			

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