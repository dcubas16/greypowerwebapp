<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="en">
<head>
<c:import url="../views/jspf/resources.jsp" />
</head>
<!-- NAVBAR
================================================== -->
<body class="body-style" style="background-image: url(resources/images/oro.jpg)">
	<c:import url="../views/jspf/header.jsp" />
	<div class="container marketing">
		<div class="row" style="height: 100%;">
			<div class="col-md-1"></div>
			<div class="col-md-8"
				style="padding-top: 20px; border-radius: 4px; padding-bottom: 0px;">
				<div class="row"
					style="background-color: white; border-radius: 3px;">
					<div class="col-md-4"
						style="padding-top: 6px; padding-left: 6px; padding-right: 6px;">
						<a href="#" class="thumbnail"> <img
							src="resources/images/Pouring_liquid_mercury_bionerd.jpg"
							alt="300x200" style="width: 300px; height: 200px;">
						</a>
					</div>
					<div class="col-md-4"
						style="padding-top: 6px; padding-right: 6px; padding-left: 6px;">
						<h2>Mercurio</h2>
					</div>
					<div class="col-md-4"
						style="padding-top: 6px; padding-right: 6px; padding-left: 6px; text-align: right;">
						<a href="#" class="btn btn-default" role="button">Imprimir<span>&nbsp;</span><span
							class="glyphicon glyphicon-print"></span></a>
						<a href="#" class="btn btn-default" role="button">Descargar<span>&nbsp;</span><span
							class="glyphicon glyphicon-cloud-download"></span></a>
					</div>
				</div>
				<div class="row"
					style="padding-bottom: 0px; margin-bottom: 0px; border-bottom-width: 6px;">
					<div class="col-md-12"
						style="background-color: white; padding-bottom: 6px;">
						<div class="row"
							style="padding-right: 6px; padding-left: 6px; padding-bottom: 6px;">
							<nav id="navbar-example2"
								class="navbar navbar-default navbar-static" role="navigation">
								<div class="container-fluid" style="">
									<div class="navbar-header" style="height: 25px;">
										<button class="navbar-toggle" type="button"
											data-toggle="collapse"
											data-target=".bs-example-js-navbar-scrollspy">
											<span class="sr-only">Toggle navigation</span> <span
												class="icon-bar"></span> <span class="icon-bar"></span> <span
												class="icon-bar"></span>
										</button>
										<a class="navbar-brand" href="#">Project Name</a>
									</div>
									<div
										class="collapse navbar-collapse bs-example-js-navbar-scrollspy"
										style="height: 25px;">
										<ul class="nav navbar-nav">
											<li class=""><a href="#fat">@fat</a></li>
											<li class=""><a href="#mdo">@mdo</a></li>
											<li class="dropdown active"><a href="#" id="navbarDrop1"
												class="dropdown-toggle" data-toggle="dropdown">Dropdown
													<b class="caret"></b>
											</a>
												<ul class="dropdown-menu" role="menu"
													aria-labelledby="navbarDrop1">
													<li class=""><a href="#one" tabindex="-1">one</a></li>
													<li class="active"><a href="#two" tabindex="-1">two</a></li>
													<li class="divider"></li>
													<li class=""><a href="#three" tabindex="-1">three</a></li>
												</ul></li>
										</ul>
									</div>
								</div>
							</nav>
							<div data-spy="scroll" data-target="#navbar-example2"
								data-offset="0" class="scrollspy-example"
								style="overflow: auto;">
								<h4 id="fat">@fat</h4>
								<p>Ad leggings keytar, brunch id art party dolor labore.
									Pitchfork yr enim lo-fi before they sold out qui. Tumblr
									farm-to-table bicycle rights whatever. Anim keffiyeh carles
									cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon
									irure. Cosby sweater lomo jean shorts, williamsburg hoodie
									minim qui you probably haven't heard of them et cardigan trust
									fund culpa biodiesel wes anderson aesthetic. Nihil tattooed
									accusamus, cred irony biodiesel keffiyeh artisan ullamco
									consequat.</p>
								<h4 id="mdo">@mdo</h4>
								<p>Veniam marfa mustache skateboard, adipisicing fugiat
									velit pitchfork beard. Freegan beard aliqua cupidatat
									mcsweeney's vero. Cupidatat four loko nisi, ea helvetica nulla
									carles. Tattooed cosby sweater food truck, mcsweeney's quis non
									freegan vinyl. Lo-fi wes anderson +1 sartorial. Carles non
									aesthetic exercitation quis gentrify. Brooklyn adipisicing
									craft beer vice keytar deserunt.</p>
								<h4 id="one">one</h4>
								<p>Occaecat commodo aliqua delectus. Fap craft beer deserunt
									skateboard ea. Lomo bicycle rights adipisicing banh mi, velit
									ea sunt next level locavore single-origin coffee in magna
									veniam. High life id vinyl, echo park consequat quis aliquip
									banh mi pitchfork. Vero VHS est adipisicing. Consectetur nisi
									DIY minim messenger bag. Cred ex in, sustainable delectus
									consectetur fanny pack iphone.</p>
								<h4 id="two">two</h4>
								<p>In incididunt echo park, officia deserunt mcsweeney's
									proident master cleanse thundercats sapiente veniam. Excepteur
									VHS elit, proident shoreditch +1 biodiesel laborum craft beer.
									Single-origin coffee wayfarers irure four loko, cupidatat terry
									richardson master cleanse. Assumenda you probably haven't heard
									of them art party fanny pack, tattooed nulla cardigan tempor
									ad. Proident wolf nesciunt sartorial keffiyeh eu banh mi
									sustainable. Elit wolf voluptate, lo-fi ea portland before they
									sold out four loko. Locavore enim nostrud mlkshk brooklyn
									nesciunt.</p>
								<h4 id="three">three</h4>
								<p>Ad leggings keytar, brunch id art party dolor labore.
									Pitchfork yr enim lo-fi before they sold out qui. Tumblr
									farm-to-table bicycle rights whatever. Anim keffiyeh carles
									cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon
									irure. Cosby sweater lomo jean shorts, williamsburg hoodie
									minim qui you probably haven't heard of them et cardigan trust
									fund culpa biodiesel wes anderson aesthetic. Nihil tattooed
									accusamus, cred irony biodiesel keffiyeh artisan ullamco
									consequat.</p>
								<p>Keytar twee blog, culpa messenger bag marfa whatever
									delectus food truck. Sapiente synth id assumenda. Locavore sed
									helvetica cliche irony, thundercats you probably haven't heard
									of them consequat hoodie gluten-free lo-fi fap aliquip. Labore
									elit placeat before they sold out, terry richardson proident
									brunch nesciunt quis cosby sweater pariatur keffiyeh ut
									helvetica artisan. Cardigan craft beer seitan readymade velit.
									VHS chambray laboris tempor veniam. Anim mollit minim commodo
									ullamco thundercats.</p>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="col-md-3">
				<c:import url="../views/jspf/rightMenu.jsp" />
			</div>
		</div>
		<!-- Carousel
    ================================================== -->
	</div>
	<c:import url="../views/jspf/footer.jsp" />
</body>
<script>
	$(function() {
		var viewModel = {
			mainMenuSelected : ko.observable(3),
		};
		
		ko.applyBindings(viewModel, $('body')[0]);
	});
</script>
</html>