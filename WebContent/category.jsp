<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/lib/mentawai-all-2.5.3.jar" prefix="mtw" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="fragments/head.jsp" />
	<script type="text/javascript" src="js/jquery.carouFredSel-5.6.4-packed.js"></script>
	<script> 
 
	    $(document).ready(function() { 
		
	    	$("#foo2").carouFredSel({
   		        items: 5
	    	});
	    }); 
		    
		 
	</script>	
	<body>
		<jsp:include page="fragments/header.jsp" />
		<jsp:include page="fragments/path.jsp" />
		<div id="pvn-article">
			<mtw:if test="category.file" value="null" negate="true">
				<div class="image"><img src="ImageViewer.jr?id=<mtw:out value='category.file.id'/>&width=250&height=250&exactlySize=false&dataType=3"  alt=""></div>
			</mtw:if>
			<div class="titulo"><mtw:out value="category.name"/></div>
			<div class="cont_artigo"><mtw:out value="category.description"/></div>
			<div id="pvn-main-content-agenda-horizontal">
				<jsp:include page="fragments/agendaHorizontal.jsp" />
			</div>
			<div id="pvn-main-content-articles-category">
				<jsp:include page="fragments/articles.jsp" />
			</div>
			<jsp:include page="fragments/albuns.jsp" />
		</div>
		
		<jsp:include page="fragments/footer.jsp" />
	</body>
</html>