<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="org.apache.sling.commons.json.JSONObject"%>
<%
    String Heading = properties.get("heading","");
    String[] List = properties.get("list",new String[0]); //String[].class

    if(isEdit){ %>
this is footerslide
<% }

%>
<div class="col">
    <div class="heading"><a href="javascript:;"><%= Heading %></a></div>

    <div class="linkWrapper">
        <% for(String list:List) {
            JSONObject jsonObj = new JSONObject(list);

        %>
        <a href="<%= jsonObj.getString("link") %>.html"><%= jsonObj.getString("title") %></a>
        <% } %>
    </div>
</div>
<% if(isEdit){ %>
<div style="clear:both;"></div>
<%}%>