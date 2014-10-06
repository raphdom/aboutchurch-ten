<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach var="event" items="${events}">
	<div class="colunaEvent">
		<figure class="foto">
			<c:choose>
				<c:when test="${empty event.thumbId}">
					<img src="img/events.jpg" alt="">
				</c:when>
				<c:otherwise>
					<img src="getThumb.action?id=<c:out value='${event.thumbId}'/>&dataType=3" width="100" height="100" alt="">
				</c:otherwise>
			</c:choose>
		</figure>
		<h2><c:out value="${event.title}"/></h2>
		<p>
			<fmt:formatDate pattern="E" value="${event.start}"/>
			<fmt:formatDate dateStyle="MEDIUM" value="${event.start}"/>
		</p>
	</div>   
</c:forEach> 
