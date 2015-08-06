<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<c:set var="css" value="${(isEdit)?'':'slick-slide'}"/>
<c:if test="${isEdit}">
  This is the glancecomponent..
</c:if>
<div class="${css}">
  <h2>${properties.heading}</h2>
  <div class="subHead">${properties.subheading}</div>
  <p>${properties.description}</p>
</div>
