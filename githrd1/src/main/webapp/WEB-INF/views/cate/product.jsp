<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Page</title>
<link rel="stylesheet" type="text/css" href="/www/css/w3.css">
<link rel="stylesheet" type="text/css" href="/www/css/user.css">
<script type="text/javascript" src="/www/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/www/js/product/product.js"></script>
</head>
<body>
	<div class="w3-content mxw700">
		<h1 class="w3-padding w3-center w3-blue w3-card-4">Product Page</h1>
		
		<div class="w3-col w3-margin-top">
			<div class="w3-quarter">
				<select id="xlcate" class="w3-select w3-border w3-center">
					<option disabled selected>분류 선택</option>
		<c:forEach var="data" items="${LIST}">
					<option value="${data.cno}">${data.cname}</option>
		</c:forEach>
				</select>
			</div>
			<div class="w3-quarter pdl5">
				<select id="lcate" class="w3-select w3-border w3-center">
					<option disabled selected>대분류 선택</option>
				</select>
			</div>
			<div class="w3-quarter pdl5">
				<select id="mcate" class="w3-select w3-border w3-center">
					<option disabled selected>중분류 선택</option>
				</select>
			</div>
			<div class="w3-quarter pdl5">
				<select id="scate" class="w3-select w3-border w3-center">
					<option disabled selected>소분류 선택</option>
				</select>
			</div>
		</div>
		
		<!-- 제품 리스트 페이지 -->
		<form method="POST" action="/www/cate/productDetail.blp" name="frm" id="frm">
			<input type="hidden" name="pno">
		</form>
		<div class="w3-col w3-margin-top" id="pPanel">
		</div>
<!-- 		
		<div class="w3-col w3-margin-top" id="pPanel">
			<div class="w3-quarter w3-center pdAll5 product" id="">
				<div class="w3-col w3-card-4">
					<img src="" alt="Product" style="width: 100%">
					<h3></h3>
					<p>가 격 : </p>
					<p>제조사: </p>
				</div>
			</div>
<%-- 
<div class="w3-quarter">
	<img src="${data.dir}${data.sname}" alt="Cherries" style="width: 100%">
	<h3>${data.pname}</h3>
	<p>가 격 : ${data.price}</p>
	<p>제조사: ${data.manuf_co}</p>
</div> 
--%>
<!-- 
<div class="w3-quarter w3-center pdAll5">
	<div class="w3-col">
		<img src="/www/img/product/NeoOLED.jpg" alt="Product" style="width: 100%">
		<h3>NeoQLed</h3>
		<p>가 격 : 20</p>
		<p>제조사: 삼성전자</p>
	</div>
</div> 
-->
<!-- 
		</div>
-->		
	</div>
</body>
</html>