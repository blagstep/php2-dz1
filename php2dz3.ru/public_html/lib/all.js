$(function() {
  
	/* footer prilepim k nizu stranici */
	function footer_down(){	
		var H = $(window).height(); // высота окна
		var h = $('.mh').offset().top; // расстояние от div.mh до верха страницы
		var fh = $('#footer').outerHeight(true); //высота #footer
		var ffh = $('#from_footer').outerHeight(true); //высота #from_footer, который мы хотим прижимать к низу страницы вместе с футером
		//fh -= 20; //учитываем отступы
		var mh = H-h-fh-ffh; // min-height
		$('.mh').css('minHeight', mh+'px');
	}
	footer_down();
	/**/
	$(window).resize(function(){     
	  	footer_down();
	});
	/* //footer prilepim k nizu stranici */

	/*Галерея в объекте каталога*/
	$('ul.cat_obj_fotos li a.img:first').addClass('active');	  
	$('#cat_obj_pic_middle img').removeAttr('width').removeAttr('height');
	
	$('ul.cat_obj_fotos li a.img').click(function(){

		var big_img = $(this).attr('href');
		var sred_img = $(this).attr('data-sredimg');			
		var sred_w = 0;
		var sred_h = 0;
		
		$('ul.cat_obj_fotos li a').removeClass('active');
		$(this).addClass('active');			
		$('#cat_obj_pic_middle').attr('href', big_img).children('img').attr('src', sred_img);
		
		return false;	
	});  
  
	//Открытие галлереи
	var imgs=[],titles=[];
	$('ul.cat_obj_fotos li a.img').each(function(){
		imgs.push($(this).attr('href'));
		titles.push($(this).attr('title'));
	});
	  
	//alert(imgs);
	  
	$.fn.prettyPhoto({social_tools: '', overlay_gallery: false});
	
	$("#cat_obj_pic_middle").click(function(){
		//alert('работаю');
		$.prettyPhoto.open(imgs, titles);
		for(key in imgs){
			if(imgs[key]!==$(this).attr('href')){
				$.prettyPhoto.changePage('next');
			} else {
				break;
			}
		}
		return false;
	});
  	/*//Галерея в объекте каталога*/

  	/* banner now is open - prilepim k nizu kolonki */
    function block_knizy() {
      var H2 = $('.box_height_mh2').height(); // высота родительского для обоих колонок блока (совпадает с mh в данном случае)
      var fh2 = $('.mh2').next('a.banner_lcol').outerHeight(true); //высота нижнего блока
      fh2 = fh2; //учитываем отступы в данном случае марджин-боттом .box_block_4.mh2
      var ffh = $('#from_footer').outerHeight(true); //высота #from_footer, который прижат к низу страницы вместе с футером
      var mh2 = H2-fh2-ffh; // min-height
      $('.mh2').css('minHeight', mh2+'px');
    }

    if( $('.mh2') ) block_knizy();
	    $(window).resize(function(){
	    	if( $('.mh2') ){
	    		$('.mh2').css('minHeight', 'auto');     
		  		block_knizy();
		  	}
		});
	
    /* //banner now is open - prilepim k nizu kolonki */

});