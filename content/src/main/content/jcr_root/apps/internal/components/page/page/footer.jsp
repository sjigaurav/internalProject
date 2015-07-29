<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<footer>
    <div class="container">
      <div class="master">

			<cq:include path="footerpar" resourceType="foundation/components/parsys"/>

         </div>
      </div>

</footer>
 <div style="clear:both;"></div>

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