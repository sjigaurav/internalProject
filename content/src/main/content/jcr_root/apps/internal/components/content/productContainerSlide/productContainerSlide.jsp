<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>

<%
    String Heading = properties.get("heading","");
    String SubHeading = properties.get("subheading","");
    String Description = properties.get("description","");
    String Button = properties.get("button","");
    String URL = properties.get("url","");
    String SecondButton = properties.get("secondbutton","");
    String Image = properties.get("fileReference","");

    String css="";

    css = (!isEdit) ? "slick-slide" : "";

    if(isEdit){ %>
This is the slide component
<% }
%>

<div class="<%=css %>">
    <div class="col"> <img src="<%= Image %>" id="prdThumb" alt="">
        <img src="<%=URL%>" class='<%= (URL.equals(""))?"" :"hpCarouselBgIcon" %> icn1' />
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
                <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i><%= SecondButton %></span></a></div>
            </div>
        </div>
    </div>
</div>

