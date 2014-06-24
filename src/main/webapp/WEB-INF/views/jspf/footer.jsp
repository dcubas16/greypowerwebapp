<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- <hr class="featurette-divider"> -->
<!-- FOOTER -->
<footer style="margin-bottom: 0px;">
	<div class="container"
		style="background-image: url(resources/images/headerBackGround.jpg); margin-left: 0px; margin-right: 0px; width: 100%; height: 70px;">
		<div class="row" style="padding-top: 25px;">
			<div class="col-md-1"></div>
			<div class="col-md-12">
				<p class="pull-right">
					<a href="#"><spring:message code="label.backToTop" /></a>
				</p>
				<p>
					<spring:message code="label.poweredBy" /> <a href="#"><spring:message code="label.greyPower" /></a> <spring:message code="label.year"/>
				</p>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
</footer>