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
<body class="body-style">
	<c:import url="../views/jspf/header.jsp" />

	<div class="container marketing"
		style="padding-top: 0px; margin-top: 80px;">
		<!-- START THE FEATURETTES -->

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading" style="margin-top: 20px;">
					Minerquim<span class="text-muted"></span>
				</h2>
				<p class="lead">Somos una empresa dedicada a la importación,
					venta y asesoramiento técnico de insumos químicos para las
					industrias mineras y del cuero</p>
			</div>
			<div class="col-md-5">
				<a href="#" class="thumbnail"> <img
					src="resources/images/oro.jpg">
				</a>
			</div>
		</div>
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-5">
				<a href="#" class="thumbnail"> <img
					src="resources/images/leather_11.jpg">
				</a>

			</div>
			<div class="col-md-7">
				<h2 class="featurette-heading" style="margin-top: 20px;">
					Misión<span class="text-muted"></span>
				</h2>
				<p class="lead">
					Somos una empresa proveedora de productos químicos especializados y
					servicios asociados enfocados a nuestros clientes para aportarles
					soluciones que se traduzcan en ventajas competitivas para sus
					negocios. Desarrollamos nuestras actividades con crecimiento
					rentable de acuerdo con la política de mejoramiento continuo; con
					talento humano y valor agregado que satisfaga las expectativas de
					los clientes, permitiendo un reconocimiento satisfactorio para
					nuestros empleados.<br> Garantizamos un total respeto por la
					protección del medio ambiente, la ética y los valores que permitan
					un progreso responsable.
				</p>
			</div>
		</div>
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading" style="margin-top: 20px;">
					Visión<span class="text-muted"></span>
				</h2>
				<p class="lead">Ser una empresa líder en el suministro,
					distribución de productos químicos especiales para diferentes
					procesos de transformación en el mercado nacional, preferidos por
					nuestros clientes por la calidad, servicio, funcionalidad y costo
					acordes con los más altos estándares internacionales. <br>Por
					consiguiente ser la columna vertebral de un grupo empresarial que
					en el Sector Químico genere con su gestión la mayor competitividad
					y permita el crecimiento de sus colaboradores en una interacción
					viable</p>
			</div>
			<div class="col-md-5">
				<a href="#" class="thumbnail"> <img
					src="resources/images/coaching-ejecutivos-top.jpg">
				</a>
			</div>
		</div>
		<!-- /END THE FEATURETTES -->
		<!-- FOOTER -->

	</div>
	<c:import url="../views/jspf/footer.jsp" />
</body>
<script>
	$(function() {
		var viewModel = {
			mainMenuSelected : ko.observable(2),
		};

		ko.applyBindings(viewModel, $('body')[0]);
	});
</script>
</html>