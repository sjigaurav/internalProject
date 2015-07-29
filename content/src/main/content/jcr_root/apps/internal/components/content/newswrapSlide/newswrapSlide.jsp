<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%
  String Description = properties.get("description","");
  String Date = properties.get("date","");;

if(isEdit){ %>
	This is newswrapSlide component.
<% } %>

<li><a href="javascript:;"><%= Description %> <span><%= Date %></span></a></li>
<div style="clear:both;"></div>