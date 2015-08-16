<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%@ page import="com.day.cq.commons.Doctype,
        com.day.cq.wcm.api.PageFilter,
        com.day.cq.wcm.foundation.Navigation,
        com.day.text.Text" %>

<%  String title = properties.get("title","");
    String path =properties.get("childPath","");
    int depth = properties.get("depth",1);
%>
<li><a href="/content/geometrixx/en"><%= title %></a>
    <div class="subNavWrapper">
        <div class="container">
            <div class="master">
                <ul>
                    <%

                        if(!path.equals("")){
                            Page homePage = resourceResolver.getResource(path).adaptTo(Page.class);
                            int absParent = properties.get("absParent", 2);

                            PageFilter filter = new PageFilter(request);
                            Navigation nav = new Navigation(homePage, absParent, filter, depth);
                            String xs = Doctype.isXHTML(request) ? "/" : "";

                            // help linkchecker to increase performance
                            String linkCheckerHint = filter.isIncludeInvalid() ? "" : "x-cq-linkchecker=\"valid\"";

                    %>

                    <%
                        for (Navigation.Element e: nav) {
                            switch (e.getType()) {
                                case NODE_OPEN:
                    %><ul><%
                        break;
                    case ITEM_BEGIN:
                %><li <%= e.hasChildren() ? "class=\"noleaf\"" : "" %>><a href="<%= e.getPath() %>.html" <%= linkCheckerHint %>><%= e.getTitle() %></a><%
                        break;
                    case ITEM_END:
                %></li><%
                        break;
                    case NODE_CLOSE:
                %></ul><%
                                break;
                        }
                    }
                %>

                    <%}else{
                        out.println("Path is not mention==");
                    }%>                      </ul>
            </div>
        </div>
    </div>
</li>
<% if(isEdit){%>
==============path is empty ===================
<div Style="clear:both";></div>

<% } %>