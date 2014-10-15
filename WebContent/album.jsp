<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="fragments/head.jsp" />
	<c:set var="req" value="${pageContext.request}" />
    <c:set var="baseURL" value="${req.scheme}://${req.serverName}:${req.serverPort}${req.contextPath}" />
	<body>
		<div class="container clearfix">
			<jsp:include page="fragments/header.jsp" />
			
			<div class="gallery">
				<h1><c:out value="${album.title}"/></h1>
				<c:if test="${not empty album.items}">
					    <c:forEach var="item" items="${album.items}">
					    	<div class="item">
					    			<a href="${baseURL}/getThumb.action?id=<c:out value='${item.id}'/>&dataType=10" 
										class="lightview"
										data-lightview-group ='album'
										data-lightview-title ='<c:out value="${item.title}"/>' 
			   							data-lightview-caption ="<c:out value='${item.description}'/>"
			   							data-lightview-group-options ="controls: 'thumbnails'">
			   							<figure>
			   								<img src="${pageContext.request.contextPath}/getThumb.action?id=<c:out value='${item.id}'/>&dataType=5" width="280" height="200" alt="" />
			   							</figure>
			   						</a>
			   					<div class="title-image"><c:out value='${item.title}'/></div>
								<div class="caption-image"><c:out value='${item.description}'/></div>
			   				</div>
					    </c:forEach>
			    </c:if>
			</div>
			
			<jsp:include page="fragments/footer.jsp" />
		</div>
	</body>
</html>