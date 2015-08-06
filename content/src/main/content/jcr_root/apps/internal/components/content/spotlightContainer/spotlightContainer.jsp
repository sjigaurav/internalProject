<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="com.day.cq.wcm.api.WCMMode,java.util.Iterator,com.internal.models.SpotlightContainer" %>
<%@ page import="java.util.ArrayList" %>

<div class="spotlightWrapper">
    <div class="slick-slider">
        <c:choose>
            <c:when test="${isEdit}">
                <cq:include path="par" resourceType="foundation/components/parsys"/>
            </c:when>
            <c:otherwise>
                <%
                    SpotlightContainer container=new SpotlightContainer();
                    ArrayList<String> paths= container.getChildUnderPar(resource);
                %>
                <c:set var="pathList" value="<%=paths%>"/>
                <c:forEach var="loop" items="${pathList}">
                    <sling:include path="${loop}"/>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<script>
    $(function () {
        $('.spotlightWrapper .slick-slider').slick({
            dots: true,
            arrows: false
        });
    });
</script>
<div style="clear:both;"></div>