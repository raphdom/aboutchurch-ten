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
		<div id="pvn-article">
		Vamos realizar um workshop no dia 1º de dezembro para começar a nossa escola de música.<br/>
		Para se inscrever preencha o formulário abaixo:
		<br/>
		<br/>
		
		<table cellspacing="0" cellpadding="0" style="width: 100%; ">
			<tbody>
				<tr>
					<td align="left" style="vertical-align: top; ">
					<table style="width: 100%; ">
						<colgroup><col></colgroup>
						<tbody>
						<tr>
						<td>
						<div class="gwt-Label">Nome</div>
						</td>
						<td>
						<input type="text" size=50 class="gwt-TextBox" title="Queira indicar o seu nome, para um tratamento personalizado."></td></tr>
						<tr><td><div class="gwt-Label">Email</div></td><td><input type="text" size=50 class="gwt-TextBox" title="Favor informar o endereço de email."></td></tr><tr><td style="vertical-align: top; "><div class="gwt-Label">Observações</div></td><td><textarea class="gwt-TextArea" title="Seja objectivo! Vá directo ao assunto.
						Se preferir, deixe também seu telefone." style="width: 400px; height: 200px; "></textarea></td></tr></tbody></table></td></tr><tr><td align="center" style="vertical-align: top; "><button type="button" class="gwt-Button">Enviar</button></td></tr></tbody></table>
			</div>
		<jsp:include page="fragments/footer.jsp" />
	</body>
</html>