<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach var="event" items="${events}">
		<div class="colunaEvent">
			<a href="evento/<c:out value="${event.id}"/>">
				<figure class="foto">
					<c:choose>
						<c:when test="${empty event.thumbId}">
							<img src="img/events.jpg" width="110" height="110">
						</c:when>
						<c:otherwise>
							<img src="getThumb.action?id=<c:out value='${event.thumbId}'/>&dataType=3" width="129" height="129" alt="">
						</c:otherwise>
					</c:choose>
				</figure>
				<h3><c:out value="${event.title}"/></h3>
			</a>
			<p>
				<fmt:formatDate pattern="EEEE" value="${event.start}"/><br/>
				<fmt:formatDate dateStyle="MEDIUM" value="${event.start}"/><br/>
				às <fmt:formatDate type="time" value="${event.start}"/>
			</p>
		</div>   
</c:forEach> 
