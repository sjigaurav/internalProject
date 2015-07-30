<%@include file="/apps/internal/global.jsp"%><%
%><%@page session="false" %>
<%
    String heading = properties.get("heading","");
	String subHeading = properties.get("subHeading","");
	String image = properties.get("fileReference","");
        if(isEdit){
            out.println("This is category slide component..");
		}
%>
<li>
    <a href="product-subcategory.html">
        <div class="productName"><%= heading %></div>
        <div class="productDiv"><img src="<%=image%>"></div>
        <div class="viewCategories"><%=subHeading%></div>
    </a>
</li>    
<% if(isEdit){ %>
	<div style="clear:both;"></div>
<%}%>