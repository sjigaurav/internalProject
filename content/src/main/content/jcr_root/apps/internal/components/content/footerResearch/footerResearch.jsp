<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@page import="org.apache.sling.commons.json.JSONObject"%>
<% 
    String Heading = properties.get("heading","");
    String FirstSubHeading = properties.get("firstsubheading","");
	String SecondSubHeading = properties.get("secondsubheading","");
	String[] List = properties.get("list",new String[0]);
	String[] Link = properties.get("link",new String[0]);

if(isEdit){
	out.println("This is the footerResearch component..");
}
%>

<div class="col">
    <div class="heading"><a href="javascript:;"><%=Heading%></a></div>
    <div class="linkWrapper">
        
        <% for(String list:List){
				JSONObject json = new JSONObject(list);
    %>
        <a href="<%=json.getString("listLink")%>"><%=json.getString("title")%></a>
        <%}%>

        <div class="footerWrapSocial">
            <div class="socialWrap">
                <div><%=FirstSubHeading%></div>
                <ul>
					 <% for(String link:Link){
						 JSONObject jsonObj = new JSONObject(link);
    				%>
                    <li><a href="<%=jsonObj.getString("link")%>"><i class="fa fa-<%=jsonObj.getString("site")%> fa-2x"></i></a></li>
                </ul>
                <%}%>
            </div>

            <div class="subscribeNewsletterWrap">
                <div><%=SecondSubHeading%></div>
                <form class="" id="newsLetterEmailId" method="get" action="">
                    <input name="" type="text" placeholder="Enter your email"  onfocus="if(this.value == this.defaultValue) { this.value=''; }" onblur="if (this.value == '') { this.value=this.defaultValue;}" required>
                    <input name="" type="button" value="Go" onClick="$('#newsLetterEmailId').submit()">
                </form>
            </div>
        </div>
    </div>
</div>
<div style="clear:both;"></div>