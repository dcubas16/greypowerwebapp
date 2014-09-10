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
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">Nombre</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputEmail3"
							placeholder="Nombre">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">Descripción</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="3" placeholder="Descripción"></textarea>
					</div>
				</div>

				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">Unidad
						de Medida</label>
					<div class="col-sm-10">
						<select class="form-control">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">Precio Unitario</label>
					<div class="col-sm-10">
						<input type="number" class="form-control" id="inputEmail3"
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
	$(function() {
		var viewModel = {
			mainMenuSelected : ko.observable(1),
		};

		ko.applyBindings(viewModel, $('body')[0]);
	});
</script>
</html>