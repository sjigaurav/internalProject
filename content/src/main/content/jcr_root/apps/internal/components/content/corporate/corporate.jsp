<%@include file="/apps/internal/global.jsp"%>
<%@page session="false"%>
<%
String heading = properties.get("heading","");
String description = properties.get("description","");
String moredescription = properties.get("moredescription","");
String button = properties.get("button","");
String pathfield = properties.get("pathfield","");
String image = properties.get("fileReference","");

if(isEdit){ %>

	this is the corporate component
<% } %>

<div class="cardRow hpCsrBg" style="background: url(<%= image %>) right top no-repeat;">
   	 	<div class="col">
    		<div class="sliderWrapper">
    			<h2><%= heading %></h2>
				<div class="subHead"><%= description %></div>
					<p><%= moredescription %> </p>
						<div class="buttonWrapper">
    						<div class="buttonGlbl"><a href="<%= pathfield %>.html"><span><i class="fa fa-arrow-right"></i><%= button %></span></a></div>
						</div>
							<div class="col"></div>
			</div>
		</div>
</div>
<div style="clear:both;"></div>