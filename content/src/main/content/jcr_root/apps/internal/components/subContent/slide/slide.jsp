<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%
    String link = properties.get("link","");
	String image = properties.get("fileReference","");

if(isEdit){
	out.println("This is the appliances slide component");
}
%>
<div class="slick-slide">
    <a href="<%=link%>" class="mediaVideo"><img src="<%=image%>" alt=""></a>
</div>
<% if(isEdit){ %>
<div Style="clear:both;"></div>
<%}%>

