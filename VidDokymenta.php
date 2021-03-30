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
                                        <h3>Вид документа</h3>
                                        <p>это в первую очередь рабочая комната, специально предназначенная для личных занятий и интеллектуальной работы</p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="container">
	<div class="row">
		<div class="col">
		

	</div>
	</div>
</div>


<div class="container">
	<div class="row">
	<table class="table table-striped table-hover">
			<tr>
				<th>Шв вида документа</th>
				<th>Наименование вида документа</th>
			</tr>
			
<?php
$result= $conn->query("select * from vidDokymenta1");

while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['sw_vid_dok'].'</td>
<td>'.$row['naim_vida_dok'].'</td>

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
