<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="org.apache.sling.commons.json.JSONObject"%>
<%@ page import="com.internal.models.FooterSlide" %>

<c:if test="${isEdit}">
    This is FoterSlide....
</c:if>
<c:set var="footerSlide" value="<%=new FooterSlide(properties)%>"/>
<c:set var="arrayList" value="${footerSlide.linkList}"/>
<div class="col">
    <div class="heading"><a href="javascript:;">${properties.heading}</a></div>

    <div class="linkWrapper">
        <c:forEach var="loop" items="${arrayList}">
            <a href="${loop.propertyOne}.html">${loop.propertyTwo}</a>
        </c:forEach>
    </div>
</div>
<c:if test="${isEdit}">
    <div style="clear:both;"></div>
</c:if>
<%--
<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="org.apache.sling.commons.json.JSONObject"%>
<%@ page import="com.internal.models.FooterSlide" %>
<%@ page import="com.internal.models.UtilModel" %>
<%@ page import="java.util.ArrayList" %>

<c:if test="${isEdit}">
    This is FoterSlide....
</c:if>
<% FooterSlide footerSlide = new FooterSlide();
ArrayList<UtilModel> utilModelArrayList =  footerSlide.getLinkList(properties); %>
<c:set var="footerSlide" value="<%=footerSlide%>"/>
<c:set var="arrayList" value="<%=utilModelArrayList%>"/>
<div class="col">
    <div class="heading"><a href="javascript:;">${properties.heading}</a></div>

    <div class="linkWrapper">
        <c:forEach var="loop" items="${arrayList}">
            <a href="${loop.propertyOne}.html">${loop.propertyTwo}</a>
        </c:forEach>
    </div>
</div>
<c:if test="${isEdit}">
    <div style="clear:both;"></div>
</c:if>--%>
