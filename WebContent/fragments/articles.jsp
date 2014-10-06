<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="article" items="${articles}">
	<div class="coluna">
      <figure class="foto">
      	<c:choose>
		 <c:when test="${empty article.thumbId}">
		 	<img src="images/fotos/article.jpg" width="80" height="80" alt="">
		 </c:when>
		 <c:otherwise>
		 	<img src="getThumb.action?id=<c:out value='${article.thumbId}'/>&dataType=8" alt="">
		 </c:otherwise>
		</c:choose>
      </figure>
	  <h1><c:out value='${article.title}'/></h1>      
      <p><c:out value='${article.introarticle}'/></p>
    </div>
</c:forEach>