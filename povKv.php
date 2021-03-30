<?php

include 'temp/head.php';

include 'temp/header.php';

include 'temp/navbar.php';
include 'database.php';
?>

<section class="section">
    <div class="container">
        <div class="row">
        <div>
            <h4>ПовКвалификации<h4><br>
        </div>
<!-- =========  ФОРМА 1  ============-->
 <form  method="get" action="prepod.php">

 <div class="container">
	<div class="row"><br>
		<table class="table table-striped">
			<tr itemprop="povkval">
				<!-- <th itemprop="idR">IDРуководства</th> -->
                <th itemprop="nameK">Наименование</th>
				<th itemprop="colChK">Кол-во часов</th>
			</tr>
			
            <?php
            $sql = "SELECT * FROM povkval where idP"; 

            if (!empty($_GET['idP']))
            {
                $idP=$_GET['idP'];
                $sql= "SELECT * FROM povkval WHERE idP=".$idP;
               
            }
          
            $result  = $conn->query($sql);
            $row = mysqli_fetch_assoc($result);
            foreach($result as $row)
{
                echo '<tr>   
                <td>'.$row['nameK'].'</td>             
                <td>'.$row['colChK'].'</td>
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
    </section>

                <!--============footer===============  -->
<?php                
                include 'temp/footer.php';

?>      