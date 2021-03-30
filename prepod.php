<?php

include 'temp/head.php';     

include 'temp/header.php';

include 'temp/navbar.php';
include 'database.php';
?>




<div class="course-area section-padding bg-white">
    <div class="container">
        <div class="row">
            <h3>Информация о руководителе образовательной организации<h3><br>
        </div>

<!-- =========  ФОРМА  ============-->
 <form  method="get" action="">
 <div class="container">
	<div class="row"><br>
		<table class="table table-striped">
<!-- ====Преподаватель=====  -->
			<tr itemprop="teachingStaff">
                <td itemprop="fio">ФИО</td>
				<th itemprop="post">Должность</th>
                <th itemprop="teachingDiscipline">Перечень преподаваемых дисциплин</th>
                <th itemprop="teachingLevel">Уровень образования</th>
                <th itemprop="teachingLevel">Квалификация</th>
                <th itemprop="degree">Учёная степень</th>
                <th itemprop="academStat">Учёное звание</th>
                <th itemprop="employeeQualification">Наименование направления подготовки и (или) специальности педагогического работника</th>
                <th itemprop="profDevelopment">Данные о повышении квалификации и (или) профессиональной переподготовке педагогического работника</th>
                <th itemprop="genExperience">Общий стаж работы</th>
                <th itemprop="specExperience">Стаж работы педагогического работника по специальности</th>
			</tr>
			
<?php
$sql = "SELECT * FROM prepod, disciplina, povkval where disciplina.idP=prepod.idP and povkval.idP=prepod.idP"; 

            $result  = $conn->query($sql);
            $row = mysqli_fetch_assoc($result);

			foreach($result as $row){
                echo '<tr>   
                <td>'.$row['FIOP'].'</td>             
                <td>'.$row['dolznostP'].'</td>
                <td><a id="w1" href="disciplina.php?='.$row['idD'].'">Посмотреть</a></td>             
                <td>'.$row['uroven'].'</td>
                <td>'.$row['kvalif'].'</td>
                <td>'.$row['ucSt'].'</td>
                <td>'.$row['ucZv'].'</td>
                <td>'.$row['nameNapPod'].'</td>
                <td><a id="w2" href="povKv.php?='.$row['idKv'].'">Посмотреть</a></td>
                <td>'.$row['staz'].'</td>
                <td>'.$row['stazSp'].'</td>
                </tr>';
            }
                $result->close();
?>
		</table>
	</div>	
</div>

	</form>
    </div>
    </div>

<!--============footer===============  -->
<?php                
                include 'temp/footer.php';

?>      