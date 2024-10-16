<?php
require('/opt/apps/vendor/phpmailer/phpmailer/src/PHPMailer.php');
require('/opt/apps/vendor/phpmailer/phpmailer/src/SMTP.php');
$mail = new PHPMailer\PHPMailer\PHPMailer();
use PHPMailer\PHPMailer\PHPMailer;
//require 'vendor/autoload.php';
$mail->IsSMTP();
$mail->SMTPDebug = 1; // debugging: 1 = errors and messages, 2 = messages only
$mail->SMTPAuth = true; // authentication enabled
$mail->SMTPSecure = 'tls'; // secure transfer enabled REQUIRED for Gmail
$mail->Host = 'smtp.office365.com';
$mail->Port = 587; // or 587
$mail->IsHTML(true);
$mail->Username = 'notifications@killercloud.com.au';
$mail->Password = 'WINKy12(((';
$mail->SetFrom('notifications@killercloud.com.au');
$mail->Subject = 'Test';
$mail->Body = 'heffffffffllo';
    $mail->AddAddress('todd@killercloud.com.au');

        //Content
     //   $mail->isHTML(true);                                  // Set email format to HTML
      //  $mail->Subject = $_POST['subject'];
      //  $mail->Body    = $_POST['message'];

        $mail->send();
        //echo 'Message has been sent';
        header('Location: http://test.killercloud.com.au');
        exit();
?>