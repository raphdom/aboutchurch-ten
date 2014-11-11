<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="fragments/head.jsp" />
	<body>
		<div class="container clearfix">
			<jsp:include page="fragments/header.jsp" />
			<div class="article">
				<h1><c:out value="${event.title}"/></h1>
				<c:choose>
				 <c:when test="${empty event.thbId}">
				 	<figure><img src="${pageContext.request.contextPath}/img/events.jpg" width="100" height="100" alt="" /></figure>
				 </c:when>
				 <c:otherwise>
				 	<figure><img src="${pageContext.request.contextPath}/getThumb.action?id=<c:out value="${event.thbId}"/>&dataType=4" width="150" height="150" alt=""></figure>
				 </c:otherwise>
				</c:choose>
				<p>
					<fmt:formatDate pattern="EEEE" value="${eventRecurrence.start}"/>
					<fmt:formatDate dateStyle="long" value="${eventRecurrence.start}"/> das
					<fmt:formatDate type="time" timeStyle="short" value="${eventRecurrence.start}"/> às
					<fmt:formatDate type="time" timeStyle="short" value="${eventRecurrence.end}"/>
					<br/>
					Onde: <c:out value="${event.loc}"/>
					<br/>
					<c:out value="${event.notes}" escapeXml="false"/>
				</p>
			</div>
			<jsp:include page="fragments/footer.jsp" />
		</div>
	</body>
</html>