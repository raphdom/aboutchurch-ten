<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach var="video" items="${videos}">
	<div class="colunaVideo">
		<a href="www.youtube.com">
    		<figure class="foto"><img src="http://img.youtube.com/vi/AHkb5kdmuwE/0.jpg"></figure>
    		<h2><c:out value="${video.title}"/></h2>
    	</a>
    </div>
</c:forEach> 
