<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>{{TITLE}} - Магазин на ООП</title>
<meta name="description" content="Peeky Cropped" />
<meta name="keywords" content="Apparel, Women, Peeky Cropped" />

<link href="https://fonts.googleapis.com/css?family=Raleway:400,700,800" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900i" rel="stylesheet"> 

<link rel="stylesheet" href="css/new_style.css" type="text/css" media="all" />
<link rel="stylesheet" href="fonts/font-awesome-4.6.3/css/font-awesome.css"  />
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<!-- prettyPhoto 1_2 -->
<link href="lib/pretty/css/prettyPhoto.css" rel="stylesheet" />
<!-- //prettyPhoto 1_2 -->

</head>
<body>
<div class="container">

	<!-- header-->
	<div class="box_fluid bg_header mb_-20">
		<div class="box">
		  <header class="header header_inner" id="header">
		  	<a href="index.html" class="logo" id="logo"><img src="img/logo.png" width="125" height="111" alt="Surfhouse"></a>

		  	<!-- soc_top -->
			<ul class="soc_top">
				<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
			</ul>
			<!-- //soc_top -->

		    <div class="clear"></div>
		  </header>
		</div>
	</div>
	<!-- //header-->
	
	<div class="mh box_height_mh2">
		<!-- content lcol -->
		<div class="box">
			<!-- leftcolumn -->
			<aside class="leftcolumn lcol_cat">
				
				<div class="box_menu_left mh2">
					<!-- menu_left -->
				<span class="h2_menu_left">Menu</span>
				<nav>
					<ul class="menu_left" id="menu_left">
						<li><a href="/">Главная</a></li>
						<li><a href="news-view.php">Страница новости</a></li>
						<li><a href="catalog-view.php">Страница каталог</a></li>
            <li><a href="catalog-view2.php">Страница каталог2</a></li>
					</ul>
				</nav>
				<!-- //menu_left -->
				</div>

				<a class="banner_lcol" href="#">Now is open!</a>
			</aside>
			<!-- //leftcolumn -->	

			<div class="middle-box-left">
				<div class="middle bg_middle">
					<!-- navbar -->
					<ul class="navbar">
						<li><a href="index.html">Home</a> &raquo;</li>
						<li><a href="shop-cat-gridx3.html">Apparel</a> &raquo;</li>
						<li><a href="shop-cat-gridx3.html">Women</a> &raquo;</li>						
						<li><span>Peeky Cropped</span></li>
					</ul>
					<!-- //navbar -->
					
					<!-- cat_two_col -->
					<div class="cat_two_col">
						<div class="cat_l">
							<!-- slider -->
							<a id="cat_obj_pic_middle" class="cat_obj_pic_middle akcent new" href="img/cat/1.jpg">
								<img src="img/cat/1_middle.jpg" alt="Ципа - фото 1">
							</a>
							
							<ul class="cat_obj_fotos">
								<li>
									<a class="img" href="img/cat/1.jpg" data-sredimg="img/cat/1_middle.jpg">
										<img src="img/cat/1_min.jpg"  alt="Babe - foto 1">
									</a>
								</li>
								<li>
									<a class="img" href="img/cat/2.jpg" data-sredimg="img/cat/2_middle.jpg" >
										<img src="img/cat/2_min.jpg" alt="Babe - foto 2">
									</a>
								</li>
								<li>
									<a class="img" href="img/cat/3.jpg" data-sredimg="img/cat/3_middle.jpg">
										<img src="img/cat/3_min.jpg"  alt="Babe - foto 3">
									</a>
								</li>								
							</ul>
							<!-- //slider -->
						</div>

						<div class="cat_r">
							
							<h1 class="h1_cat">{{TITLE}}</h1>
							
							<!-- price -->
							<div class="box_price">
								<span class="price">{{PRICE}} руб.</span>
								<span class="old_price">{{PRICE_OLD}} руб.</span>
							</div>
              <p>Скидка (руб): {{DISCOUNT}}</p>
							<!-- //price -->	

							<div class="cat_anonse">
								<p class="txtuppercase"><b>Краткое описание:</b></p>
								<p>{{ANONSE}}</p>
							</div>
              <h2 class="h2_cat">Характеристики</h2>
              <p>Тип товара: <strong>{{TIP}}</strong></p>
							<!-- add_to_cart -->
							<form class="add_to_cart" action="#" method="post">
	               <input class="amount" name="amount" value="1" type="text">
	               <input class="submit" type="submit" value="Add to cart">          		 
	            </form>
							<!-- //add_to_cart -->
							
			
						</div>
						<div class="clear"></div>	
					</div>
					<!-- //cat_two_col -->
					
					

					<!-- cat_opisanie -->
					<h2 class="h2_cat_opisanie">Полное описание</h2>
					<div class="cat_opisanie">
						<p>{{CONTENT}}</p>
					</div>
					<!-- //cat_opisanie -->

			  		<!-- You might also like -->
			  		<h2 class="h2_cat_obj">You might also like</h2>		  		
					<ul class="products_index inner">
						<li>
							<a href="#">
								<span class="img akcent new">
									<img src="img/zaglushka.gif" width="250" height="235" alt="">
								</span>
								<span class="box_zag_price">
									<span class="zag">Single Thruster 2014</span>
									<span class="box_price">
										<span class="price">€.865.00</span>
										
									</span>
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="img akcent hot">
									<img src="img/zaglushka.gif" width="250" height="235" alt="">
								</span>
								<span class="box_zag_price">
									<span class="zag">Freestyle Wave FSW</span>
									<span class="box_price">
										<span class="price">€.805.00</span>
										<span class="old_price">€.965.00</span>
									</span>
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="img akcent top"><img src="img/zaglushka.gif" width="250" height="235" alt=""></span>
								<span class="box_zag_price">
									<span class="zag">The White Collection SURFBOARD 2014</span>
									<span class="box_price">
										<span class="price">€.1,580.70</span>
										
									</span>
								</span>
							</a>
						</li>						
					</ul>
					<!-- //You might also like -->

					<!-- Recently viewed -->
					<h2>Recently viewed</h2>
					<ul class="products_index inner">						
						<li>
							<a href="#">
								<span class="img akcent sale"><img src="img/zaglushka.gif" width="250" height="235" alt=""></span>
								<span class="box_zag_price">
									<span class="zag">OG scallop solid</span>
									<span class="box_price">
										<span class="price">€.765.00</span>
										
									</span>
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="img"><img src="img/zaglushka.gif" width="250" height="235" alt=""></span>
								<span class="box_zag_price">
									<span class="zag">Strripe 19 QS</span>
									<span class="box_price">
										<span class="price">€.230.50</span>
										
									</span>
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="img"><img src="img/zaglushka.gif" width="250" height="235" alt=""></span>
								<span class="box_zag_price">
									<span class="zag">Yoke 19 QS</span>
									<span class="box_price">
										<span class="price">€.1,130.70</span>
										
									</span>
								</span>
							</a>
						</li>
						
					</ul>
					<!-- //Recently viewed -->


				</div>
				<div class="clear"></div>			 
			</div>
			<div class="clear"></div>
		</div>
		<!-- //content lcol -->

		
	</div>
	
	<div id="from_footer" class="box">
		<!-- soc_lent_index -->
		<ul class="soc_lent_index">
			<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
		</ul>
		<!-- //soc_lent_index --> 
	</div>

	<!-- footer-->		
	<footer class="footer" id="footer">

		<div class="box_fluid bg_footer1">
			<div class="box footer1">
				<div class="col5">
					<h2 class="h2_bottom">Category</h2>
					<ul class="menu_bottom">
						
						<li><a href="#" class="active">Home</a></li>
						<li><a href="#">About us</a></li>
						<li><a href="#">Eshop</a></li>
						<li><a href="#">Features</a></li>
						<li><a href="#">New collections</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Contact</a></li>							
					</ul>
				</div>

				<div class="col5">
					<h2 class="h2_bottom">Our Account</h2>
					<ul class="menu_bottom">
						<li><a href="#">Your Account</a></li>
						<li><a href="#">Personal information</a></li>
						<li><a href="#">Addresses</a></li>
						<li><a href="#">Discount</a></li>
						<li><a href="#">Orders history</a></li>
						<li><a href="#">Addresses</a></li>
						<li><a href="#">Search Terms</a></li>
					</ul>
				</div>

				<div class="col5">
					<h2 class="h2_bottom">Our Support</h2>
					<ul class="menu_bottom">							
						<li><a href="#">Site Map</a></li>
						<li><a href="#">Search Terms</a></li>
						<li><a href="#">Advanced Search</a></li>
						<li><a href="#">Mobile</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Mobile</a></li>
						<li><a href="#">Addresses</a></li>
					</ul>
				</div>

				<div class="col5">
					<h2 class="h2_bottom">Newsletter</h2>
					<p>Join thousands of other people subscribe to our news</p>

					<!-- subscribe -->
					<form class="subscribe" action="#" method="post">
						<input class="text" type="text" name="sub_mail" value="" placeholder="Insert email">
						<input class="submit" type="submit" value="submit">
					</form>
					<!-- //subscribe -->

					<!-- payment -->
					<ul class="payment">
						<li><img src="img/payment/1.jpg" width="36" height="22" alt=""></li>
						<li><img src="img/payment/2.gif" width="36" height="22" alt=""></li>
						<li><img src="img/payment/3.jpg" width="36" height="22" alt=""></li>
						<li><img src="img/payment/4.jpg" width="36" height="22" alt=""></li>
						<li><img src="img/payment/5.gif" width="36" height="22" alt=""></li>
						<li><img src="img/payment/6.jpg" width="36" height="22" alt=""></li>
					</ul>
					<!-- //payment -->
				</div>

				<div class="col5">
					<h2 class="h2_bottom">About Us</h2>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>
					<div class="contacts_bottom">
						<p><span class="name">Phone:</span> <a class="tel" href="tel:19993429876">1-999-342-9876</a>
						<p><span class="name">E-mail:</span> <a class="mail" href="mailto:19993429876">info@surfhouse.com</a></p>
					</div>
				</div>

			</div>
		</div>
		<div class="box_fluid bg_footer2">
			<div class="box footer2">
				<div class="copyright">
					&copy; 2014  SURFHOUSE. <span class="pl">All rights reserved - Designed by theuncreativelab.com</span>
				</div>

				<!-- soc_bottom -->
				<ul class="soc_bottom">
					<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
				</ul>
				<!-- //soc_bottom -->
				<div class="clear"></div>
			</div>			
		</div>
	</footer>
	
	<!--// footer-->
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.js"></script>

<!-- prettyPhoto 2_2 -->
<script src="lib/pretty/js/jquery.prettyPhoto.js"></script>
<script>
	$(function(){
		$("a[rel^='prettyPhoto']").prettyPhoto({
		  overlay_gallery:false
		});
	});
</script>
<!-- //prettyPhoto 2_2 -->

<script src="lib/all.js"></script>
</body>
</html>