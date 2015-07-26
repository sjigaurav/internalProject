<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%
    String css = "col"; 

    if (isEdit){
	css ="col1";
}
%>
<div class="cardRow">
    <div class="<%= css %>">
        <cq:include path="par1" resourceType="foundation/components/parsys"/>
    </div>
    <div class="<%= css %>">
        <cq:include path="par2" resourceType="foundation/components/parsys"/>
    </div>
</div> 
<div style="clear:both;"></div>
