<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';
include 'database.php';

?>

<div class="container">
     <div class="row">
     </div>
 </div>
 <?php 	
 $id_vida_dok=0;
     if (!empty($_GET)) 
     {
         $id_vida_dok = $_GET['id_vida_dok'];

     }
 ?>	



<div class="container">
	<div class="row">
	<table class="table table-striped table-hover">
			<tr>
				<th itemprop="kod_dokymenti">Код документы</th>
				<th itemprop="naim">Наименования</th>
                <th itemprop="ssilki">Ссылки</th>
                <th itemprop="vid_dokymenti">Вид документы</th>
                <th itemprop="data_dokymenti">Дата документы</th>
                <th itemprop="id_vida_dok">Ид_вида документа</th>
			</tr>
			
<?php
$result= $conn->query("select * from dokymeti1, viddokymenta1 where dokymeti1.kod_dokymenti=dokymenta1.kod_dokymenti and viddokymenta1.id_vida_dok=dokymenta.id_vida_dok and viddokymenta1.id_vida_dok=".$id_vida_dok;
$result_table = $conn->query($sql);
foreach($result_table as $row)
 {
echo '<tr>
<td itemprop="kod_dokymenti">'.$row['kod_dokymenti'].'</td>
<td itemprop="naim">'.$row['naim'].'</td>
<td itemprop="ssilki">'.$row['ssilki'].'</td>
<td itemprop="vid_dokymenti">'.$row['vid_dokymenti'].'</td>
<td itemprop="data_dokymenti">'.$row['data_dokymenti'].'</td>
<td itemprop="id_vida_dok">'.$row['id_vida_dok'].'</td>
<td><a href="dokymenti.php?kod='.$row['kod_dokymenti'].'"><button tupe="button" class="btn btn-danger btnuvol">Просмотреть</button></a></td></tr>';

}
echo '</table>';
$result->free();
 
?>

		</table>
	</div>	
</div>





 <?php 
include 'temp/footer.php';  
?>
