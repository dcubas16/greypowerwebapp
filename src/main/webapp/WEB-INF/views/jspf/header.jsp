<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<header class="container-fluid">
	<div class="row"
		style="padding-top: 10px; background-image: url(resources/images/headerBackGround.jpg)">
		<div class="col-md-1"></div>
		<div class="col-md-4" style="text-align: center;">
			<a href="home.htm"> <img class="logo-image-style"
				src="resources/images/minerquim-logo.png" height="100" width="200">
			</a>
		</div>
		<div class="col-md-6" style="text-align: center; padding-top: 40px;">
			<ul class="nav nav-pills" style="font-weight: bold;">
				<li
					data-bind="attr: { class: (mainMenuSelected() == 1)? 'active' : '' }"><a
					href="home.htm"><spring:message code="label.home" /></a></li>
				<li
					data-bind="attr: { class: (mainMenuSelected() == 2)? 'active' : '' }"><a
					href="aboutus.htm"><spring:message code="label.aboutus" /></a></li>
				<li
					data-bind="attr: { class: (mainMenuSelected() == 3)? 'active' : '' }"><a
					href="products.htm"><spring:message code="label.products" /></a></li>
				<li
					data-bind="attr: { class: (mainMenuSelected() == 4)? 'active' : '' }"><a
					href="services.htm"><spring:message code="label.services" /></a></li>
				<li
					data-bind="attr: { class: (mainMenuSelected() == 5)? 'active' : '' }"><a
					href="contact.htm"><spring:message code="label.contact" /></a></li>
			</ul>
		</div>
		<div class="col-md-1">
			<div class="btn-group pull-right">
				<button type="button"
					class="btn btn-default btn-xs dropdown-toggle button-dropdown-black "
					data-toggle="dropdown"
					style="padding-top: 4px; padding-bottom: 4px; padding-right: 8px; font-size: 11px;">
					<span class="glyphicon bfh-flag-ES"></span>
					<spring:message code="label.spanish" />
					&nbsp;<span class="caret"></span>
				</button>
				<ul class="dropdown-menu dropdown-menu-minerquim-style" role="menu">
					<li><a href="#"><span class="glyphicon bfh-flag-US"></span>
						<spring:message code="label.english" />&nbsp;</a></li>
				</ul>
			</div>
		</div>
	</div>
</header>