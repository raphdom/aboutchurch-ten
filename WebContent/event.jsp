<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/lib/mentawai-all-2.5.3.jar" prefix="mtw" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="fragments/head.jsp" />
	<body>
		<jsp:include page="fragments/header.jsp" />
		<jsp:include page="fragments/path.jsp" />
		<div id="pvn-article">
			<div class="image">
				<mtw:if test="event.file" value="null" negate="true">
					<img src="ImageViewer.jr?id=<mtw:out value='event.file.id'/>&width=150&height=150&exactlySize=true" width="150" height="150" alt="">
				</mtw:if>
				<mtw:if test="event.file" value="null">
					<img src="images/fotos/events.jpg" width="100" height="100" alt="">
				</mtw:if>
			</div>
			<div class="titulo"><mtw:out value="event.what"/></div>
			<div class="onde">Onde: <mtw:out value="event.location"/></div>
			<div class="quando">Quando: <mtw:out value="startDate"/> às <mtw:out value="startHour" formatter="hourFormatter"/></div>
			<div class="cont_artigo"><mtw:out value="event.description"/></div>
		</div>
		<jsp:include page="fragments/footer.jsp" />
	</body>
</html>