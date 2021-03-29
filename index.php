<?php
include 'temp/head.php';
include 'temp/navbar.php';
include 'temp/header.php';


//выполним соединение с БД
$mysqli=new mysqli ("localhost", "root", "","dopbap_arkadi");

$mysqli->set_charset("utf8");
?>

                                  

<div class="course-area section-padding bg-white"> 
                   <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title-wrapper">
                                    <div class="section-title">
                                        <p><h3>Доступная среда</h3></p>
                                    </div>
                                </div>
                            </div>
                        </div>          

                        <div class="row">
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item" style="width: 25rem; height: 30rem;">
                                    <div class="single-item-image overlay-effect">
                                    <a href="#">  <img src="img/Ebap/W1.jpg" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text" itemprop="purposeCab">
                                        <h4><a href="#">Сведения о специально оборудованных учебных кабинетах</a></h4>
                                 <hr>
                                    </div>
                                    <div class="button-bottom">
                                        <a href="PurposeCab.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>
                          
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item" style="width: 25rem; height: 30rem;">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/Ebap/W2.jpg" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text" itemprop="purposePrac">
                                        <h4><a href="#">Сведения о приспособленных объектах для проведения практических занятий</a></h4>
                                        <hr>
                                        
                                    </div>
                                    <div class="button-bottom">
                                        <a href="PurposePrac.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item" style="width: 25rem; height: 30rem;">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/Ebap/W3.jpg" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text" itemprop="purposeLibr">
                                        <h4><a href="#">Сведения о библиотеке</a></h4>
                                      
                                        <hr>
                                    </div>
                                    <div class="button-bottom">
                                        <a href="PurposeLibr.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item" style="width: 25rem; height: 30rem;">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/Ebap/W4.jpg" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text" itemprop="purposeSport">
                                        <h4><a href="#">Сведения об объектах спорта</a></h4>
                                        
                                        <hr> 
                                    </div>
                                    <div class="button-bottom">
                                        <a href="PurposeSport.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>
                          
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item" style="width: 25rem; height: 30rem;">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/Ebap/W5.jpg" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text" itemprop="meals">
                                        <h4><a href="#">Сведения об условиях питания обучающихся</a></h4>
                                        <hr>
                                         
                               
                                     
                                    </div>
                                    <div class="button-bottom">
                                        <a href="Meals.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>
                        
                            <div class="col-md-4 hidden-sm">
                                <div class="single-item" style="width: 25rem; height: 30rem;">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/Ebap/W6.jpg" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text" itemprop="health">
                                        <h4><a href="#">Сведения об условиях охраны здоровья обучающихся</a></h4>
                                        <hr>
                                    </div>
                                    <div class="button-bottom">
                                        <a href="Health.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>

                           
                            
                        </div>
                    </div>
                </div>        
	
        















































        


 <?php 
include 'temp/footer.php';  
?>
