<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<% 
    String Heading = properties.get("heading","");
    String SubHeading = properties.get("subheading","");
    String Description = properties.get("description","");
	String Button = properties.get("button","");
	String Image = properties.get("fileReference","");
%>
gksingh
<div class="slick-slide">
    <div class="col"> <img src="<%= Image %>" id="prdThumb" alt="">
        <div class="hpCarouselBgIcon icn1"></div>
    </div>
    <div class="col">
        <div class="sliderWrapper">
            <h2><%= Heading %></h2>
            <div class="subHeadWrap">
                <div class="subHead"><%= SubHeading %></div>
            </div>
            <p><%= Description %></p>
            <div class="buttonWrapper">
                <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i><%= Button %></span></a></div>
                <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i> View Range</span></a></div>
            </div>
        </div>
    </div>
</div>