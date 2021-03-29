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

<?php
	//Если массив POST непустой, то добавить запись в базу	
	if (!empty($_POST)) 
{
$kod_dokymenti=$_POST['kod_dokymenti'];
$naim=$_POST['naim'];
$ssilki=$_POST['ssilki'];
$vid_dokymenti=$_POST['vid_dokymenti'];
$data_dokymenti=$_POST['data_dokymenti'];
$sw_vida_dok=$_POST['sw_vida_dok'];
$sql="insert into dokymeti1 (kod_dokymenti,naim,Ssilki,vid_dokymenti,data_dokymenti,sw_vida_dok) values ('$kod_dokymenti','$naim', '$ssilki', '$vid_dokymenti', '$data_dokymenti', '$sw_vida_dok')";
$result= $mysqli->query($sql);
}
?>

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
$result= $mysqli->query("select * from dokymeti1");

while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['kod_dokymenti'].'</td>
<td>'.$row['naim'].'</td>
<td>'.$row['ssilki'].'</td>
<td>'.$row['vid_dokymenti'].'</td>
<td>'.$row['data_dokymenti'].'</td>
<td>'.$row['sw_vida_dok'].'</td>

<td><a href="Dokymenti.php?kod='.$row['Kod_KabineKod_objetova'].'"><button tupe="button" class="btn btn-danger btnuvol" data-toggle="modal" data-target="#myModal" data-Kod_obje="'.
$row['Kod_obje'].'"data-NaimObje="'.$row['NaimObje'].'">Просмотреть</button></a></td>




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
