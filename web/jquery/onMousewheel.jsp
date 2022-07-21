<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
    <style>
        #wrap{width: 100vw; height: 200vh; overflow: hidden;}
        .header{width: 100%; background: wheat; height: 100px; position: fixed; display: flex; align-items: center; justify-content: center; top:0; transition: all 0.4s;}
        .header.ani1{top: -100%;}
    </style>
</head>
<body>
<div id="wrap">
    <div class="header">
        웅진 스마트올
    </div>
</div>
<script>
    var ani1=false;
    $('#wrap').on('mousewheel', function(e){
        var wheel = e.originalEvent.wheelDelta;

        if(wheel > 0){
            $('.header').removeClass("ani1");
        }

        else{
            $('.header').addClass('ani1');

            /*console.log("내림");*/
        }


    });
</script>
</body>
</html>

