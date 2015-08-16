<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="org.apache.sling.commons.json.JSONObject"%>
<%
    String LeftSide = properties.get("leftSide","");
    String[] List = properties.get("list",new String[0]); //String[].class
    int listLength=List.length;
    int count=0;

    if(isEdit){ %>
this is footercopyright component
<% } %>
<div class="copyRightWrapper">
    <div class="left">&copy; <%=LeftSide%></div>
    <div class="right">
        <%  for(String list:List){
            ++count;
            JSONObject json = new JSONObject(list);
        %>
        <a href="<%=json.getString("link")%>.html"><%=json.getString("title")%></a>
        <% if (count!=listLength){ %>
        |

        <%} } %>
    </div>
</div>
<div style="clear:both;"></div>