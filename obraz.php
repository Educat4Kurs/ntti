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
        <tr itemprop=”eduOp”>
<td itemprop=”eduCode”>Код</td>
<td itemprop=”eduName”> Наименование профессии, специальности, направления подготовки </td>
<td itemprop=”eduLevel”> Уровень образования </td>
<td itemprop=”eduForm”> Форма обучения </td>
<td><a href=”ссылка” itemprop=”opMain”>Описание образовательной программы</a><br><a href=”ссылка” itemprop=”opMain”>РПД образовательной программы</a> </td>
<td><a href=”ссылка” itemprop=”educationPlan”>Учебный план</a> </td>
<td><a href=”ссылка” itemprop=”educationAnnotation”>Аннотация N</a></td>
<td><a href=”ссылка” itemprop=”educationShedule”>Календарный учебный график</a></td>
<td><a href=”ссылка” itemprop=”methodology”>Методические и иные документы, разработанные образовательной организацией для обеспечения образовательного процесса </a></td>
<td><a href=”ссылка” itemprop=”eduPr”>Рабочие программы практик, предусмотренных соответствующей образовательной программой</a></td>
<td><a href=”ссылка” itemprop=”eduEl”>ЭОиДОТ</a> </td>
</tr>




<?php
			$q = "select * from obraz_programm";
        
            $result = $conn->query($q);
            foreach ($result as $row) {

			echo '<tr>
			<td>'.$row['id_op'].'</td>
			<td>'.$row['spec'].'</td>
			<td>'.$row['level_obraz'].'</td>
			<td>'.$row['form_obuch'].'</td>
			<td>'.$row['href_prilozjenie'].'</td>
            <td>'.$row['href_uchPlan'].'</td>
            <td>'.$row['href_RabochProgramDiszhip'].'</td>
            <td>'.$row['href_calendarGraphic'].'</td>
            <td>'.$row['href_methodDocument'].'</td>
            <td>'.$row['href_RabochProgramPractic'].'</td>
            <td>'.$row['programm_obuch'].'</td>
			</tr>';
			}
			$result->free();
	
			?>
</table>
<?php
include 'temp/footer.php';
?>

