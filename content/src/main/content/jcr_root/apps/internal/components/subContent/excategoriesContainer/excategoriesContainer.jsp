<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%
    String button = properties.get("button","");
    String link = properties.get("link","");
    String heading = properties.get("heading","");
    if(isEdit){
        out.println("This is category container component..");
    }
%>

<div class="applicationWrapper">
    <div class="buttonGlbl"><a href="<%=link%>"><span><%=button%></span></a></div>
    <div class="categorieWrapper">
        <h3><%=heading%></h3>
        <div class="categorieTriangle"></div>
    </div>
    <div class="applicationProducts">
        <ul>
            <cq:include path="par" resourceType="foundation/components/parsys"/>
        </ul>
    </div>
</div>
<% if(isEdit){ %>
<div style="clear:both;"></div>
<%}%>           

