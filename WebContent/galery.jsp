<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/lib/mentawai-all-2.5.3.jar" prefix="mtw" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
			<mtw:list value="categories">
			   <mtw:isEmpty negate="true">        
			    <mtw:loop>
			    	<div class="pvn-galery-item">
						<div class="title"><mtw:out value="name"/></div>
						<a href="Galeria.jr?id=<mtw:out value='id'/>&tipo=<mtw:out value='tipo'/>"><div class="image"><img src="ImageViewer.jr?id=<mtw:out value='file.id'/>&dataType=3&width=280&height=200&exactlySize=true" width="280" height="200" alt=""></div></a>
					</div>
			    </mtw:loop> 
			   </mtw:isEmpty>
			</mtw:list>
			<mtw:list value="albuns">
			   <mtw:isEmpty negate="true">        
			    <mtw:loop>
			    	<div class="pvn-galery-item">
						<div class="title"><mtw:out value="title"/></div>
						<a href="Album.jr?id=<mtw:out value='id'/>"><div class="image"><img src="ImageViewer.jr?id=<mtw:out value='file.id'/>&dataType=3&width=280&height=200&exactlySize=true" width="280" height="200" alt=""></div></a>
					</div>
			    </mtw:loop> 
			   </mtw:isEmpty>
			</mtw:list>
			<mtw:list value="videos">
			   <mtw:isEmpty negate="true">        
			    <mtw:loop>
			    	
			    	<div class="pvn-galery-item">
						<div class="title"><mtw:out value="title"/></div>
						<a href='http://www.youtube.com/embed/<mtw:out value='videoId'/>' 
								   class="lightview" 
								   data-lightview-type="iframe" 
								   data-lightview-options="
								     width: 640,
								     height: 360,
								     viewport: 'scale'"
								   data-lightview-title="<mtw:out value='title'/>" 
		   						   data-lightview-caption="<mtw:out value='description'/>"
		   						   data-lightview-group-options="controls: 'thumbnails'">
	   							
		   						<img src="http://img.youtube.com/vi/<mtw:out value='videoId'/>/0.jpg" width="280" height="200" alt=""></a>
					</div>
			    </mtw:loop> 
			   </mtw:isEmpty>
			</mtw:list>
		</div>
		</div>
		<jsp:include page="fragments/footer.jsp" />
	</body>
</html>