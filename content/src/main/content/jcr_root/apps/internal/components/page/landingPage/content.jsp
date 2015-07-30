<%@include file="/apps/internal/global.jsp" %>
<% if(isEdit){%>
this is the parsys of  page/content.jsp
<% } %>
<div class="categoryListingWrapper">
    <div class="container">
        <div class="master">
            <div class="expandAcc">Expand</div>
            <div class="twoColLeft">
                <cq:include path="par1" resourceType="foundation/components/parsys"/>
            </div>
            <div class="twoColRight">
                <cq:include path="par2" resourceType="foundation/components/parsys"/>
            </div>
        </div>
    </div>
</div>
