<%@ taglib uri="/WEB-INF/lib/mentawai-all-2.5.3.jar" prefix="mtw" %>
<mtw:list value="albuns">
   <mtw:isEmpty negate="true">
   <div class="image_carousel">
   		<div class="pvn-albuns-title">Álbuns relacionados:</div>
		<div id="foo2">    
    <mtw:loop>
    	<a href="Album.jr?id=<mtw:out value='id'/>"><img src="ImageViewer.jr?id=<mtw:out value='file.id'/>&dataType=3&width=140&height=140&exactlySize=true"  width="140" height="140" /></a>
    </mtw:loop>
    	<div class="clearfix"></div>
    	</div>
    </div> 
   </mtw:isEmpty>
</mtw:list>