<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="org.apache.sling.commons.json.JSONObject"%>
<%@ page import="com.internal.models.FooterResearch" %>
<%@ page import="com.internal.models.UtilModel" %>
<%@ page import="java.util.ArrayList" %>
<%
/*
    FooterResearch footerResearch = new FooterResearch(properties);
    ArrayList<UtilModel> utilModelArrayList =  footerResearch.getTitleList();
    ArrayList<UtilModel> utilModelArrayLinkList =  footerResearch.getTitleLinkList();*/
%>
<c:if test="${isEdit}">
    This is the footerResearch component..
</c:if>
<c:set var="footerResearch" value="<%= new FooterResearch(properties) %>" />
<c:set var="utilModelArrayList" value="${footerResearch.titleList}" />
<c:set var="utilModelArrayLinkList" value="${footerResearch.titleLinkList}" />
<div class="col">
    <div class="heading"><a href="javascript:;">${properties.heading}</a></div>
    <div class="linkWrapper">

        <c:forEach var="listData" items="${utilModelArrayList}" >
            <a href="${listData.propertyTwo}">${listData.propertyOne}</a>
        </c:forEach>
        <div class="footerWrapSocial">
            <div class="socialWrap">
                <div>${properties.firstsubheading}</div>
                <ul>
                    <c:forEach var="linkListData" items="${utilModelArrayLinkList}">
                        <li><a href="${linkListData.propertyOne}"><i class="fa fa-${linkListData.propertyTwo} fa-2x"></i></a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="subscribeNewsletterWrap">
                <div>${properties.secondsubheading}</div>
                <form class="" id="newsLetterEmailId" method="get" action="">
                    <input name="" type="text" placeholder="Enter your email"  onfocus="if(this.value == this.defaultValue) { this.value=''; }" onblur="if (this.value == '') { this.value=this.defaultValue;}" required>
                    <input name="" type="button" value="Go" onClick="$('#newsLetterEmailId').submit()">
                </form>
            </div>
        </div>
    </div>
</div>
<div style="clear:both;"></div>