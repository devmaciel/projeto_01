<?php include('config.php');
	include('classes/Email.php');
?>
<?php Site::updateUsuarioOnline(); ?>
<?php Site::contador(); ?>
<?php
	$infoSite = MySql::conectar()->prepare("SELECT * FROM `tb_site.config`");
	$infoSite->execute();
	$infoSite = $infoSite->fetch();
?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo $infoSite['titulo']; ?></title>
	<link rel="stylesheet" href="<?php echo INCLUDE_PATH; ?>estilo/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="<?php echo INCLUDE_PATH; ?>estilo/style.css" rel="stylesheet" />
	<link rel="icon" href="<?php echo INCLUDE_PATH; ?>favicon.ico" type="image/x-icon" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="joomaciiel" />
	<meta name="keywords" content="html5,css3,javascript,jquery,php">
	<meta name="description" content="Primeiro projeto do joomaciiel">
	<meta charset="utf-8" />

	<!-- Sem robo para indexação (projeto) -->
	<meta name="robots" content="noindex, nofollow">

</head>
<body>
<base base="<?php echo INCLUDE_PATH; ?>" />
	<?php
		$url = isset($_GET['url']) ? $_GET['url'] : 'home';
		switch ($url) {
			case 'depoimentos':
				echo '<target target="depoimentos" />';
				break;

			case 'servicos':
				echo '<target target="servicos" />';
				break;
	
			case 'sobre-autor':
				echo '<target target="sobre-autor" />';
				break;
		}
	?>

	<!-- CTA Form -->
	<div class="sucesso"><i class="fa fa-check"></i> Formulário enviado com sucesso!</div>
	<div class="insucesso"><i class="fa fa-times"></i> Erro ao enviar formulário!</div>
	<div class="overlay-loading">
		<img src="<?php echo INCLUDE_PATH ?>images/ajax-loader.gif" />
	</div><!--overlay-loading-->

	<header>
		<div class="center">
			<div class="logo left"><a href="<?php echo INCLUDE_PATH; ?>">Logomarca</a></div><!--logo-->
			<nav class="desktop right">
				<ul>
					<li><a title="Home" href="<?php echo INCLUDE_PATH; ?>">Home</a></li>
					<li><a title="Depoimentos" href="<?php echo INCLUDE_PATH; ?>depoimentos">Depoimentos</a></li>
					<li><a title="Serviços" href="<?php echo INCLUDE_PATH; ?>servicos">Serviços</a></li>
					<li><a href="<?php echo INCLUDE_PATH; ?>noticias">Notícias</a></li>
					<li><a style="color:red;" href="<?php echo INCLUDE_PATH; ?>notfound">404</a></li>
					<li class="btn-border"><a realtime="contato" href="<?php echo INCLUDE_PATH; ?>contato">Contato</a></li>
				</ul>
			</nav>
			 <nav class="mobile right">
			 	<div class="botao-menu-mobile">
			 		<i class="fa fa-bars" aria-hidden="true"></i>
			 	</div>
				<ul>
					<li><a href="<?php echo INCLUDE_PATH; ?>">Home</a></li>
					<li><a href="<?php echo INCLUDE_PATH; ?>depoimentos">Depoimentos</a></li>
					<li><a href="<?php echo INCLUDE_PATH; ?>servicos">Serviços</a></li>
					<li><a href="<?php echo INCLUDE_PATH; ?>noticias">Notícias</a></li>
					<li><a realtime="contato" href="<?php echo INCLUDE_PATH; ?>contato">Contato</a></li>
				</ul>
			</nav>
		<div class="clear"></div><!--clear-->
		</div><!--center-->
	</header>

	<!-- PRA GITHUB, HOT ACCESS -->
	<a href="<?php echo INCLUDE_PATH_PAINEL; ?>" class="btn-circled tooltip-box"><i class="fa fa-info" aria-hidden="true"></i><span class="tooltip">Aqui vai direto pro Painel de Admin!</span></a>


	<div class="container-principal">
	<?php
		if(file_exists('pages/'.$url.'.php')){
			include('pages/'.$url.'.php');
		}else{
			if($url != 'depoimentos' && $url != 'servicos' && $url != 'sobre-autor'){
				$urlPar = explode('/',$url)[0];
				if($urlPar != 'noticias'){
					$pagina404 = true;
					include('pages/404.php');
				}else{
					include('pages/noticias.php');
				}
			}else{
				include('pages/home.php');
			}
		}
	?>
	</div><!--container-principal-->

	<footer <?php if(isset($pagina404) && $pagina404 == true) echo 'class="fixed"'; ?>>
		<div class="center">
			<p>&copy Todos os direitos reservados - <?= date('Y'); ?></p>
		</div><!--center-->
	</footer>

	<script src="<?php echo INCLUDE_PATH; ?>js/jquery.js"></script>
	<script src="<?php echo INCLUDE_PATH; ?>js/constants.js"></script>
	<script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyDHPNQxozOzQSZ-djvWGOBUsHkBUoT_qH4'></script>
	<script src="<?php echo INCLUDE_PATH; ?>js/scripts.js"></script>


	<!-- Script para identificar IE & Corrigir Carousel -->
	<?php 
		if(($url == 'home' || $url == '') || ($url == 'depoimentos' || $url == 'servicos') || $url == 'sobre-autor'){
	?>
    <script type="text/javascript">
	    var ua = window.navigator.userAgent;
	    if (ua.indexOf("MSIE ") != -1 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
	     	$.getScript('<?php INCLUDE_PATH; ?>js/sliderIE.js');
	    }else{
	    	$.getScript('<?php INCLUDE_PATH; ?>js/slider.js');
	    }
    </script>
	<?php } ?>

	<!-- noticia single -->
	<?php
		if(is_array($url) && strstr($url[0],'noticias') !== false){
	?>
		<script>
			$(function(){
				$('select').change(function(){
					location.href=include_path+"noticias/"+$(this).val();
				})
			})
		</script>
	<?php
		}
	?>
	
	<!--<script src="<?php echo INCLUDE_PATH; ?>js/exemplo.js"></script>-->
	<script src="<?php echo INCLUDE_PATH; ?>js/formularios.js"></script>
</body>
</html>