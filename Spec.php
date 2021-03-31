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
                                        <h3></h3>
                                        <p></p>
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
				<th itemprop="">Код специальность</th>
				<th itemprop="">Название специальности/направ подготовки</th>
			</tr>
			
<?php
$result= $conn->query("select * from spec1");

while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['kod_spec'].'</td>
<td>'.$row['nazvanie_spec'].'</td>

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