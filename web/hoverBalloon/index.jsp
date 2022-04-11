<%--
  Created by IntelliJ IDEA.
  User: efusioni
  Date: 2022-04-05
  Time: 오후 5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:import url="/include/head.jsp" />
    <style>
        .hoverBalloon{margin:40px; font-size: 0;}
        .hoverBalloon li{position: relative; display: inline-block; }
        .hoverBalloon li span{background: url(images/bg_balloon.gif) no-repeat ;}
        .hoverBalloon li > span{display: none;  position: absolute; height:28px; left:0; bottom: 100%; background-position:right bottom;}
        .hoverBalloon li span span{display:block; height:28px; padding:0 10px; font-size: 14px; white-space: nowrap; background-position:left top;}


        .hoverBalloon2{margin:40px; font-size: 0;}
        .hoverBalloon2 li{position: relative; display: inline-block; }
        .hoverBalloon2 li span{display: none; position: absolute; height:28px; left:0; bottom: 100%; padding:0 10px; font-size: 14px; white-space: nowrap;
            background: url(images/bg_balloon.gif) no-repeat left top, url(images/bg_balloon.gif) no-repeat right bottom;
        }
    </style>
    <script>
        $(function(){
            $(".hoverBalloon li").each(function(){
                $("span span", this).text($("img", this).attr("alt"));
            }).mouseover(function(){
                $(">span", this).show();
            }).mouseleave(function(){
                $(">span", this).hide();
            });

            $(".hoverBalloon2 li").each(function(){
                $("span", this).text($("img", this).attr("alt"));
            }).mouseover(function(){
                $(">span", this).show();
            }).mouseleave(function(){
                $(">span", this).hide();
            });

        })


    </script>
</head>
<body>
    <div class="wrapper">

        <ul class="hoverBalloon">
            <li><img src="images/ico_service_s1.gif" alt="보너스카드">
                <span><span></span></span>
            </li>
            <li><img src="images/ico_service_s6.gif" alt="셀프주유소">
                <span><span></span></span>
            </li>
            <li><img src="images/ico_service_s22.gif" alt="스타오일캠페인 참여주유소">
                <span><span></span></span>
            </li>
            <li><img src="images/ico_service_s42.gif" alt="공공유류 협약 주유소">
                <span><span></span></span>
            </li>
        </ul>

        <ul class="hoverBalloon2">
            <li><img src="images/ico_service_s1.gif" alt="보너스카드">
                <span></span>
            </li>
            <li><img src="images/ico_service_s6.gif" alt="셀프주유소">
                <span></span>
            </li>
            <li><img src="images/ico_service_s22.gif" alt="스타오일캠페인 참여주유소">
                <span></span>
            </li>
            <li><img src="images/ico_service_s42.gif" alt="공공유류 협약 주유소">
                <span></span>
            </li>
        </ul>
        
        
    </div>

</body>
</html>
