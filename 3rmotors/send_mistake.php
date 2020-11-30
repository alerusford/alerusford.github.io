<?php
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	
	/* Осуществляем проверку вводимых данных и их защиту от враждебных скриптов */
	$post_link = htmlspecialchars($_POST["mistake_link"]);
	$post_mistake_text = htmlspecialchars($_POST["mistake_text"]);
	$post_comment = htmlspecialchars($_POST["mistake_comment"]);
	$mistake_text = mb_convert_encoding($post_mistake_text, 'utf-8', mb_detect_encoding($post_mistake_text));
	$comment = mb_convert_encoding($post_comment, 'utf-8', mb_detect_encoding($post_comment));
	
	/* Устанавливаем тему письма */
	$mistake_subject = "Сообщение об ошибке";
	
	/* Устанавливаем e-mail адресата */
	$myemail = $_POST["admin_email"];

	/* Создаем from email */
	$from_email = 'info@' . $_SERVER['SERVER_NAME'];
	
	/* Создаем заголовок */
	$headers = 'Content-type: text/html; charset=utf-8' . " \r\n" . 'From:' . $from_email . " \r\n"; //Заголовок для отправки писем без файла
	
	/* Создаем новую переменную, присвоив ей значение */
	$message_to_myemail = "
	Пришло сообщение об ошибке на сайте по адресу: ".$post_link."<br /><br />
	Текст с ошибкой:<br />
	".$mistake_text."<br /><br />
	Комментарий отправителя:<br />
	". $comment;
	
	/* Отправляем сообщение, используя mail() функцию */
	mail($myemail, $mistake_subject, $message_to_myemail, $headers);
	
}else{ 
	die('spam!');
}
?>