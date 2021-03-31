<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';
include 'database.php';
?>



<div class="container">
	<div class="row">
<table class="table table-striped">
<tr>  
<td itemprop="objName">Наименование объекта</td>
<td itemprop="objAddress">Адрес места нахождения объекта</td>
<td itemprop="objSq">Площадь объекта</td>
<td itemprop="objCnt">Количесто мест</td>     
<td itemprop="purposeFacil">Сведения о средствах обучения и воспитания </td>           
</tr> 

<?php
$result= $conn->query("select * from Pomejenia,oborudovanie,kabinetov where pomejenia.Kod_Pomejenia=kabinetov.Kod_Pomejenia  and oborudovanie.Kod_Kabinetova=kabinetov.Kod_Kabinetova");
while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['NaimObject'].'</td>
<td>'.$row['AdresMestNaxojd'].'</td>
<td>'.$row['Plojad'].'</td>
<td>'.$row['KolicestvoMest'].'</td>
<td>'.$row['Naznacenie'].'</td>
</tr>';
}
$result->free();
 
?>
