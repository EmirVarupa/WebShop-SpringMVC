<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO8859-1">

<jsp:include page="head.jsp" flush="true" />
<title>Products</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="true" />
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1><spring:message
							code="addProduct.products.label" /></h1>
				<p><spring:message
							code="addProduct.allProducts.label" /></p>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">
			<c:forEach items="${products}" var="product">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
						<div style="height: 270px; overflow: hidden;">
							<img
								src="<c:url value="/resource/images/${product.productId}.png">
</c:url>"
								alt="image" style="width: 100%" />
						</div>
						<div class="caption">
							<div style="height: 70px;">
							<h3>
								 
								<a
									href=" <spring:url value= "/products/product?id=${product.productId}" /> "
									style="text-decoration: none" class="text-dark">
									${product.name} </a>
									
							</h3>
							</div>
							<!--  <div style="height: 100px;">
								<p>${product.description}</p>
							</div> -->

							<p>$${product.unitPrice}</p>
							<div style="height: 50px;">
								<p><spring:message
							code="products.unitsInStock.label" /> ${product.unitsInStock}</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>