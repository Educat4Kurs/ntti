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
                                        <h3>Здание</h3>
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
$kod_zdanie=$_POST['kod_zdanie'];
$naim_obekta=$_POST['naim_obekta'];
$adres_mest=$_POST['adres_mest'];
$kol_vo_koiko_mest=$_POST['kol_vo_koiko_mest'];
$obshaya_jilaya=$_POST['obshaya_jilaya'];
$prisposob=$_POST['prisposob'];
$obshaya_ploshad=$_POST['obshaya_ploshad'];
$jilaya_ploshad=$_POST['jilaya_ploshad'];
$kol_vo_ploshad=$_POST['kol_vo_ploshad'];
$ID_vida_zdaniya=$_POST['ID_vida_zdaniya'];

$sql="insert into zdanie1 (kod_zdanie,naim_obekta,adres_mest,kol_vo_koiko_mest,obshaya_jilaya,prisposob,obshaya_ploshad,jilaya_ploshad,kol_vo_ploshad,ID_vida_zdaniya) values ('$kod_zdanie','$naim_obekta', '$adres_mest', '$kol_vo_koiko_mest', '$obshaya_jilaya', '$prisposob', '$obshaya_ploshad', '$jilaya_ploshad', '$kol_vo_ploshad', '$ID_vida_zdaniya')";
$result= $mysqli->query($sql);
}
?>

<div class="container">
	<div class="row">
	<table class="table table-striped table-hover">
			<tr>
				<th>Код здание</th>
				<th>Наименование объекта</th>
                <th>Адрес местонахождения</th>
                <th>Количество койко-мест приспособ для исп и лицами с ОВЗ</th>
                <th>Общая жилая площадь(к) приспособ для исполь инвалид и ОВЗ</th>
                <th>Приспособ для исп инвалидами и лицами с ОВЗ</th>
                <th>Общая площадь</th>
                <th>Жилая площадь</th>
                <th>Кол-во площадь</th>
                <th>Ид вида здания</th>
			</tr>
			
<?php
$result= $mysqli->query("select * from zdanie1");

while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['kod_zdanie'].'</td>
<td>'.$row['naim_obekta'].'</td>
<td>'.$row['adres_mest'].'</td>
<td>'.$row['kol_vo_koiko_mest'].'</td>
<td>'.$row['obshaya_jilaya'].'</td>
<td>'.$row['prisposob'].'</td>
<td>'.$row['obshaya_ploshad'].'</td>
<td>'.$row['jilaya_ploshad'].'</td>
<td>'.$row['kol_vo_ploshad'].'</td>
<td>'.$row['ID_vida_zdaniya'].'</td>



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
