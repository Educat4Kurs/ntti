<?php

include 'temp/head.php';        
// <!-- ==========header=============== -->
include 'temp/header.php';
// <!-- ==========navbar=============== -->
include 'temp/navbar.php';
include 'database.php';
?>

<div class="course-area section-padding bg-white">
    <div class="container">
        <div class="row">



<!-- =========  ФОРМА  ============-->
 <form  method="GET" action="prepod.php">
 <div class="container">
	<div class="row">
<br>
            <h3>Дисциплины<h3>
<br>
    </div>
		<table class="table table-striped">
             <!-- ====Дисциплина=====  -->
			<tr itemprop="disciplina">
                <th itemprop="nameD">Название дисциплины</th>
				<th itemprop="colChD">Кол-во часов</th>

			</tr>
			
<?php
    $sql = "SELECT * FROM disciplina";
    
    if (!empty($_GET['idP']))
    {
        $idP=$_GET['idP'];
        $sql= "SELECT * FROM disciplina WHERE disciplina.idP=prepod.idP and idP=".$idP;
        
    }
   

            $result  = $conn->query($sql);
            $row = mysqli_fetch_assoc($result);

            foreach($result as $row)
            {
                echo '<tr>
                <td>'.$row['nameD'].'</td>                
                <td>'.$row['colChD'].'</td>             
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
    </div>


                <!--============footer===============  -->
<?php                
                include 'temp/footer.php';
              
?>      