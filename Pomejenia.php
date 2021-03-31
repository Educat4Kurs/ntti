<?php

include 'temp/head.php';
include 'temp/header.php';
include 'temp/navbar.php';
include 'database.php';
?>
 
 <div class="container">
     <div class="row">
     </div>
 </div>
 <?php 	
 $Kod_Vida=0;
     if (!empty($_GET)) 
     {
         $Kod_Vida = $_GET['Kod_Vida'];

     }
 ?>	
 
 
 <div class="container">
     <div class="row">
 
         <table class="table">
             <tr itemprop="Pomejenia">
                 <th itemprop="addressCab">Адрес места нахождения</th>
                 <th itemprop="nameCab">Наименование оборудованного учебного кабинетова</th>
                 <th itemprop="osnCab">Оснащенность оборудованного учебного кабинетова</th>
             </tr>	
 
 
             <?php
             $sql = "select * from Pomejenia,kabinetov, vidkabineta where pomejenia.Kod_Pomejenia=kabinetov.Kod_Pomejenia  and vidkabineta.Kod_Vida=kabinetov.Kod_Vida and vidkabineta.Kod_Vida=".$Kod_Vida;
             $result_table = $conn->query($sql);
             foreach($result_table as $row)
             {
                 echo '<tr>
                 <td itemprop="addressCab">'.$row['AdresMestNaxojd'].'</td>
                 <td itemprop="nameCab">'.$row['NaimRfbinet'].'</td>
                 <td><a href="oborudovanie.php?Kod_Kabinetova='.$row['Kod_Kabinetova'].'"><button tupe="button" class="btn btn-danger btnuvol">Просмотреть</button></a></td></tr>';
             }
             echo '</table>';
             $result_table->close();
     

            ?>
        </table>
    </div>  
</div>


