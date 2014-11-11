<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach var="video" items="${videos}">
	<div class="colunaVideo">
		 	<a href='http://www.youtube.com/embed/<c:out value="${video.youtubeId}"/>?autoplay=1&autohide=1&border=0&egm=0&showinfo=0&showsearch=0' 
		   class="lightview" 
		   data-lightview-type="iframe"  
		   data-lightview-options="
		     width: 638,
		     height: 360,
		     viewport: 'scale'
		   ">
    		<figure class="foto"><img src="http://img.youtube.com/vi/<c:out value="${video.youtubeId}"/>/0.jpg"></figure>
    		<h2><c:out value="${video.title}"/></h2>
    	</a>
    	
   
    </div>
</c:forEach> 