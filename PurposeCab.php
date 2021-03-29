<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';


//выполним соединение с БД
$mysqli=new mysqli ("localhost", "root", "","dopbap_arkadi");

$mysqli->set_charset("utf8");
?>

<?php
	//Если массив POST непустой, то добавить запись в базу	
	if (!empty($_POST)) 
{

$AdresIocations=$_POST['AdresIocations'];
$NaimKabi=$_POST['NaimKabi'];
$FitnessHealth=$_POST['FitnessHealth'];
$FitnessDisabilities=$_POST['FitnessDisabilities'];
$sql="insert into kabinet(AdresIocations, NaimKabi,FitnessHealth,FitnessDisabilities) values ('$AdresIocations','$NaimKabi','$FitnessHealth','$FitnessDisabilities')";
$result= $mysqli->query($sql);
}
?>
<div class="container">
	<div class="row">
<table class="table table-striped">
<tr>  
<td itemprop=”AdresIocations”>Адрес места нахождения</td>
<td itemprop=”NaimKabi”>Наименование Кабинет</td>
<td itemprop=”FitnessHealth”>Приспособленность  возможностями здоровья</td>
<td itemprop=”FitnessDisabilities”>Приспособленность ограниченными </td>             
</tr>  


  <?php
$result= $mysqli->query("select AdresIocations,NaimKabi,FitnessHealth,FitnessDisabilities from premises, kabinet  ");

while( $row = $result->fetch_array() )
 {
echo '

<td>'.$row['AdresIocations'].'</td>
<td>'.$row['NaimKabi'].'</td>
<td>'.$row['FitnessHealth'].'</td>
<td>'.$row['FitnessDisabilities'].'</td>

</tr>';
}
$result->free();
$mysqli->close(); 
?>



