<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="com.day.cq.wcm.api.WCMMode,java.util.Iterator" %>
<%@ page import="com.internal.models.GlanceSlideContainer" %>
<%@ page import="java.util.ArrayList" %>

<c:set var="css" value="${(isEdit)?'':'slick-slider'}"/>
<div class="havellsAtGlance">
    <div class="sliderWrapper">
        <div class="${css}">
            <c:choose>
                <c:when test="${isEdit}">
                    <cq:include path="par" resourceType="foundation/components/parsys"/>
                </c:when>
                <c:otherwise>
                    <% GlanceSlideContainer glanceSlideContainer=new GlanceSlideContainer();
                        ArrayList<String> paths=glanceSlideContainer.getchildUnderPar(resource);
                    %>
                    <c:set var="pathList" value="<%= paths %>"/>
                    <c:forEach var="loop" items="${pathList}" >
                        <sling:include path="${loop}"/>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>
<div style="clear:both;"></div>
