<%@include file="/apps/internal/global.jsp" %>
<%@page session="false" %>
<%@page import="com.day.cq.wcm.api.WCMMode,java.util.Iterator,com.internal.models.NewsWrap" %>
<%@ page import="java.util.ArrayList" %>

        <c:if test="${isEdit}">
            Here edit for heading..
        </c:if>
<div class="newsAndUpdates">
    <div class="newsWrap">
        <h2>${properties.heading}</h2>
        <ul>
            <c:choose>
                <c:when test="${isEdit}">
                    <cq:include path="par" resourceType="foundation/components/parsys"/>
                    <div style="clear:both;"></div>
                </c:when>
                <c:otherwise>
                    <%
                        NewsWrap newsWrap = new NewsWrap();
                        ArrayList<String> paths = newsWrap.getChildUnderPar(resource);
                    %>
                    <c:set var="pathList" value="<%= paths %>" />
                    <c:forEach var="loop" items="${pathList}" >
                        <sling:include path="${loop}"/>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</div>
<div style="clear:both;"></div>
