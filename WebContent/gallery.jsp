<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="fragments/head.jsp" />
	<body>
		<div class="container clearfix">
			<jsp:include page="fragments/header.jsp" />
			
			<div class="gallery">
			
				<h1>Albuns</h1>
				
				<c:if test="${not empty categories}">
				    <c:forEach var="category" items="${categories}">
				    	<div class="item">
							<a href="${pageContext.request.contextPath}/galeria/${type}/categoria/<c:out value='${category.id}'/>">
								
								<figure>
									<c:choose>
									 <c:when test="${empty category.thumbId}">
									 	<img src="${pageContext.request.contextPath}/img/defaultNoImage.png">
									 </c:when>
									 <c:otherwise>
									 	<img src="${pageContext.request.contextPath}/getThumb.action?id=<c:out value='${category.thumbId}'/>&dataType=5" alt="">
									 </c:otherwise>
									</c:choose>
								</figure>
								<h2><c:out value='${category.text}'/></h2>
							</a>
						</div>
				    </c:forEach>
			    </c:if>
			    <c:if test="${not empty albuns}">
				    <c:forEach var="album" items="${albuns}">
				    	<div class="item">
							<a href="${pageContext.request.contextPath}/galeria/album/<c:out value='${album.id}'/>">
								<figure>
									<c:choose>
									 <c:when test="${empty album.thumbId}">
									 	<img src="${pageContext.request.contextPath}/img/defaultNoImage.png">
									 </c:when>
									 <c:otherwise>
									 	<img src="${pageContext.request.contextPath}/getThumb.action?id=<c:out value='${album.thumbId}'/>&dataType=5" alt="">
									 </c:otherwise>
									</c:choose>
								</figure>
								<h2><c:out value='${album.title}'/></h2>
							</a>
						</div>
				    </c:forEach>
			    </c:if>
			    <c:if test="${not empty videos}">
				    <c:forEach var="video" items="${videos}">
				    	<div class="item">
							<a href='http://www.youtube.com/embed/<c:out value="${video.youtubeId}"/>?autoplay=1&autohide=1&border=0&egm=0&showinfo=0&showsearch=0' 
							   class="lightview" 
							   data-lightview-type="iframe"  
							   data-lightview-options="
							     width: 638,
							     height: 360,
							     viewport: 'scale'
							   ">
								<figure>
									<img src="http://img.youtube.com/vi/<c:out value="${video.youtubeId}"/>/0.jpg">
								</figure>
								<h2><c:out value='${video.title}'/></h2>
							</a>
						</div>
				    </c:forEach>
			    </c:if>
			</div>
			
			<jsp:include page="fragments/footer.jsp" />
		</div>
	</body>
</html>