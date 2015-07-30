<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="org.apache.sling.commons.json.JSONObject"%>
<%
    String heading = properties.get("heading","");
	String image = properties.get("fileReference","");
	String[] list = properties.get("list",new String[0]);
		if(isEdit){ 
			out.println("This is support component");
		 }
%>
<div class="supportAndServicesDiv"Style="background: url(<%=image%>) left top no-repeat;">
    <p><%=heading%></p>
    <ul>
      <%  for(String element:list){
        JSONObject json = new JSONObject(element);
        %>
        <li><a href="<%=json.getString("link")%>"><%=json.getString("title")%></a></li>
        <% } %>
    </ul>
</div>
<div style="clear:both;"></div>