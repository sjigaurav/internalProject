<%@include file="/apps/internal/global.jsp"%>
<%@page session="false" %>
<%
        String exchange = properties.get("exchange","");
        String url = properties.get("url","");
%>
<div class="label"><%=exchange%></div>
<div class="nseValue up">x <i class="fa fa-arrow-up"></i></div>
<script>
        $(document).ready(function(){
                $.ajax({
                        url: "http://finance.google.com/finance/info?client=ig&q=NSE:Havells",
                        dataType:"jsonp",
                success:function(json){
                        console.log(json);
                        var x=json[0].l;
                        $(".nseValue.up").html(x);
                }
        });
        })
</script>
