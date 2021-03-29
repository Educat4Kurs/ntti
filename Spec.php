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
                                        <h3>Специальность</h3>
                                        <p>Использование специального оборудования в коррекционно-развивающей работе с детьми ОВЗ и детьми-инвалидами, позволяет существенно повысить зффективность воздействия за счет включения дополнительных возможностей.</p>
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
$kod_spec=$_POST['kod_spec'];
$nazvanie_spec=$_POST['nazvanie_spec'];
$sql="insert into spec1 (kod_spec,nazvanie_spec) values ('$kod_spec','$nazvanie_spec')";
$result= $mysqli->query($sql);
}
?>

<div class="container">
	<div class="row">
	<table class="table table-striped table-hover">
			<tr>
				<th>Код специальность</th>
				<th>Название специальности/направ подготовки</th>
			</tr>
			
<?php
$result= $mysqli->query("select * from spec1");

while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['kod_spec'].'</td>
<td>'.$row['nazvanie_spec'].'</td>

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