<%@include file="/apps/internal/global.jsp" %>
<%@page session="false" %>
<%@page import="com.day.cq.wcm.api.WCMMode,java.util.Iterator,com.internal.models.ProductContainer" %>
<%@ page import="java.util.ArrayList" %>


<c:set var="css" value="${(isEdit)? '':'cardRow hpCarouselBg'}"/>
<div class="${css}">
    <div class="slick-slider">
        <c:choose>
            <c:when test="${isEdit}">
                <cq:include path="par" resourceType="foundation/components/parsys"/>
            </c:when>
            <c:otherwise>
                <%
                    ProductContainer productContainer = new ProductContainer();
                    ArrayList<String> paths = productContainer.getChildPar(resource);
                %>
                <c:set var="pathlist" value="<%=paths%>"/>
                <c:forEach var="loop" items="${pathlist}">
                    <sling:include path="${loop}"/>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<div style="clear:both;"></div>