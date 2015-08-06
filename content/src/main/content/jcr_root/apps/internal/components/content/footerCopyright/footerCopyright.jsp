<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="org.apache.sling.commons.json.JSONObject"%>
<%@ page import="com.internal.models.FooterCopyright" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.internal.models.UtilModel" %>
<%
    FooterCopyright footerCopyright=new FooterCopyright(properties);
    ArrayList<UtilModel>arrayList= footerCopyright.getLinkList();

%>


<c:set var="count" value=""/>
<c:set var = "listLength" value="<%= arrayList.size() %>" />
<c:set var="arrayList" value="<%=arrayList %>"/>
<div class="copyRightWrapper">
    <div class="left">&copy;${properties.leftSide}</div>
    <div class="right">
        <c:forEach var="loop" items="${arrayList}" varStatus="status">
            <a href="${loop.propertyOne}.html">${loop.propertyTwo}</a>
            <c:if test="${listLength != status.count}">
                |
                    </c:if>
        </c:forEach>
    </div>
</div>
<div style="clear:both;"></div>