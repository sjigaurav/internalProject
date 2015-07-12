<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%
    String heading = properties.get("heading","");
    String description = properties.get("description","");
    int button = properties.get("button",0);
    String leftColorfield = properties.get("leftcolorfield","");
    String rightColorfield = properties.get("rightcolorfield","");
    String leftCustomColor = properties.get("leftcustom","");
    String rightCustomColor = properties.get("rightcustom","");
    String image = properties.get("fileReference","");
    String leftColor="",rightColor="";
    if(!leftCustomColor.equals("")){ 
		leftColor = leftCustomColor;
	}else{
		leftColor = leftColorfield;
	}

    if(!rightCustomColor.equals("")){ 
        rightColor = rightCustomColor;
    }else{
        rightColor = rightColorfield;
    }

%>

<div class="slick-slide"><img src="<%= image %>" alt="">
    <div class="spotlightContentLeft red" style = "background: #<%= leftColor %>">
        <div class="content">
            <div class="heading"><%= heading %></div>
            <p> <%= description %> </p>
            <div class="buttonWrapper">
                <% 	for(int i=1;i<=button;i++ ){ 
        				String path="button_"+i;   %>
                		<cq:include path="<%= path %>" resourceType="/apps/internal/components/content/buttonComponent" />
				<%  } %>
            </div>
        </div>
    </div>
   <div class="spotlightContentRight pink" style = "background: #<%= rightColor %>"></div>
</div>

            <% if(isEdit){ %>
Enter Slide Details
<div style="clear:both;"></div>
<%}%>