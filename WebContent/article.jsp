<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="fragments/head.jsp" />
	<body>
		<div class="container clearfix">
			<jsp:include page="fragments/header.jsp" />
			<div class="article">
				<h1><c:out value="${article.title}"/></h1>
				<c:choose>
				 <c:when test="${empty article.thumbId}">
				 	<figure><img src="img/articleNoImage.jpeg" width="150" height="150" alt=""></figure>
				 </c:when>
				 <c:otherwise>
				 	<figure><img src="getThumb.action?id=<c:out value="${article.thumbId}"/>&dataType=4" width="150" height="150" alt=""></figure>
				 </c:otherwise>
				</c:choose>
				
				<p><c:out value="${article.article}" escapeXml="false"/></p>
				<div class="info">
					<div class="label">Publicado em:</div><div class="published-date"><c:out value="${article.publishUp}"/></div>
					<div class="label">Escrito por:</div><div class="writer"><c:out value="${article.author}"/></div>
				</div>
			</div>
			<jsp:include page="fragments/footer.jsp" />
		</div>
	</body>
</html>