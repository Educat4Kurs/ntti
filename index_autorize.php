<?php
$message = ''; 
if (!empty($_POST)) 
{ 
$mysqli=new mysqli ("localhost", "h938161u_ratiyev", "Root6000","h938161u_ratiyev"); 
if (mysqli_connect_errno($conn)) { 
echo "Не удалось подключиться к БД:".mysqli_connect_error(); 
} 
$login = $_POST['login']; 
$pass = $_POST['pass'];
//проверка логина и пароля по бд 
$sql = "Select  * from sotrud where login='$login' and pass='$pass'"; 
//Выполнить запрос , результат в переменную $result 
$result = mysqli_query($conn, $sql); 
//Выбрать строку из буфера в ассоциативный массив 
$row = mysqli_fetch_assoc($result); 
$Spec = $row['Spec'];
// Перейти на указанную страницу
if ($Spec)   
{
   session_start();
   $_SESSION['Spec'] = $Spec;

if ($Spec=='Админ') {
   header("Location: http://".$_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF'])."manager.php");
  }
if ($Spec=='Официант') {
  header("Location: oficiant.php");
}
}else {
  $message='Неверный пароль';
}



     mysqli_free_result ($result);
}

include 'temp/head.php';
include 'temp/navbar.php';

?>


	<html lang="ru">
	<head>
<meta charset="utf-8">
</head> 


<body>
<form role="form" method="post" action="index.php" >
<div class="form-group">
<input type="text" name="login" class="form-control"  placeholder="Логин" requered>
</div>
<div class="form-group">
<input type="password" name="pass" class="form-control"  placeholder="Пароль" requered>
</div>
<div class="form-group" >
<input type="submit" value="OK" class="btnbtn-primary btn-block">
</div>
<div class="form-group">
<p><?php  echo $message  ?></p>
</div>
</form>




</body>

<?php

include 'temp/footer.php';
?>
</html>