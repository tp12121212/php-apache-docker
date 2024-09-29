<?php
//require '/var/www/Simpleux/vendor/phpmailer/phpmailer/src/PHPMailer.php';
require('/var/www/Simpleux/vendor/phpmailer/phpmailer/src/PHPMailer.php');
require('/var/www/Simpleux/vendor/phpmailer/phpmailer/src/SMTP.php');
$mail = new PHPMailer\PHPMailer\PHPMailer();
//$mail = new PHPMailer(true);
$mail->isSMTP();
$mail->Host = 'smtp.office365.com';
$mail->Port       = 587;
$mail->SMTPSecure = 'tls';
$mail->SMTPAuth   = true;
$mail->Username = 'notifications@killercloud.com.au';
$mail->Password = 'WINKy12(((';
$mail->SetFrom('notifications@killercloud.com.au', 'FromEmail');
$mail->addAddress('todd@killercloud.com.au', 'ToEmail');
$mail->SMTPDebug  = 3;
$mail->Debugoutput = function($str, $level) {echo "debug level $level; message: $str";}; //$mail->Debugoutput = 'echo';

        //Content
        $mail->isHTML(true);                                  // Set email format to HTML
        $mail->Subject = $_POST['subject'];
        $mail->Body    = $_POST['message'];

        $mail->send();
        //echo 'Message has been sent';
        header('Location: http://www.example.com/contact.php');
        exit();
    } catch (Exception $e) {
        echo 'Message could not be sent.';
        echo 'Mailer Error: ' . $mail->ErrorInfo;
    }
    ?>

