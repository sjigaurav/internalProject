<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<c:set var="css" value="${(isEdit)?'' :'slick-slide'}"/>
<c:if test="${isEdit}">
    This is the slide component
</c:if>

<div class="${css}">
    <c:set var="url" value="${properties.url}"/>
    <div class="col"> <img src="${properties.fileReference}" id="prdThumb" alt="">
        <img src="${url}" class="${empty url? '':'hpCarouselBgIcon'} icn1" />
    </div>
    <div class="col">
        <div class="sliderWrapper">
            <h2>"${properties.heading}"</h2>
            <div class="subHeadWrap">
                <div class="subHead">"${properties.subheading}"</div>
            </div>
            <p>"${properties.description}"</p>
            <div class="buttonWrapper">
                <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i>"${properties.button}"</span></a></div>
                <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i>"${properties.secondbutton}"</span></a></div>
            </div>
        </div>
    </div>
</div>
