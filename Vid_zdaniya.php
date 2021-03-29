<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';

//выполним соединение с БД
$mysqli=new mysqli ("localhost", "root", "","Dokymenti");

$mysqli->set_charset("utf8");
?>


<div class="course-area section-padding bg-white">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title-wrapper">
                                    <div class="section-title">
                                        <h3>Вид здания</h3>
                                        <p>Кабинет как уединённая комната городского дома или дворца появился в Европе Нового времени.</p>
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

<?php
	//Если массив POST непустой, то добавить запись в базу	
	if (!empty($_POST)) 
{
$ID_vida_zdaniya=$_POST['ID_vida_zdaniya'];
$naim_vida_zdaniya=$_POST['naim_vida_zdaniya'];
$sql="insert into vid_zdaniya (ID_vida_zdaniya,naim_vida_zdaniya) values ('$ID_vida_zdaniya','$naim_vida_zdaniya')";
$result= $mysqli->query($sql);
}
?>

<div class="container">
	<div class="row">
	<table class="table table-striped table-hover">
			<tr>
				<th>Ид вида здания</th>
				<th>Наименование вида здания</th>
			</tr>
			
<?php
$result= $mysqli->query("select * from vid_zdaniya");

while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['ID_vida_zdaniya'].'</td>
<td>'.$row['naim_vida_zdaniya'].'</td>

</tr>';
}
$result->free();
$mysqli->close(); 
?>

		</table>
	</div>	
</div>

                    


 <?php 
include 'temp/footer.php';  
?>
