<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="fragments/head.jsp" />
	<!--[if lt IE 9]>
  		<script type="text/javascript" src="js/excanvas.js"></script>
	<![endif]-->
	<script type="text/javascript" src="js/spinners.min.js"></script>
	<script type="text/javascript" src="js/lightview.js"></script>
	<link rel="stylesheet" type="text/css" href="css/lightview.css"/>
	<body>
		<jsp:include page="fragments/header.jsp" />
		<jsp:include page="fragments/path.jsp" />
		<div id = "pvn-content-galery">
			<div id = "pvn-galery">
				<c:if test="${not empty categories}">
				    <c:forEach var="category" items="${categories}">
				    	<div class="pvn-galery-item">
							<div class="title"><c:out value='${category.text}'/></div>
							<a href="${pageContext.request.contextPath}/galeria/${type}/categoria/<c:out value='${category.id}'/>">
								<div class="image">
									<img src="${pageContext.request.contextPath}/getThumb.action?id=<c:out value='${category.thumbId}'/>&dataType=5" width="280" height="200" alt="">
								</div>
							</a>
						</div>
				    </c:forEach>
			    </c:if>
			    <c:if test="${not empty albuns}">
				    <c:forEach var="album" items="${albuns}">
				    	<div class="pvn-galery-item">
							<div class="title"><c:out value='${album.title}'/></div>
							<a href="${pageContext.request.contextPath}/galeria/album/<c:out value='${album.id}'/>">
								<div class="image">
									<img src="${pageContext.request.contextPath}/getThumb.action?id=<c:out value='${album.thumbId}'/>&dataType=5" width="280" height="200" alt="">
								</div>
							</a>
						</div>
				    </c:forEach>
			    </c:if>
			</div>
		</div>
		<jsp:include page="fragments/footer.jsp" />
	</body>
</html>