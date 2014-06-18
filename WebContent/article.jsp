<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="fragments/head.jsp" />
	<body>
		<jsp:include page="fragments/header.jsp" />
		<jsp:include page="fragments/path.jsp" />
		<div id="pvn-article">
			<c:choose>
			 <c:when test="${empty article.file}">
			 </c:when>
			 <c:otherwise>
			 	<div class="image"><img src="ImageViewer.jr?id=<c:out value="${article.file.id}"/>&width=150&height=150&exactlySize=true&dataType=3" width="150" height="150" alt=""></div>
			 </c:otherwise>
			</c:choose>
			<div class="titulo"><c:out value="${article.title}"/></div>
			<div class="cont_artigo"><c:out value="${article.article}"/></div>
			<div class="info">
				<div class="publishedlabel">Publicado em:</div><div class="published-date"><c:out value="${publish}"/></div>
				<div class="publishedlabel">Escrito por:</div><div class="write"><c:out value="${article.author}"/></div>
			</div>
		</div>
		<jsp:include page="fragments/footer.jsp" />
	</body>
</html>