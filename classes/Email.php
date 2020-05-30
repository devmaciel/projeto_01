<?php
// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

// Load Composer's autoloader
require 'vendor/autoload.php';

	class Email
	{
		private $mailer;
		
		public function __construct($host,$username,$senha,$name)
		{
			try {
				$this->mailer = new PHPMailer(true);

			    $this->mailer->isSMTP();                                            
			    $this->mailer->Host        = $host;                   
			    $this->mailer->SMTPAuth    = true;                                   
			    $this->mailer->Username    = $username;                     
			    $this->mailer->Password    = $senha;                               
			    $this->mailer->SMTPSecure  = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
			    $this->mailer->Port        = 587;

			    //Essa linha aqui é pra DEBUG, vai usar quando gmail bloquea a auth
			    //precisa liberar pro apps menos seguro novamente.
			    // $this->mailer->SMTPDebug = 2;    
			    
			    $this->mailer->CharSet = 'UTF-8';                                

			    //Recipients
			    $this->mailer->setFrom($username,$name);  
			    //$mail->addAddress('ellen@example.com');               
			    //$mail->addReplyTo('info@example.com', 'Information');
			    //$mail->addCC('cc@example.com');
			    //$mail->addBCC('bcc@example.com');

			    // Attachments
			    //$mail->addAttachment('/var/tmp/file.tar.gz');         
			    //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    

			    // Content
			    // $mail->isHTML(true);                                  
			    // $mail->Subject = 'teste phpMailer p01';
			    // $mail->Body    = 'texto da mensagem projeto01';
			    // $mail->AltBody = 'testando versao 6.3 do phpmailer dankicode';

			    // $mail->send();
			    // echo 'Message has been sent';
			} catch (Exception $e) {
			    echo "Message could not be sent. Mailer Error: {$this->mailer->ErrorInfo}";
			}	
		}

		public function addEndereco($email,$nome){
			 $this->mailer->addAddress($email,$nome);   
		}

		public function formatarEmail($info){
			$this->mailer->isHTML(true);                                  
			$this->mailer->Subject = $info['assunto'];
			$this->mailer->Body    = $info['corpo'];
			$this->mailer->AltBody = strip_tags($info['corpo']);
		}

		public function enviarEmail(){
			if($this->mailer->send()){ 
				return true;
			}else{
				return false;
			}
		}
	}
?>