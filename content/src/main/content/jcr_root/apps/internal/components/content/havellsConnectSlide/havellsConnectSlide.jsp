<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<% 
    String Heading = properties.get("heading","");
    String Description = properties.get("description","");
	String Image = properties.get("fileReference","");

if(isEdit){ %>
	this is the connect slide
<% } %>

<li class= "icn1"style="background: url(<%= Image %>) left top no-repeat;"><a href="javascript:;"><strong><%= Heading %></strong><%= Description %></a> </li>
<div style="clear:both;"></div>