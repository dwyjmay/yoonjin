<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
    <style>
        a{text-decoration: none;}
        .select2 {border: 1px solid #ebebeb;}
        .btnColorC{background: #f26714; color: #fff; font-size: 14px; font-weight: 600;}
        .btnArea3{padding:2px 5px; border-radius: 4px;}
        .btnColorE{background: #bfbfbf; color: #000; font-size: 14px; font-weight: 600;}
    </style>
</head>
<body>
<div class="coupon bn">
    <select class="select2">
        <option value="">쿠폰을 적용해주세요</option>
        <option value="">킨더밀쉬 모음딜 10% 할인</option>
        <option value="">킨더밀쉬 모음딜 10% 할인킨더밀쉬 모음딜 10% 할인</option>
    </select>
    <span><a href="" class="btnColorC btnArea3" id="applyCou">쿠폰 적용하기</a></span>
</div>
<script>
    $(function() {
        /*쿠폰 적용 시 버튼 변경*/
        $('.select2').on("change", function() {
            var optInd = $("option", this).index($('option:selected', this));
            var applyCou = $(this).parent('.coupon').find('#applyCou');
            if (optInd == 0) {
                applyCou.removeClass("btnColorE");
                applyCou.addClass("btnColorC");
                applyCou.text("쿠폰 적용하기");
            } else {
                applyCou.removeClass("btnColorC");
                applyCou.addClass("btnColorE");
                applyCou.text("적용 취소하기");
            }
        });
        /*쿠폰 적용 취소 클릭 시 */
        $('.coupon #applyCou').on("click", function(e) {
            var getText = $(this).text();
            var p_cou = $(this).parents('.coupon');
            if (getText == "적용 취소하기") {
                $(this).removeClass("btnColorE");
                $(this).addClass("btnColorC");
                $(this).text("쿠폰 적용하기");
                p_cou.find('.select2 option').removeAttr("selected");
                p_cou.find('.select2 option:eq(0)').attr("selected", "selected");
            }
            e.preventDefault();
        });
    })
</script>
</body></html>
