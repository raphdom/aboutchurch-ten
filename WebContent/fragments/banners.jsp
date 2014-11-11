<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="banners" style="position: relative; 
        top: 0px; left: 0px; width: 1128px; height: 450px; overflow: hidden;">
    <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1128px;
            height: 450px; overflow: hidden;">
            
            <c:forEach var="banner" items="${banners}">
				<div>
					<a href="<c:out value="${banner.link}"/>">
						<c:choose>
						 <c:when test="${empty banner.thumbId}">
						 	<img u="image" src="img/bannerNoImage.png" width="1128" height="450"/>
						 </c:when>
						 <c:otherwise>
						 	<img u="image" src="getThumb.action?id=<c:out value="${banner.thumbId}"/>&dataType=10" width="1128" height="450"/>
						 </c:otherwise>
						</c:choose>
						
					</a>
				</div>
			</c:forEach>
            
     </div>
        <div u="navigator" class="jssorb21" style="position: absolute; bottom: 26px; left: 6px;">
            <div u="prototype" style="POSITION: absolute; WIDTH: 19px; HEIGHT: 19px; text-align:center; line-height:19px; color:White; font-size:12px;"></div>
        </div>
        <span u="arrowleft" class="jssora21l" style="width: 55px; height: 55px; top: 123px; left: 8px;"></span>
        <span u="arrowright" class="jssora21r" style="width: 55px; height: 55px; top: 123px; right: 8px"></span>
</div>
