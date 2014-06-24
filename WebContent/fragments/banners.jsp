<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="pvn-slides">
	<div id="slides">
		<div class="slides_container">
			<c:forEach var="banner" items="${banners}">
				<a href="<c:out value="${banner.link}"/>">
					<img
					src="getThumb.action?id=<c:out value="${banner.thumbId}"/>&dataType=10&fd=1"
					width="950" height="370">
				</a>
			</c:forEach>
			
		</div>
		<a href="#" class="prev">
			<img src="images/arrow-prev.png" width="24" height="43" alt="Arrow Prev">
		</a> 
		<a href="#"	class="next">
			<img src="images/arrow-next.png" width="24"	height="43" alt="Arrow Next">
		</a>
	</div>
</div>