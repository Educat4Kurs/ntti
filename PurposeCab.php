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
<td itemprop=”AdresIocations”>Адрес места нахождения</td>
<td itemprop=”NaimKabi”>Наименование Кабинет</td>
<td itemprop=”FitnessHealth”>Приспособленность  возможностями здоровья</td>
<td itemprop=”FitnessDisabilities”>Приспособленность ограниченными </td>             
</tr>  


  <?php
$result= $conn->query("select AdresIocations,NaimKabi,FitnessHealth,FitnessDisabilities from premises, kabinet  ");

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
?>



