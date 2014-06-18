<%@ taglib uri="/WEB-INF/lib/mentawai-all-2.5.3.jar" prefix="mtw" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<mtw:list value="banners">
	<div id="pvn-slides">
		<div id="slides">
			<div class="slides_container">
				<mtw:loop var="banners">
				
				<a href="<mtw:out value="link"/>">
					<img
					src="ImageViewer.jr?width=951&height=370&id=<mtw:out value="file.id"/>&fd=1"
					width="950" height="370">
				</a>
				</mtw:loop>
				
			</div>
			<a href="#" class="prev">
				<img src="images/arrow-prev.png" width="24" height="43" alt="Arrow Prev">
			</a> 
			<a href="#"	class="next">
				<img src="images/arrow-next.png" width="24"	height="43" alt="Arrow Next">
			</a>
		</div>
	</div>
</mtw:list>