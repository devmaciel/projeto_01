<div id="map"></div>
<div class="contato-container">
	<div class="center">
		<form class="ajax-form" method="post" action="">

			<label class="contato-label">Nome:</label>
			<input required type="text" name="nome" >

			<label class="contato-label">E-mail:</label>
			<input required type="text" name="email" >
			
			<label class="contato-label">Telefone:</label>
			<input required type="text" name="telefone" >

			
			<label class="contato-label">Mensagem:</label>
			<textarea required  name="mensagem"></textarea>
			
			<div></div>
			<input type="hidden" name="identificador" value="form_contato" />
			<input type="submit" name="acao" value="Enviar">
		</form>
	</div><!--center-->
</div><!--contato-container-->