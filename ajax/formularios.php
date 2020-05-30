<?php
	include('../config.php');
	include('../classes/Email.php');

	$data = array();

	$assunto = 'Nova mensagem do site!';
	$corpo = '';
	foreach ($_POST as $key => $value) {
		$corpo.=ucfirst($key).": ".$value;
		$corpo.="<hr>";
	}

	$info = array('assunto'=>$assunto,'corpo'=>$corpo);

	//Email Enviador(sender) de teste| smtp;email;senha;nome 
	//Aqui tem um problema, de tempos em tempos, o aviso do google impede que
	//envie o email, então é recomendado logar na conta pra ver, ou escolher uma
	//sua mesmo para enviar. no caso isto aqui
	/*Alguém acabou de usar sua senha para tentar fazer login na sua conta em um app de terceiros. O Google bloqueou a tentativa, */
	$mail = new Email('smtp.gmail.com','jaotestephpmailer@gmail.com','joojs7795','joomaciiel');

	//email que recebe(receiver) | Email;Nome 
	//precisa ser gmail, smtp do gmail, fontes não confiáveis, porque é do localhost.
	//para conferir, coloque seu email aqui, ou tente logar com este email mesmo
	//password:senhadeteste666
	$mail->addEndereco('emailenviotestehub@gmail.com','Tester');


	$mail->formatarEmail($info);
	if($mail->enviarEmail()){
		$data['sucesso'] = true;
	}else{
		$data['sucesso'] = false;
	}

	// $data['retorno'] = 'sucesso';
	die(json_encode($data));
?>