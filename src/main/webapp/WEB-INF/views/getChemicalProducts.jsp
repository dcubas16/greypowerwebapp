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

	<div id="main-content">
		<nav class="navbar navbar-inverse" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-9">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Brand</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-9">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div id="example">
					<div id="grid"></div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>

	</div>
</body>
<script>
	var viewModel = {
		chemicalProducts : ko
				.toJS(
<%out.println(request.getAttribute("chemicalProducts"));%>
	)
	};

	$(function() {
		ko.applyBindings(viewModel, $('body')[0]);
	});
</script>
<script>

	$(function(){
		$("#grid").kendoGrid({
			dataSource : viewModel.chemicalProducts,
			pageable : true,
			height : 550,
			toolbar : [ "create" ],
			columns : [ 
			            { field: "name", title: "Nombre"}
			            ,{ field: "description", title: "Descripcion"}
			            ,{ field: "unitMeasureId", title: "Unidad de Medida"}
			            ,{ field: "price", title: "Precio Unitario"}
			            ,{ field: "imagePath", title: "Imagen"}
			            , {
				command : [ "edit", "destroy" ],
				title : "&nbsp;",
				width : "200px"
			} ],
			editable : "inline"
		});
	});
</script>
</html>