<%@ taglib uri="/WEB-INF/lib/mentawai-all-2.5.3.jar" prefix="mtw" %>
<mtw:list value="events">
   <mtw:isEmpty>
      
   </mtw:isEmpty>
   <mtw:isEmpty negate="true">
   		<div id="pvn-main-content-agenda-title">Agenda:</div>        
	    <mtw:loop>
	    	<div class="pvn-main-content-agenda-list-horizontal">
				<div class="agenda-image"><a href="Evento.jr?id=<mtw:out value="id"/>">
		    		<mtw:if test="fileId" value="null" negate="true">
						<img src="ImageViewer.jr?id=<mtw:out value='fileId'/>&width=100&height=100&exactlySize=true&dataType=2" width="100" height="100" alt="">
					</mtw:if>
					<mtw:if test="fileId" value="null">
						<img src="images/fotos/events.jpg" width="100" height="100" alt="">
					</mtw:if>
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