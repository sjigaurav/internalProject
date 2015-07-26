<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="com.day.cq.wcm.api.WCMMode,java.util.Iterator" %>
<div class="spotlightWrapper">
    <div class="slick-slider">

<%
if(isEdit){ %>
 <cq:include path="par" resourceType="foundation/components/parsys"/>
<%

}else{
    Resource res = resourceResolver.getResource(resource.getPath()+"/par"); 
    Iterator<Resource> itr=res.listChildren();
    while(itr.hasNext()){
		Resource tempRes = itr.next();
%>        
        <sling:include path="<%= tempRes.getPath() %>" />
<%    }
}

%>
    </div>
</div>
<div style="clear:both;"></div>
<script>
    $(function(){
        $('.spotlightWrapper .slick-slider').slick({
            dots: true,
            arrows:false
        });
    });
</script>

