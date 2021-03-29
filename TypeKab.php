<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';

//выполним соединение с БД
$mysqli=new mysqli ("localhost", "root", "","dopbap_arkadi");

$mysqli->set_charset("utf8");
?>


 <div class="container">
	<div class="row">

		<table class="table">
			<tr itemprop="TypeKab">
				<th itemprop="Kod_typka">Код </th>
				<th itemprop="NaimTyp">Наименование вида</th>
			</tr>
<?php
$result= $mysqli->query("select * from typekab");

while( $row = $result->fetch_array() )
 {
echo '
<td>'.$row['Kod_typka'].'</td>
<td>'.$row['NaimTyp'].'</td>
</tr>';
}
$result->free();
$mysqli->close(); 
?>

