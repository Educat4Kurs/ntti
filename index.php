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
                                        <p> </p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="course-area section-padding bg-white">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-title-wrapper">
                                    <div class="section-title">
                        <h3></h3>
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/course/321.jpg" alt=""></a>
                                    </div>
                                    <p><div class="single-item-text" itemprop="ustavDocLink">
                                        <h4><a href="#">Устав образовательной организации</a></h4>
                                        <div class="single-item-text-info">
                                            <span> <span></span></span>
                                            <span> <span></span></span>
                                        </div>
                                        <p> .</p>
                                        <div class="single-item-content">
                                           <div class="single-item-comment-view">
                                               <span><i class="zmdi zmdi-eye"></i></span>
                                               <span><i class="zmdi zmdi-comments"></i></span>
                                           </div>
                                           <div class="single-item-rating">
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star-half"></i>
                                           </div>
                                        </div>   
                                    </div>
                                    <p><div class="button-bottom">
                                        <a href="VidDokymenta.php" class="button-default">Посмотреть</a>
                                    </div>
                                    </p>
                                    
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <div class="single-item">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/course/322.jpg" alt=""></a>
                                    </div>
                                    <div class="single-item-text" itemprop="licenseDocLink">
                                        <h4><a href="#">Лицензия на осуществление образовательной деятельности (с приложениями)</a></h4>
                                        <div class="single-item-text-info">
                                            <span> <span></span></span>
                                            <span> <span></span></span>
                                        </div>
                                        <p>. </p>
                                        <div class="single-item-content">
                                           <div class="single-item-comment-view">
                                               <span><i class="zmdi zmdi-eye"></i></span>
                                               <span><i class="zmdi zmdi-comments"></i></span>
                                           </div>
                                           <div class="single-item-rating">
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star-half"></i>
                                           </div>
                                        </div>   
                                    </div>
                                    <div class="button-bottom">
                                        <a href="Dokymenti.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-4 hidden-sm">
                                <div class="single-item">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/course/323.jpg" alt=""></a>
                                    </div>
                                    <div class="single-item-text" itemprop="accreditationDocLink">
                                        <h4><a href="#">Свидетельство о государственной аккредитации (с приложениями)</a></h4>
                                        <div class="single-item-text-info">
                                            <span> <span></span></span>
                                            <span> <span></span></span>
                                        </div>
                                        <p>. </p>
                                        <div class="single-item-content">
                                           <div class="single-item-comment-view">
                                               <span><i class="zmdi zmdi-eye"></i></span>
                                               <span><i class="zmdi zmdi-comments"></i></span>
                                           </div>
                                           <div class="single-item-rating">
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star-half"></i>
                                           </div>
                                        </div>   
                                    </div>
                                    <div class="button-bottom">
                                        <a href="Vid_zdaniya.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-4 hidden-sm">
                                <div class="single-item">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/course/4.jpg" alt=""></a>
                                    </div>
                                    <div class="single-item-text" itemprop="finPlanDocLink">
                                        <h4><a href="#"> План финансово-хозяйственной деятельности образовательной организации</a></h4>
                                        <div class="single-item-text-info">
                                            <span> <span></span></span>
                                            <span> <span></span></span>
                                        </div>
                                        <p> .</p>
                                        <div class="single-item-content">
                                           <div class="single-item-comment-view">
                                               <span><i class="zmdi zmdi-eye"></i></span>
                                               <span><i class="zmdi zmdi-comments"></i></span>
                                           </div>
                                           <div class="single-item-rating">
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star-half"></i>
                                           </div>
                                        </div>   
                                    </div>
                                    <div class="button-bottom">
                                        <a href="Zdanie.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 hidden-sm">
                                <div class="single-item">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/course/5.png" alt=""></a>
                                    </div>
                                    <div class="single-item-text">
                                        <h4><a href="#">Локальные нормативные акты, регламентирующие</a></h4>
                                        <div class="single-item-text-info">
                                            <span> <span></span></span>
                                            <span> <span></span></span>
                                        </div>
                                        <p>. </p>
                                        <div class="single-item-content">
                                           <div class="single-item-comment-view">
                                               <span><i class="zmdi zmdi-eye"></i></span>
                                               <span><i class="zmdi zmdi-comments"></i></span>
                                           </div>
                                           <div class="single-item-rating">
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star-half"></i>
                                           </div>
                                        </div>   
                                    </div>
                                    <div class="button-bottom">
                                        <a href="Spec.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 hidden-sm">
                                <div class="single-item">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/course/6.jpg" alt=""></a>
                                    </div>
                                    <div class="single-item-text" itemprop="reportEduDocLink">
                                        <h4><a href="#">Отчет о результатах самообследования</a></h4>
                                        <div class="single-item-text-info">
                                            <span> <span></span></span>
                                            <span> <span></span></span>
                                        </div>
                                        <p>.</p>
                                        <div class="single-item-content">
                                           <div class="single-item-comment-view">
                                               <span><i class="zmdi zmdi-eye"></i></span>
                                               <span><i class="zmdi zmdi-comments"></i></span>
                                           </div>
                                           <div class="single-item-rating">
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star-half"></i>
                                           </div>
                                        </div>   
                                    </div>
                                    <div class="button-bottom">
                                        <a href="Trydoystroistve.php" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>

                            
                            <div class="col-md-4 hidden-sm">
                                <div class="single-item">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/course/7.png" alt=""></a>
                                    </div>
                                    <div class="single-item-text" itemprop="paidEduDocLink">
                                        <h4><a href="#">Документ о порядке оказания платных образовательных услуг</a></h4>
                                        <div class="single-item-text-info">
                                            <span><span></span></span>
                                            <span><span></span></span>
                                        </div>
                                        <p>.</p>
                                        <div class="single-item-content">
                                           <div class="single-item-comment-view">
                                               <span><i class="zmdi zmdi-eye"></i></span>
                                               <span><i class="zmdi zmdi-comments"></i></span>
                                           </div>
                                           <div class="single-item-rating">
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star-half"></i>
                                           </div>
                                        </div>   
                                    </div>
                                    <div class="button-bottom">
                                        <a href="#" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-4 hidden-sm">
                                <div class="single-item">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/course/8.png" alt=""></a>
                                    </div>
                                    <div class="single-item-text" itemprop="paidParents">
                                        <h4><a href="#">Документ об установлении</a></h4>
                                        <div class="single-item-text-info">
                                            <span> <span></span></span>
                                            <span> <span></span></span>
                                        </div>
                                        <p>.</p>
                                        <div class="single-item-content">
                                           <div class="single-item-comment-view">
                                               <span><i class="zmdi zmdi-eye"></i></span>
                                               <span><i class="zmdi zmdi-comments"></i></span>
                                           </div>
                                           <div class="single-item-rating">
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star-half"></i>
                                           </div>
                                        </div>   
                                    </div>
                                    <div class="button-bottom">
                                        <a href="#" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-4 hidden-sm">
                                <div class="single-item">
                                    <div class="single-item-image overlay-effect">
                                        <a href="#"><img src="img/course/9.png" alt=""></a>
                                    </div>
                                    <div class="single-item-text" itemprop="prescriptionDocLink">
                                        <h4><a href="#">Предписания органов, осуществляющих государственный контроль</a></h4>
                                        <div class="single-item-text-info">
                                            <span> <span></span></span>
                                            <span> <span></span></span>
                                        </div>
                                        <p>.</p>
                                        <div class="single-item-content">
                                           <div class="single-item-comment-view">
                                               <span><i class="zmdi zmdi-eye"></i></span>
                                               <span><i class="zmdi zmdi-comments"></i></span>
                                           </div>
                                           <div class="single-item-rating">
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star"></i>
                                               <i class="zmdi zmdi-star-half"></i>
                                           </div>
                                        </div>   
                                    </div>
                                    <div class="button-bottom">
                                        <a href="#" class="button-default">Посмотреть</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 col-sm-12 text-center">
                        </div>
                    </div>
                </div>             
                    
                           




 <?php 
include 'temp/footer.php';  
?>
