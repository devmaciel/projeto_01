$(function(){

	var currentSlide = 0;
	var maxSlide = $('.banner-single').length - 1;
	var delay = 5;

	initSlider();
	changeSlide();

	//Função com opacity, precisa ir no style.css
	//mudar para display block o banner-single;
		//Internet Explorer da umas piscada na troca de slide
		//solucação dai é usar com Animate que ja ta pronto
		//mas ta comentado, se quisermos trocar um pra outro;
	
	function initSlider(){
		//$('.banner-single').hide();
		$('.banner-single').css('opacity','0');
		//$('.banner-single').eq(0).show();
		$('.banner-single').eq(0).css('opacity','1');
		for(var i = 0; i < maxSlide+1; i++){
			var content = $('.bullets').html();
			if(i == 0)
				content+='<span class"active-slider"></span>';
			else
				content+='<span></span>';
			$('.bullets').html(content);
		}
	}

	function changeSlide(){
		setInterval(function(){
			//$('.banner-single').eq(currentSlide).stop().fadeOut(2000);
			$('.banner-single').eq(currentSlide).animate({'opacity':'0'},2000);
			currentSlide++;
			if(currentSlide > maxSlide)
				currentSlide = 0;
			//$('.banner-single').eq(currentSlide).stop().fadeIn(2000);
			$('.banner-single').eq(currentSlide).animate({'opacity':'1'},2000);
			//Trocar bullets da navegacao do slider!
			$('.bullets span').removeClass('active-slider');
			$('.bullets span').eq(currentSlide).addClass('active-slider');
		},delay * 1000);
	}

	$('body').on('click','.bullets span',function(){
		var currentBullet = $(this);
		//$('.banner-single').eq(currentSlide).stop().fadeOut(1000);
		$('.banner-single').eq(currentSlide).animate({'opacity':'0'},1000);
		currentSlide = currentBullet.index();
		//$('.banner-single').eq(currentSlide).stop().fadeIn(1000);
		$('.banner-single').eq(currentSlide).animate({'opacity':'1'},2000);
		$('.bullets span').removeClass('active-slider');
		currentBullet.addClass('active-slider');
	})

})