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
                                        <h3>Трудоустройстве</h3>
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
$kod_trydoystroistve=$_POST['kod_trydoystroistve'];
$god=$_POST['god'];
$kol_vo_vipysknikov=$_POST['kol_vo_vipysknikov'];
$kol_vo_trydost=$_POST['kol_vo_trydost'];
$kod_spec=$_POST['kod_spec'];
$sql="insert into trydoystroistve (kod_trydoystroistve,god,kol_vo_vipysknikov,kol_vo_trydost,kod_spec) values ('$kod_trydoystroistve','$god', '$kol_vo_vipysknikov', '$kol_vo_trydost', '$kod_spec')";
$result= $mysqli->query($sql);
}
?>

<div class="container">
	<div class="row">
	<table class="table table-striped table-hover">
			<tr>
				<th>Код трудоустройство</th>
				<th>Год</th>
                <th>Кол-во выпускников</th>
                <th>Кол-во трудоустроенных выпускников</th>
                <th>Код специальность</th>
			</tr>
			
<?php
$result= $mysqli->query("select * from trydoystroistve");

while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['kod_trydoystroistve'].'</td>
<td>'.$row['god'].'</td>
<td>'.$row['kol_vo_vipysknikov'].'</td>
<td>'.$row['kol_vo_trydost'].'</td>
<td>'.$row['kod_spec'].'</td>


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