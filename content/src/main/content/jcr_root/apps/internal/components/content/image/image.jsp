<%@include file="/apps/internal/global.jsp"%>
<%@page session="false"%>
<% String image = properties.get("fileReference",""); %>

<div class="col"><img src="<%= image %>" alt=""></div>