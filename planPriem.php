<?php
include 'temp/head_index.php';

include 'temp/header_index.php';

$conn = new mysqli('localhost','root','','vakanty'); 


?>


<div class="container">
	<div class="row">
		<table class="table table-striped">
        <tr class="table-warning">
        <tr itemprop=”eduChislen”>
<td itemprop=”eduCode”>Код</td>
<td itemprop=”eduName”> Наименование профессии, специальности, направления подготовки </td>
<td itemprop=”eduLevel”> Уровень образования </td>
<td itemprop=”eduForm”> Форма обучения </td>
<td itemprop=”numberBF”> Численность обучающихся за счет бюджетных ассигнований федерального бюджета </td>
<td itemprop=”numberBR”> Численность обучающихся за счет бюджетов субъектов Российской Федерации </td>
<td itemprop=”numberBM”> Численность обучающихся за счет местных бюджетов</td>
<td itemprop=”numberP”> Численность обучающихся за счет средств физических и (или) юридических лиц </td>
<td itemprop=”numberF”> Численность обучающихся, являющихся иностранными гражданами </td>
</tr>




<?php
			$q = "select * from plan_priem";
        
            $result = $conn->query($q);
            foreach ($result as $row) {

			echo '<tr>
			<td>'.$row['id_plan'].'</td>
			<td>'.$row['naim_spec'].'</td>
			<td>'.$row['level_obraz'].'</td>
			<td>'.$row['form_obuch'].'</td>
			<td>'.$row['kolvo_mestBAFB'].'</td>
            <td>'.$row['kolvo_mestBSRF'].'</td>
            <td>'.$row['kolvo_mestMB'].'</td>
            <td>'.$row['kolvo_mestFizUr'].'</td>
            <td>'.$row['kolvo_mestInostran'].'</td>
			</tr>';
			}
			$result->free();
			$conn->close(); 
			?>
</table>
<?php
include 'temp/footer_index.php';
?>

