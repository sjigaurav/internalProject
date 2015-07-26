<%@include file="/apps/internal/global.jsp" %>
<div class="width100Per">
    <sling:include path="/content/Chairman/jcr:content/par/conainer"/>
    <div class="homePageWrapper">
        <div class="container">
            <div class="master">

    <cq:include path="par" resourceType="foundation/components/parsys"/>
                </div>
            </div>
        </div>
</div>
<script>
    $(function(){
        $('.spotlightWrapper .slick-slider').slick({
            dots: true,
            arrows:false
        });
        $('.havellsAtGlance .slick-slider').slick({
            dots: true,
            arrows:false
        });
        $('.hpCarouselBg .slick-slider').slick({
            dots: false,
            arrows:true
        });
    });
</script>