<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	  	<meta charset="UTF-8">
	  	<title>::Ministério Tenda Goiania::</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	  	
		<link rel="stylesheet" href="css/normalize.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/vendor/modernizr-2.6.2.min.js"></script> 
		
		<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="js/jssor.js"></script>
        <script type="text/javascript" src="js/jssor.slider.min.js"></script>
        <link rel="stylesheet" href="css/jssor.css">
        <script type="text/javascript" src="js/tenda.js"></script>
	</head>
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
					<div class="colunaVideo">
				        	<figure class="foto"><img src="img/foto-01.jpg"></figure>
				        	<h2>Título vídeo</h2>
				        </div>
				        <div class="colunaVideo">
				        	<figure class="foto"><img src="img/foto-02.jpg"></figure>
				        	<h2>Título vídeo</h2>
				        </div>
				</section>
			</div>
			<section class="mainInnerAlbuns">
			      <h1>Aconteceu:</h1>
			      <jsp:include page="fragments/albuns.jsp" />
			</section>
		</div>
	</body>
</html>