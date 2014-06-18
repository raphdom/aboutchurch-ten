<%@ taglib uri="/WEB-INF/lib/mentawai-all-2.5.3.jar" prefix="mtw" %>
<mtw:list value="albuns">
   <mtw:isEmpty negate="true">
   <div class="image_carousel_home">
   		<div class="image_carousel_home_title">JÁ ACONTECEU:</div>
		<div id="foo2">    
    <mtw:loop>
    <div class = "image_carousel_home_mini">
    	<a href="Album.jr?id=<mtw:out value='id'/>"><img src="ImageViewer.jr?id=<mtw:out value='file.id'/>&dataType=4&width=200&height=200&exactlySize=true"  width="200" height="200" /></a>
    	<div class="title"><mtw:out value='title'/></div>
   	</div>
    </mtw:loop>
    	</div>
    </div> 
   </mtw:isEmpty>
</mtw:list>