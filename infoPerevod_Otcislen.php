<?php
include 'temp/head_index.php';

include 'temp/header_index.php';

$conn = new mysqli('localhost','root','','vakanty'); 


?>


<div class="container">
	<div class="row">
		<table class="table table-striped">
        <tr class="table-warning">
        <tr itemprop=”eduPerevod”>
<td itemprop=”eduCode”>Код</td>
<td itemprop=”eduName”> Наименование профессии, специальности, направления подготовки </td>
<td itemprop=”eduLevel”> Уровень образования </td>
<td itemprop=”eduForm”> Форма обучения </td>
<td itemprop=”numberOut”> Численность обучающихся, переведенных в другие образовательные организации </td>
<td itemprop=”numberTo”> Численность обучающихся, переведенных из других образовательных организаций </td>
<td itemprop=”numberRes”> Численность восстановленных обучающихся </td>
<td itemprop=”numberExp”> Численность отчисленных обучающихся </td>
</tr>




<?php
			$q = "select * from info_perevod_otch";
        
            $result = $conn->query($q);
            foreach ($result as $row) {

			echo '<tr>
			<td>'.$row['id_info'].'</td>
			<td>'.$row['naim_spec'].'</td>
			<td>'.$row['level_obraz'].'</td>
			<td>'.$row['form_obuch'].'</td>
			<td>'.$row['chislo_perevodV'].'</td>
            <td>'.$row['chislo_perevodIZ'].'</td>
            <td>'.$row['chislo_vostanov'].'</td>
            <td>'.$row['chislo_otchislen'].'</td>
			</tr>';
			}
			$result->free();
			$conn->close(); 
			?>
</table>
<?php
include 'temp/footer_index.php';
?>

