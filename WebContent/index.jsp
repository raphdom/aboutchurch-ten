<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<jsp:include page="fragments/head.jsp" />
	<body>
		<div class="container clearfix">
		
			<jsp:include page="fragments/header.jsp" />
			
			<jsp:include page="fragments/banners.jsp" />
			
        	<section class="mainInnerArticles">
			      <jsp:include page="fragments/articles.jsp" />
			</section>
			
			<div class="redBorder">
				<section class="mainInnerEvents">
					<div class = "h1Image">
						<img src="img/iconAgenda.png">
						<h1>Agenda:</h1>
					</div>
					<jsp:include page="fragments/agenda.jsp" />
				</section>
				<section class="mainInnerVideos">
					<div class = "h1Image h1ImageVideos">
						<img src="img/iconVideos.png">
						<h1>Vídeos:</h1>
					</div>
					<jsp:include page="fragments/videos.jsp" />
				</section>
			</div>
			<section class="mainInnerAlbuns">
			      <h1>Aconteceu:</h1>
			      <jsp:include page="fragments/albuns.jsp" />
			</section>
			
			<jsp:include page="fragments/footer.jsp" />
		</div>
	</body>
</html>