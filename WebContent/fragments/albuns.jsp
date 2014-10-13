<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="album" items="${albuns}">
	<div class="colunaAlbum">
		<a href="galeria/album/<c:out value='${album.id}'/>">
		<figure class="foto">
			<img src="getThumb.action?id=<c:out value='${album.thumbId}'/>&dataType=5" />
		</figure>
	 		<h3><c:out value='${album.title}'/></h3>
	 		</a>
	</div>
</c:forEach>
