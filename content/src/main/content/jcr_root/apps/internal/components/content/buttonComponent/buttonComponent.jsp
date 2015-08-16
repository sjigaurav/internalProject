<%@ page import="com.internal.models.ButtonComponent" %>
<%@include file="/apps/internal/global.jsp" %>
<%@page session="false" %>

<% ButtonComponent buttonComponent = new ButtonComponent(resource); %>

<c:set var="buttonComponent" value="<%=buttonComponent %>"/>
<c:set var="button" value="${buttonComponent.button}"/>
<c:set var="pathfield" value="${buttonComponent.pathField}"/>

<div class="buttonGlbl">
    <c:if test="${(not empty pathfield) && (not empty button)}">
        <c:if test="${not empty pathfield}">
            <a href="${pathfield}.html">
                <span><i class="fa fa-arrow-right"></i>${button}</span>
            </a>
        </c:if>
    </c:if>
</div>
<% if (isEdit) { %>
<div style="clear:both;">&nbsp;</div>
<% } %>