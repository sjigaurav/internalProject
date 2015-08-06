<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>

<%
    String Heading = properties.get("heading", "");
    if (isEdit) { %>
Here edit for heading..
<%      }
%>
<div class="newsAndUpdates">
    <div class="newsWrap">
        <h2><%=Heading%> </h2>
        <ul>
            <% if (isEdit) { %>
            <cq:include path="par" resourceType="foundation/components/parsys"/>
            <div style="clear:both;"></div>
            <%
            } else {
                String r = resource.getPath();
                Resource res = resourceResolver.getResource(r + "/par");

                Iterator<Resource> itr = res.listChildren();
                while (itr.hasNext()) {
                    Resource temp = itr.next();
            %>
            <sling:include path="<%= temp.getPath() %>"/>
            <% }
            }
            %>
        </ul>
    </div>
</div>
<div style="clear:both;"></div>
