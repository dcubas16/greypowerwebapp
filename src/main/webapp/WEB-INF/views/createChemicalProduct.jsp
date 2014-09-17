<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	response.setContentType("text/html");
	response.setCharacterEncoding("UTF-8");
%>
<html lang="es_PE" style="font: 12px sans-serif;">
<head>
<c:import url="../views/jspf/resources.jsp" />
</head>
<!-- NAVBAR
================================================== -->
<body class="body-style">
	<div class="row" style="height: 100px"></div>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<form class="form-horizontal" role="form" method="POST" action="../Products/saveChemicalProduct.htm" 
				modelAttribute="chemicalProducto">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">Nombre</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name" name="name"
							placeholder="Nombre">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">Descripción</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="3" placeholder="Descripción" id="description" name="description"></textarea>
					</div>
				</div>

				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">Unidad
						de Medida</label>
					<div class="col-sm-10">
						<select class="form-control" id="unitMeasureId" name="unitMeasureId"
							data-bind="options: unitsMeasure, optionsText: 'name', value: 'id',
                       optionsCaption: 'Seleccione'"></select>
					</div>
				</div>

				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">Precio
						Unitario</label>
					<div class="col-sm-10">
						<input type="number" class="form-control" name="price" id="price"
							placeholder="Precio Unitario">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Guardar</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-2"></div>
	</div>
</body>
<script>
	var viewModel = {
			name : ko.observable(),
			description : ko.observable(),
			unitMeasureId : ko.observable(),
			price : ko.observable(),
			imageUrl : ko.observable(),
			tecnicalDocumentUrl : ko.observable(),
			
			unitsMeasure : ko.toJS(<%out.println(request.getAttribute("unitsMeasure"));%>)
	};

	$(function() {
		ko.applyBindings(viewModel, $('body')[0]);
	});
</script>
</html>