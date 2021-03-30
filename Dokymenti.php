<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';
include 'database.php';

?>

<div class="course-area section-padding bg-white">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title-wrapper">
                                    <div class="section-title">
                                        <h3>Документы</h3>
                                        <p>часть объема здания или сооружения, имеющая определенное назначение и ограниченная строительными конструкциями.</p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="container">
	<div class="row">
		<div class="col">
		
<form  method="POST"  role="form" class="form-inline">


</form>	
	</div>
	</div>
</div>



<div class="container">
	<div class="row">
	<table class="table table-striped table-hover">
			<tr>
				<th>Код документы</th>
				<th>Наименования</th>
                <th>Ссылки</th>
                <th>Вид документы</th>
                <th>Дата документы</th>
                <th>Шв_вида документа</th>
			</tr>
			
<?php
$result= $conn->query("select * from dokymeti1");

while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['kod_dokymenti'].'</td>
<td>'.$row['naim'].'</td>
<td>'.$row['ssilki'].'</td>
<td>'.$row['vid_dokymenti'].'</td>
<td>'.$row['data_dokymenti'].'</td>
<td>'.$row['sw_vida_dok'].'</td>

</tr>';
}
$result->free();
 
?>

		</table>
	</div>	
</div>





 <?php 
include 'temp/footer.php';  
?>
