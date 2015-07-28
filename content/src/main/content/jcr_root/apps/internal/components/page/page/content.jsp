<%@include file="/apps/internal/global.jsp" %>
<div class="width100Per">
<cq:include path="par" resourceType="foundation/components/parsys"/>
Content
</div>

<%
    JSONObject jsonObj = new JSONObject(list);
%>



<footer>
    <div class="container">
        <div class="master">
            <div class="col">
                <div class="heading"><a href="javascript:;">About Us</a></div>
                <div class="linkWrapper"> <a href="javascript:;">QRG Group</a> <a href="javascript:;">About Havells</a> <a href="javascript:;">Reports</a> <a href="javascript:;">Ventures</a> <a href="javascript:;">Innovation & Research</a> <a href="javascript:;">Manufacturing Facilities</a> <a href="javascript:;">Partners</a> <a href="javascript:;">Management Team</a> </div>
            </div>
            <div class="col">
                <div class="heading"><a href="javascript:;">Investor Relations</a></div>
                <div class="linkWrapper"><a href="javascript:;">Corporate Governance</a> <a href="javascript:;">Stock Information</a> <a href="javascript:;">Financial Reports</a> <a href="javascript:;">Board of Directors</a> <a href="javascript:;">Certifications</a> <a href="javascript:;">Events</a> <a href="javascript:;">Investor Relations Contact</a></div>
            </div>
            <div class="col">
                <div class="heading"><a href="javascript:;">CSR</a></div>
                <div class="linkWrapper"><a href="javascript:;">Initiative One</a> <a href="javascript:;">Initiative Two</a> <a href="javascript:;">Initiative Three</a></div>
            </div>
            <div class="col">
                <div class="heading"><a href="javascript:;">Careers</a></div>
                <div class="linkWrapper"><a href="javascript:;">Why Havells</a> <a href="javascript:;">Life @ Havells</a> <a href="javascript:;">Employee Testimonials</a> <a href="javascript:;">Core Values & DNA</a> <a href="javascript:;">Our People</a> <a href="javascript:;">Current Opportunities</a></div>
            </div>
            <div class="col">
                <div class="heading"><a href="javascript:;">News & Media</a></div>
                <div class="linkWrapper"><a href="javascript:;">News</a> <a href="javascript:;">Events</a> <a href="javascript:;">Gallery</a> <a href="javascript:;">Media Kit</a> <a href="javascript:;">Media Contact</a></div>
            </div>
            <div class="col">
                <div class="heading"><a href="javascript:;">Research & Development</a></div>
                <div class="linkWrapper"><a href="javascript:;">News & Media</a> <a href="javascript:;">FAQs</a>
                    <div class="footerWrapSocial">
                        <div class="socialWrap">
                            <div>Find us on:</div>
                            <ul>
                                <li><a href="javascript:;"><i class="fa fa-facebook fa-2x"></i></a></li>
                                <li><a href="javascript:;"><i class="fa fa-twitter fa-2x"></i></a></li>
                                <li><a href="javascript:;"><i class="fa fa-youtube fa-2x"></i></a></li>
                            </ul>
                        </div>
                        <div class="subscribeNewsletterWrap">
                            <div>Subscribe for newsletter</div>
                            <form class="" id="newsLetterEmailId" method="get" action="">
                                <input name="" type="text" placeholder="Enter your email"  onfocus="if(this.value == this.defaultValue) { this.value=''; }" onblur="if (this.value == '') { this.value=this.defaultValue;}" required>
                                <input name="" type="button" value="Go" onClick="$('#newsLetterEmailId').submit()">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyRightWrapper">
                <div class="left">&copy; Copyright 2015 by Havells. All rights reserved</div>
                <div class="right"><a href="javascript:;">GROUP COMPANIES</a> | <a href="javascript:;">TERMS OF USE</a> | <a href="javascript:;">PRIVACY POLICY</a> </div>
            </div>
        </div>
    </div>
</footer>