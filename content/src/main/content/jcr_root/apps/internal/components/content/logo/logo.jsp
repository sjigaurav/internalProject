<%@page session="false"%>
<%@include file="/apps/internal/global.jsp"%>
<%@ page import="com.day.text.Text,
    com.day.cq.wcm.foundation.Image,
	com.day.cq.commons.Doctype" %>

<% 
        String image = currentStyle.get("fileReference","");
 		String linkUrl = currentStyle.get("linkurl","");
		boolean isLinkExist = false;
		Resource res = resourceResolver.getResource(linkUrl);
        if(res!=null){
			Page tempPage = res.adaptTo(Page.class);    
            if(tempPage!=null){
				isLinkExist=true;
            }
        }

if(image.equals("")){
	out.print("Home");
}else if(isLinkExist){
    %>
    <a href = "<%= linkUrl%>.html" ><img src="<%= image %>" ></a>
<%}else {%>
<img src="<%= image %>" >
<%}%>