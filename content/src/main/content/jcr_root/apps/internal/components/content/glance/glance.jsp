<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<% 
    String Heading = properties.get("heading","");
    String SubHeading = properties.get("subheading","");
    String Description = properties.get("description","");
    String css="";
    if(!isEdit){
        css = "slick-slide";
    }
if(isEdit){ %>
	This is the glancecomponent..
<% }
%>
<div class="<%=css %>">
    <h2><%= Heading %></h2>
    <div class="subHead"><%= SubHeading %></div>
    <p><%= Description %></p>
</div>
