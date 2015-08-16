<%@include file="/apps/internal/global.jsp" %>
<div class="width100Per">
    <%
            Resource res = resourceResolver.getResource("/content/home/chairman/jcr:content/par/spotlightContainer");
        if(res!=null){
    %>
    <sling:include path="/content/home/chairman/jcr:content/par/spotlightContainer"/>
    <%}%>
    <div class="homePageWrapper">
        <div class="container">
            <div class="master">

    <cq:include path="par" resourceType="foundation/components/parsys"/>
                </div>
            </div>
        </div>
</div>
<div style="clear:both;"></div>