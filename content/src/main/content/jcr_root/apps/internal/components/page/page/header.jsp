<%@include file="/apps/internal/global.jsp" %>
<%@page import="java.util.Iterator" %>
<header>
    <div class="topNav">
        <div class="container">
            <div class="master">
                <div class="topNavWrap">
                    <div class="mobTxtWrap">Corporate Links</div>
                    <ul>
                        <%
                        Resource wrap = resourceResolver.getResource("/content/internalProject/home/topNavWrap/jcr:content/par");
                        if(wrap != null){
                        Iterator <Resource> iterator=wrap.listChildren();
                        while(iterator.hasNext()){
                        Resource temp = iterator.next();
                            %>
                        <sling:include path= "<%= temp.getPath() %>"/>
                       <% }
                       }else{out.println("resource is not for wrap component");}%>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="master">
            <div class="navWrapper">
                <div class="logo">
                    <cq:include path="logo" resourceType="internal/components/content/logo"/>
                </div>
                <div class="topRight">
                    <div class="cartWrap">
                        <ul>
                            <li>
                                <div class="label">your cart</div>
                                <div class="cartValue">0</div>
                            </li>
                            <li>
                                <cq:include path="stock" resourceType="/apps/internalProject/components/content/stockUpdate"/>
                            </li>
                        </ul>
                    </div>
                    <div class="mobileTrigger">
                        <ul>
                            <li class="frst"></li>
                            <li class="scnd"></li>
                            <li class="thrd"></li>
                        </ul>
                    </div>
                    <nav>
                        <ul>
                            <%
                                Resource res = resourceResolver.getResource("/content/internalProject/home/TopNavigation/jcr:content/par");
                                if(res != (null)){
                                    Iterator<Resource> itr = res.listChildren();
                                    while(itr.hasNext()){
                                        Resource tempRes = itr.next();

                            %>
                            <sling:include path="<%= tempRes.getPath() %>" />
                            <%}
                            }else{out.println("Top nav resource is not found"); }
                            %>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<div style="clear:both;"></div>