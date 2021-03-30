<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';
include 'database.php';


?>


<div class="container">
	<div class="row">
		<table class="table table-striped">
        <tr class="table-warning">
        <tr itemprop=”eduPriem”>
<td itemprop=”eduCode”>Код</td>
<td itemprop=”eduName”> Наименование профессии, специальности, направления подготовки </td>
<td itemprop=”eduLevel”> Уровень образования </td>
<td itemprop=”eduForm”> Форма обучения </td>
<td itemprop=”numberBF”> Результаты приема обучающихся за счет бюджетных ассигнований федерального бюджета </td>
<td itemprop=”numberBR”> Результаты приема обучающихся за счет бюджетов субъектов Российской Федерации </td>
<td itemprop=”numberBM”> Результаты приема обучающихся за счет местных бюджетов</td>
<td itemprop=”numberP”> Результаты приема обучающихся за счет средств физических и (или) юридических лиц </td>
<td itemprop=”score”> Средняя сумма набранных баллов по всем вступительным испытаниям </td>
</tr>




<?php
			$q = "select * from result_priem";
        
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
            <td>'.$row['summ_ball'].'</td>
			</tr>';
			}
			$result->free();
			 
			?>
</table>
<?php
include 'temp/footer.php';
?>

