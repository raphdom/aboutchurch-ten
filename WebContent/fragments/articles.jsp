<%@ taglib uri="/WEB-INF/lib/mentawai-all-2.5.3.jar" prefix="mtw" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 

<mtw:list value="articles">
   <mtw:isEmpty>
      
   </mtw:isEmpty>
   <mtw:isEmpty negate="true">        
    <mtw:loop var="article">
    	<div class="pvn-article-block">
			<div class="article-header">
				<a href="Artigo.jr?id=<mtw:out value='id'/>">
					<div class="article-header-image">
						<c:choose>
						 <c:when test="${empty article.file}">
						 	<img src="images/fotos/article.jpg" width="80" height="80" alt="">
						 </c:when>
						 <c:otherwise>
						 	<img src="ImageViewer.jr?id=<mtw:out value='file.id'/>&width=80&height=80&exactlySize=true&dataType=2" width="80" height="80" alt="">
						 </c:otherwise>
						</c:choose>
					</div>
				</a>
				<a href="Artigo.jr?id=<mtw:out value='id'/>">
					<div class="article-header-title"><mtw:out value="title"/></div>
				</a>
			</div>
			<div class="article-intro"><mtw:out value="introarticle"/></div>
			<a href="Artigo.jr?id=<mtw:out value='id'/>" class="article-readmore">leia mais</a>
		</div>
    </mtw:loop> 
   </mtw:isEmpty>
</mtw:list>