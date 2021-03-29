<?php

	include 'temp/head.php';
    include 'temp/navbar.php';

	//выполним соединение с БД
	$conn = new mysqli('localhost','root','','Denr') 
?>

<div class="course-area section-padding bg-white"> 
                   <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title-wrapper">
                                    <div class="section-title">
                                        <p><h3>Материально-техническое обеспечение</h3></p>
                                    </div>
                                </div>
                            </div>
                        </div>          
                        <div class="row">
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item" style="width: 22rem; height: 25rem;">
                                    <div class="single-item-image overlay-effect">
                                    <a href="Pomejenia.php"><img src="img/course/1.JPG" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text" itemprop="purposeCab">
                                        <h4><a href="#">Сведения об оборудованных учебных кабинетах </a></h4>
                                 <hr>
                                    </div>
                                    <div class="button-bottom">
                                        <a href="Pomejenia.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>
                          
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item" style="width: 22rem; height: 25rem;">
                                    <div class="single-item-image overlay-effect">
                                        <a href="Oborudovanie.php"><img src="img/course/2.JPG" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text">
                                        <h4><a href="#">Сведения об объектах для проведения практических занятий </a></h4>
                                        <hr>
                                        
                                    </div>
                                    <div class="button-bottom">
                                        <a href="Oborudovanie.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item" style="width: 22rem; height: 25rem;">
                                    <div class="single-item-image overlay-effect">
                                        <a href="Kabinetov.php"><img src="img/course/7.JPG" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text">
                                        <h4><a href="#">Сведения о библиотеке </a></h4>
                                        
                                        <hr> 
                                    </div>
                                    <div class="button-bottom">
                                        <a href="Kabinetov.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>
                          
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item" style="width: 22rem; height: 25rem;">
                                    <div class="single-item-image overlay-effect">
                                        <a href="VidKabineta.php"><img src="img/course/4.JPG" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text">
                                        <h4><a href="#">Сведения об объектах спорта </a></h4>
                                        <hr>

                                    </div>
                                    <div class="button-bottom">
                                        <a href="VidKabineta.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>
                        
                            <div class="col-md-4 hidden-sm">
                                <div class="single-item" style="width: 22rem; height: 25rem;">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/course/9.JPG" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text">
                                        <h4><a href="#">Сведения об условиях питания обучающихся</a></h4>
                                        <hr>
                                      
                                    </div>
                                    <div class="button-bottom">
                                        <a href="#" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-6">
                                <div class="single-item" style="width: 22rem; height: 25rem;">
                                    <div class="single-item-image overlay-effect">
                                        <a href="PlanPriem.php"><img src="img/course/10.JPG" alt="" Length="150" Width="200"></a>
                                    </div>
                                    <div class="single-item-text">
                                        <h4><a href="PlanPriem.php">Сведения об условиях охраны здоровья обучающихся </a></h4>
                                      
                                        <hr>
                                    </div>
                                    <div class="button-bottom">
                                        <a href="PlanPriem.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>        
	
<?php
include 'temp/footer.php';
?>