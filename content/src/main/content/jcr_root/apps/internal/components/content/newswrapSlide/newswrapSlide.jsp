<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>

<c:if test="${isEdit}">
  This is newswrapSlide component.
</c:if>

<li><a href="javascript:;">"${properties.description}"<span>"${properties.date}"</span></a></li>
<div style="clear:both;"></div>