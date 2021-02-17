<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="header">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">CompTech</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/webstore/products/adminPage"><spring:message
							code="header.home.label" /> <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="/webstore/products/add"><i class="fas fa-plus-circle"></i> <spring:message
							code="headerAdmin.addProducts.label" /></a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <div class="pull-right" style="padding-right: 50px">
				<a href="/webstore/products/adminPage/?language=en" class="btn btn-outline-light"> <spring:message
							code="header.languageEn.label" /></a>|<a
					href="/webstore/products/adminPage/?language=bs" class="btn btn-outline-light"><spring:message
							code="header.languageBs.label" /></a>
			</div>
                    <a class="nav-link btn btn-danger btn-mini" href="/webstore/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
            </form>
        </div>
    </nav>
</div>
