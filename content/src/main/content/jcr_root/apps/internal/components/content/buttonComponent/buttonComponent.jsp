<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<% 
    String button = properties.get("button","");
	String pathfield = properties.get("pathfield","");
%>
<div class="buttonGlbl">
    <% 	if((!pathfield.equals("")) && (!button.equals(""))){
            Resource res= resourceResolver.getResource(pathfield);
            if(res!=null){
            Page mainPage=res.adaptTo(Page.class);
                if(mainPage != null){ %>    
                    <a href="<%= pathfield %>.html"><span><i class="fa fa-arrow-right"></i> <%= button %></span></a>
            <%  }
            }
    	} %>
</div>
<% if(isEdit){ %><div style="clear:both;">&nbsp;</div><% } %>