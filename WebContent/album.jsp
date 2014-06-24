<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="uri" value="${req.requestURI}" />
<html>
	<jsp:include page="fragments/head.jsp" />
	<!--[if lt IE 9]>
  		<script type="text/javascript" src="js/excanvas.js"></script>
	<![endif]-->
	<script type="text/javascript" src="js/spinners.min.js"></script>
	<script type="text/javascript" src="js/lightview.js"></script>
	<link rel="stylesheet" type="text/css" href="css/lightview.css"/>
	<body>
		<jsp:include page="fragments/header.jsp" />
		<jsp:include page="fragments/path.jsp" />
		<div id = "pvn-content-galery">
		<div id = "pvn-galery">
			<div id="pvn-album-name"><mtw:out value='album.title'/></div>
			<mtw:list value="itens">
			   <mtw:isEmpty negate="true">        
			    <mtw:loop>
				    	<div class="pvn-galery-item">
				    		<div class="image">
				    		<mtw:if test="file" value="null" negate="true">
								<a href="http://www.pvneuropa.com/ImageViewer.jr?id=<mtw:out value='file.id'/>&dataType=4" 
								class="lightview"
								data-lightview-group='album'
								data-lightview-title="<mtw:out value='title'/>" 
		   						data-lightview-caption="<mtw:out value='description'/>"
		   						data-lightview-group-options="controls: 'thumbnails'">
		   						<img src="ImageViewer.jr?id=<mtw:out value='file.id'/>&dataType=3&width=280&height=200&exactlySize=true" width="280" height="200" alt=""></a>
	   						</mtw:if>
	   						<mtw:if test="file" value="null">
		   						<a href='http://www.youtube.com/embed/<mtw:out value='video.videoId'/>' 
								   class="lightview" 
								   data-lightview-type="iframe" 
								   data-lightview-options="
								     width: 640,
								     height: 360,
								     viewport: 'scale'"
								   data-lightview-title="<mtw:out value='title'/>" 
		   						   data-lightview-caption="<mtw:out value='description'/>"
		   						   data-lightview-group-options="controls: 'thumbnails'">
	   							
		   						<img src="http://img.youtube.com/vi/<mtw:out value='video.videoId'/>/0.jpg" width="280" height="200" alt=""></a>
							</mtw:if>		   						
	   						</div>
							<div class="title-image"><mtw:out value='title'/></div>
							<div class="caption-image"><mtw:out value='description'/></div>
						</div>
					
			    </mtw:loop> 
			   </mtw:isEmpty>
			</mtw:list>
		</div>
		</div>
		<jsp:include page="fragments/footer.jsp" />
	</body>
</html>