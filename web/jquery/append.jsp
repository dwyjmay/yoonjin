<%--
  Created by IntelliJ IDEA.
  User: efusioni
  Date: 2022-07-21
  Time: 오후 1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
    <style>
        *{box-sizing: border-box; padding:0; margin:0;}
        a{text-decoration: none;}
        #addBtn{display:inline-block; padding:0 10px; color:#000; font-size:20px; text-decoration: none; background-color: aquamarine; border-radius:4px;}
        .dealSelect{margin: 10px 0; width:310px;}
        .dealSelect li{margin:5px 0; padding:5px; background:#eee; border-radius: 4px;}
        .dealTitle{ font-weight: 600;}
        .prdOption {display:inline-block;}
        .prdOption a{display:inline-block; width:30px; height:30px; line-height: 30px; font-weight:600; color:#fff; text-align: center; border-radius: 50%;}
        .prdOption .minus{background-color:#91b4fa}
        .prdOption .plus{background-color:#fa7b78;}
        .btnTypeA{display:inline-block; width:50px; padding:5px 0; text-align: center; background-color:#fabd34; color:#fff; font-weight: 600; border-radius: 5px;}
        .ar{text-align: right;}
    </style>
</head>
<body>
<a href='#' id="addBtn" onclick="addDeal()">click!</a>
<ul class='dealSelect'>
    <li>
        <div class='dealTitle'>[든든촉촉세트7]수페리어3단계24입 피지오겔 DMT크림 105ml</div>
        <div class='control'>
            <div class='prdOption'>
                <a href='#' onclick='updateQty(' DOWN');return false;' class='minus'>ㅡ</a>
                <input type='number' class='txt' value='1' name='qty' id='qty'>
                <a href='#' onclick='updateQty(' UP');return false;' class='plus'>+</a>
            </div><!-- //prdOption -->
            <div style='display:inline-block;'>
                <a href='#' onclick='' class='btnTypeA'>변경</a>
            </div>
            <div class='ar'>
                <span class='price'>8,910원</span>
            </div>
        </div>
    </li>
</ul>

<script>
    function addDeal() {
        var str = "<li><div class='dealTitle'>[든든촉촉세트7]수페리어3단계24입 피지오겔 DMT크림 105ml</div>";
        str += "<div class='control'>";
        str += "<div class='prdOption'>";
        str += "<a href='#' onclick='updateQty(' DOWN');return false;' class='minus'>ㅡ</a>"
        str += "<input type='number' class='txt' value='1' name='qty' id='qty'>";
        str += "<a href='#' onclick='updateQty(' UP');return false;' class='plus'>+</a>";
        str += "</div><!-- //prdOption -->";
        str += "<div style='display:inline-block;'>";
        str += "<a href='#' class='btnTypeA' onclick=''>변경</a>";
        str += "</div>";
        str += "<div class='ar'>";
        str += "<span class='price'>8,910원</span>";
        str += "</div>";
        str += "</div>";
        str += "</li>";

        $(".dealSelect").append(str);
    }

    // 상품 삭제
</script>
</body>
</html>

