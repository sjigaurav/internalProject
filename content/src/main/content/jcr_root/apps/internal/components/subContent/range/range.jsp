<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%
    String heading = properties.get("heading","");
	String description = properties.get("description","");

	if(isEdit){
		out.println("This is the range component");
}%>

<h1><%=heading%></h1>
<%=description%>
<div style="clear:both;"></div>   
