<%@ taglib uri="/WEB-INF/lib/mentawai-all-2.5.3.jar" prefix="mtw" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<mtw:list value="events">
   <mtw:isEmpty>
      
   </mtw:isEmpty>
   <mtw:isEmpty negate="true">
   		<div id="pvn-main-content-agenda-title">Agenda:</div>        
	    <mtw:loop var="event">
	    	<div class="pvn-main-content-agenda-list">
	    		<div class="agenda-image"><a href="Evento.jr?id=<mtw:out value="id"/>">
					<c:choose>
					 <c:when test="${empty event.fileId}">
					 	<img src="images/fotos/events.jpg" width="100" height="100" alt="">
					 </c:when>
					 <c:otherwise>
					 	<img src="ImageViewer.jr?id=<mtw:out value='fileId'/>&width=100&height=100&exactlySize=true&dataType=2" width="100" height="100" alt="">
					 </c:otherwise>
					</c:choose>	    		
				</a></div>
				<div class="agenda-conteudo">
					<div class="agenda-date"><mtw:out value="start"  formatter="agendaFormatter"/></div>
					<div class="agenda-title"><mtw:out value="what"/></div>
					<div class="agenda-more"><a href="Evento.jr?id=<mtw:out value="id"/>">LEIA MAIS</a></div>
				</div>
			</div>
	    </mtw:loop> 
   </mtw:isEmpty>
</mtw:list>