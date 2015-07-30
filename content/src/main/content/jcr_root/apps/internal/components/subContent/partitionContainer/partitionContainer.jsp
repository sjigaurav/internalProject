<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%
    String heading = properties.get("heading","");
if (isEdit){
	out.println("Here click for dialog for put the value in partition component");
}
%>
<div class="expandAcc"><%=heading%></div>
   <div class="twoColLeft">
       <cq:include path="par1" resourceType="foundation/components/parsys"/>
   </div>
   <div class="twoColRight">
       <cq:include path="par2" resourceType="foundation/components/parsys"/>
   </div>
<div style="clear:both;"></div>