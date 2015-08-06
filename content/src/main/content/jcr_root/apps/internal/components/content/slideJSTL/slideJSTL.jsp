<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<c:choose>
    <c:when test="${not empty properties.leftcustom}">
        <c:set var="leftColor" value="${properties.leftcustom}"/>
    </c:when>
    <c:otherwise>
        <c:set var="leftColor" value="${properties.leftcolorfield}"/>
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${not empty properties.rightcustom}">
        <c:set var="rightColor" value="${properties.rightcustom}"/>
    </c:when>
    <c:otherwise>
        <c:set var="rightColor" value="${properties.rightcolorfield}"/>
    </c:otherwise>
</c:choose>

<div class="slick-slide"><img src="${properties.fileReference}" alt="">

    <div class="spotlightContentLeft red" style="background: #${leftColor}">
        <div class="content">
            <div class="heading">${properties.heading}</div>
            <p>${properties.description}</p>

            <div class="buttonWrapper">
                <c:forEach var="loop" begin="1" end="${properties.button}" varStatus="status">
                    <c:set var="path" value="path_${status.count}"/>
                    <cq:include path="${path}" resourceType="/apps/internal/components/content/buttonComponent"/>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="spotlightContentRight pink" style="background: #${rightColor}"></div>
</div>
<c:if test="${isEdit}">
    Enter Slide Details
    <div style="clear:both;"></div>
</c:if>