<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%
String heading = properties.get("heading","");
String description = properties.get("description","");
String firstButton = properties.get("firstbutton","");
String secondButton = properties.get("secondbutton","");
String firstPathfield = properties.get("firstpathfield","");
String secondPathfield = properties.get("secondpathfield","");
String leftColorfield = properties.get("leftcolorfield","");
String rightColorfield = properties.get("rightcolorfield","");
String image = properties.get("fileReference","");%>

<div class="slick-slide"><img src="<%= image %>" alt="">
    <div class="spotlightContentLeft red" style = "background: #<%= leftColorfield %>">
        <div class="content">
            <div class="heading"><%= heading %></div>
            <p> <%= description %> </p>
            <div class="buttonWrapper">
                <% if((!firstButton.equals(""))&& (!secondButton.equals(""))){ %>
                <div class="buttonGlbl"><a href="<%= firstPathfield %>"><span><i class="fa fa-arrow-right"></i> <%= firstButton %></span></a></div>
                <div class="buttonGlbl"><a href="<%= secondPathfield %>"><span><i class="fa fa-arrow-right"></i> <%= secondButton %></span></a></div>
                <% } else if((!firstButton.equals(""))&&(secondButton.equals (""))){ %>
                <div class="buttonGlbl"><a href="<%= firstPathfield %>"><span><i class="fa fa-arrow-right"></i> <%= firstButton %></span></a></div>
                <% } else { %>
                <div class="buttonGlbl"><a href="<%= secondPathfield %>"><span><i class="fa fa-arrow-right"></i> <%= secondButton %></span></a></div>
                <% } %>
            </div>
        </div>
    </div>
    <div class="spotlightContentRight pink" style = "background: #<%= rightColorfield %>"></div>
</div>
<% 
if(isEdit){ %>
Enter Slide Details
<div style="clear:both;"></div>
<%}%>