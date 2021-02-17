<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="head.jsp" flush="true" />
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js">
	
</script>
<script src="/webstore/resource/js/controllers.js">
	
</script>
<title>Products</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>
					<spring:message code="addProduct.products.label" />
				</h1>
			</div>
		</div>
	</section>
	<section class="container" data-ng-app="cartApp">
		<div class="row">
			<div class="col-md-5">
				<img
					src="<c:url value="/resource/images/${param.id}.png">
</c:url>"
					alt="image" style="width: 100%" />
			</div>
			<div class="col-md-5">
				<h3>${product.name}</h3>
				<p>${product.description}</p>
				<p>
					<!-- id sa URL-a -->
					<strong><spring:message code="product.itemId.label" />: </strong><span>${param.id}</span>
				</p>
				<p>
					<strong><spring:message code="product.manufacturer.label" />:</strong>
					${product.manufacturer}
				</p>
				<p>
					<strong><spring:message code="product.category.label" />:</strong>
					${product.category}
				</p>
				<p>
					<strong><spring:message code="products.unitsInStock.label" />
					</strong> ${product.unitsInStock}
				</p>
				<h4>${product.unitPrice}USD</h4>

				<p data-ng-controller="cartCtrl">
					<a href="<spring:url value="/products" />"
						class="btn btn-secondary"> <span class="fas fa-arrow-left"></span>
					<spring:message code="products.back.label" />
					</a>
					  <a href="#" class="btn btn-success btn-large"
						data-ng-click="addToCart('${param.id}')"> <span
						class="fas fa-shopping-cart"></span> Order Now
					</a> <!-- <a href="<spring:url value="/cart" />" class="btn btn-default">
						<span class="glyphicon-hand-right glyphicon"></span> View Cart
					</a>-->
 					
				</p>

			</div>
		</div>
	</section>
</body>
</html>
