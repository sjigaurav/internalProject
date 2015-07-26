<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="com.day.cq.wcm.api.WCMMode,java.util.Iterator" %>

<%  String css = "";
if(!isEdit){
    css="slick-slider";
}%>
<div class="havellsAtGlance">
    <div class="sliderWrapper">
        <div class="<%= css %>">
            <% if(isEdit){ %>
            <cq:include path="par" resourceType="foundation/components/parsys"/>
            <div style="clear:both;"></div>
            <%
    
                         }else{
    String r=resource.getPath();
    Resource res = resourceResolver.getResource(r+"/par");
    
    Iterator<Resource> itr=res.listChildren();
    while(itr.hasNext()){
        Resource temp=itr.next();
        
        %>       
            <sling:include path="<%= temp.getPath() %>" />
            <% 	}    
}

%>
        </div>
    </div>
</div>



<div style="clear:both;"></div>
