<div class="box-content">
	<h2><i class="fa fa-comments-o" aria-hidden="true"></i> Chat Online</h2>
	<div class="box-chat-online">

		<?php
			$mensagens = MySql::conectar()->prepare("SELECT * FROM `tb_admin.chat` ORDER BY id DESC LIMIT 10");
			$mensagens->execute();
			$mensagens = $mensagens->fetchAll();
			$mensagens = array_reverse($mensagens); //deixa mensagem nova embaixo
			foreach ($mensagens as $key => $value) {
			$nomeUsuario = MySql::conectar()->prepare("SELECT nome FROM `tb_admin.usuarios` WHERE id = $value[id_user]");
			$nomeUsuario->execute();
			$nomeUsuario = $nomeUsuario->fetch()['nome'];
			$lastId = $value['id'];
		?>
		<div class="mensagem-chat">
			<span><?php echo $nomeUsuario ?>:</span>
			<p><?php echo $value['mensagem']; ?></p>
		</div><!--mensagem-chat-->
		<?php 
			$_SESSION['lastIdChat'] = $lastId;
		} ?>

	</div><!--box-chat-online-->
	<form method="post" action="<?php echo INCLUDE_PATH_PAINEL ?>ajax/chat.php">
		<textarea name="mensagem"></textarea>
		<input type="submit" name="acao" value="Enviar">
	</form>
</div>