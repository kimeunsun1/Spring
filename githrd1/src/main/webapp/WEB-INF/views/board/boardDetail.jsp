<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BlackPink 게시판 상세보기</title>
<link rel="icon" type="image/png" sizes="32x32" href="/www/img/favicon/favicon-32x32.png">
<link rel="stylesheet" type="text/css" href="/www/css/w3.css">
<link rel="stylesheet" type="text/css" href="/www/css/user.css">
<script type="text/javascript" src="/www/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/www/js/board/board.js"></script>
<style type="text/css">
	label {
		font-size: 14pt;
		/* font-weight: bold; */
		color: gray;
		padding-right: 20px;
		text-align: right;
	}
	input[type="file"].w3-margin-bottom {
		margin-bottom: 5px!important;
	}
	.mgv0 {
		text-align: center;
	}
</style>
</head>
<body>
	<form method="POST" action="/www/board/boardList.blp" id="frm" name="frm">
		<input type="hidden" name="nowPage" value="${param.nowPage}">
		<input type="hidden" name="bno" value="${DATA.bno}">
	</form>
	
	<div class="w3-content mxw700">
		<h1 class="w3-blue w3-padding w3-center w3-card-4">게시글 상세보기</h1>
		<div class="w3-col w3-card-4 frmpadding">
			<div class="w3-col w3-margin-top w3-margin-bottom">
				<label class="w3-col s2">글번호</label>
				<h4 id="bno" class="w3-col m10 mgv0">${DATA.bno}</h4>
			</div>
			<div class="w3-col w3-margin-top w3-margin-bottom">
				<label class="w3-col s2">Writer</label>
				<h4 id="writer" class="w3-col m10 mgv0">${DATA.id}</h4>
			</div>
			<div class="w3-col w3-margin-top w3-margin-bottom">
				<label class="w3-col s2">Title</label>
				<h4 id="title" class="w3-col m10 mgv0">${DATA.title}</h4>
			</div>
			<div class="w3-col w3-margin-top w3-margin-bottom">
				<label class="w3-col s2">Content</label>
				<h4 id="body" class="w3-col m10 mgv0">${DATA.body}</h4>
			</div>
			<div class="w3-col w3-margin-top w3-margin-bottom">
				<label class="w3-col s2">작성일</label>
				<h4 id="wdate" class="w3-col m10 mgv0">${DATA.sdate}</h4>
			</div>
			
<c:if test="${not empty LIST}">			
			<div class="w3-col w3-margin-bottom" id="previewbox">
				<label class="w3-col s2">Image</label>
				<div class="w3-col m10 w3-center" id="preview">
		<c:forEach var="data" items="${LIST}">
			<c:if test="${not empty data.savename}">
					<div class="inblock picbox">
				<c:if test="${data.dir eq '/www/upload/'}">
						<img class="pic" src="${data.dir}${data.savename}"> 
				</c:if>
				<c:if test="${data.dir ne '/www/upload/'}">
						<img class="pic" src="/www${data.dir}/${data.savename}"> 
				</c:if>
					</div>
			</c:if>
		</c:forEach>
				</div>
			</div>
</c:if>
		</div>
		
		<div class="w3-col w3-margin-top w3-card-4">
	<c:if test="${SID eq DATA.id}">
			<div class="w3-third w3-button w3-blue" id="hbtn">home</div>
			<div class="w3-third w3-button w3-green" id="listbtn">리스트</div>
			<div class="w3-third w3-button w3-deep-orange" id="edit">글수정</div>
			<div class="w3-third w3-button w3-deep-red" id=dbtn">글삭제</div>
	</c:if>
	<c:if test="${SID eq DATA.id}">
			<div class="w3-third w3-button w3-blue" id="hbtn">home</div>
			<div class="w3-third w3-button w3-green" id="listbtn">리스트</div>
	</c:if>
		</div>
	</div>
	
<%-- 	<form method="POST" action="/www/board/boardList.blp" id="pageFrm" name="pageFrm">
		<input type="hidden" name="nowPage" value="${NOWPAGE}">
		<input type="hidden" name="nowPage" value="${param.nowPage}">
	</form> --%>
</body>
</html>