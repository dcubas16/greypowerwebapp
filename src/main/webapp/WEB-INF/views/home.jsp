<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	response.setContentType("text/html");
	response.setCharacterEncoding("UTF-8");
%>
<html lang="es_PE" style="font:12px sans-serif;">
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
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-9">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Brand</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Link</a></li>
            <li><a href="#">Link</a></li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				 <div id="example">
            <div id="grid"></div>

            <script>
                $(document).ready(function () {
                    var crudServiceBaseUrl = "http://demos.telerik.com/kendo-ui/service",
                        dataSource = new kendo.data.DataSource({
                            transport: {
                                read:  {
                                    url: crudServiceBaseUrl + "/Products",
                                    dataType: "jsonp"
                                },
                                update: {
                                    url: crudServiceBaseUrl + "/Products/Update",
                                    dataType: "jsonp"
                                },
                                destroy: {
                                    url: crudServiceBaseUrl + "/Products/Destroy",
                                    dataType: "jsonp"
                                },
                                create: {
                                    url: crudServiceBaseUrl + "/Products/Create",
                                    dataType: "jsonp"
                                },
                                parameterMap: function(options, operation) {
                                    if (operation !== "read" && options.models) {
                                        return {models: kendo.stringify(options.models)};
                                    }
                                }
                            },
                            batch: true,
                            pageSize: 20,
                            schema: {
                                model: {
                                    id: "ProductID",
                                    fields: {
                                        ProductID: { editable: false, nullable: true },
                                        ProductName: { validation: { required: true } },
                                        UnitPrice: { type: "number", validation: { required: true, min: 1} },
                                        Discontinued: { type: "boolean" },
                                        UnitsInStock: { type: "number", validation: { min: 0, required: true } }
                                    }
                                }
                            }
                        });

                    $("#grid").kendoGrid({
                        dataSource: dataSource,
                        pageable: true,
                        height: 550,
                        toolbar: ["create"],
                        columns: [
                            "ProductName",
                            { field: "UnitPrice", title: "Unit Price", format: "{0:c}", width: "120px" },
                            { field: "UnitsInStock", title:"Units In Stock", width: "120px" },
                            { field: "Discontinued", width: "120px" },
                            { command: ["edit", "destroy"], title: "&nbsp;", width: "200px" }],
                        editable: "inline"
                    });
                });
            </script>
        </div>
			</div>
			<div class="col-md-2"></div>
		</div>

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