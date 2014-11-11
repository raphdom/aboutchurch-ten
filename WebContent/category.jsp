<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="fragments/head.jsp" />
	<body>
		<div class="container clearfix">
			<jsp:include page="fragments/header.jsp" />
			<div class="article">
				<h1><c:out value="${category.text}"/></h1>
				<c:choose>
				 <c:when test="${empty category.thumbId}">
				 </c:when>
				 <c:otherwise>
				 	<figure><img src="getThumb.action?id=<c:out value="${category.thumbId}"/>&dataType=5" alt=""></figure>
				 </c:otherwise>
				</c:choose>
				
				<p><c:out value="${category.description}" escapeXml="false"/></p>
			</div>
			
			<c:choose>
			 <c:when test="${empty articles}">
			 </c:when>
			 <c:otherwise>
			 	<div class="redBorder category">
					<div class = "h1Image">
						<img src="img/iconAgenda.png">
						<h1>Artigos:</h1>
					</div>
					<jsp:include page="fragments/articles.jsp" />
				</div>
			 </c:otherwise>
			</c:choose>
			
			<c:choose>
			 <c:when test="${empty albuns}">
			 </c:when>
			 <c:otherwise>
			 	<section class="mainInnerAlbuns">
			      <h1>Albuns:</h1>
			      <jsp:include page="fragments/albuns.jsp" />
				</section>
			 </c:otherwise>
			</c:choose>
			
			<jsp:include page="fragments/footer.jsp" />
		</div>
	</body>
</html>