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
<td itemprop=”eduForm”> Форма обучения </td>
<td><a href=”ссылка” itemprop=”opMain”>Описание образовательной программы</a><br><a href=”ссылка”
itemprop=”opMain”>РПД образовательной программы</a> </td>
<td><a href=”ссылка” itemprop=”educationPlan”>Учебный план</a> </td>
<td><a href=”ссылка” itemprop=”educationAnnotation”>Аннотация 1</a> … <a href=”ссылка” 
itemprop=”educationAnnotation”>Аннотация N</a></td>
<td><a href=”ссылка” itemprop=”educationShedule”>Календарный учебный график</a></td>
<td><a href=”ссылка” itemprop=”methodology”>Методические и иные документы, разработанные образовательной организацией 
для обеспечения образовательного процесса </a></td>
<td><a href=”ссылка” itemprop=”eduPr”>Рабочие программы практик, предусмотренных соответствующей образовательной 
программой</a></td>
<td><a href=”ссылка” itemprop=”eduEl”>ЭОиДОТ</a> </td>


</tr>
<?php
			$q = "select * from educational_program";
          //  $result=$mysqli->query("select * from educational_program");
            $result = $conn->query($q);
            foreach ($result as $row) {

		//	foreach( $row = $result->fetch_array() )
			
			echo '<tr>
			<td>'.$row['Kod_educational'].'</td>
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