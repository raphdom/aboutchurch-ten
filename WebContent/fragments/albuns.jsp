<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="album" items="${albuns}">
	<div class="colunaAlbum">
		<a href="galeria/album/<c:out value='${album.id}'/>">
			<figure class="foto">
				<c:choose>
				 <c:when test="${empty album.thumbId}">
				 	<img src="img/defaultNoImage.png">
				 </c:when>
				 <c:otherwise>
				 	<img src="getThumb.action?id=<c:out value='${album.thumbId}'/>&dataType=5" alt="">
				 </c:otherwise>
				</c:choose>
			</figure>
			<h3><c:out value='${album.title}' /></h3>
		</a>
	</div>
</c:forEach>
