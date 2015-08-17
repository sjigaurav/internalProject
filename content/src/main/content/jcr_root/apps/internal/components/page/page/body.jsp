<%@include file="/apps/internal/global.jsp" %>
<div class="width100Per">
    <cq:include script="header.jsp"/>
    <cq:include script="content.jsp"/>
    <cq:include script="footer.jsp"/>
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