<%--
  Created by IntelliJ IDEA.
  User: efusioni
  Date: 2022-05-02
  Time: 오후 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
    <link rel="stylesheet" href="contents.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <style>
        .slide-container{width: 300vw;  transition: all 1s;}
        .slide-box{width: 100vw; float: left;}
    </style>
</head>
<body>

<div class="oh">
    <div class="slide-container">
        <div class="slide-box"><img src="images/car1.png" alt=""></div>
        <div class="slide-box"><img src="images/car2.png" alt=""></div>
        <div class="slide-box"><img src="images/car3.png" alt=""></div>
    </div>
</div>
<button class="slideBtn" id="btnPrev">다음</button>
<button class="slideNum" id="btn-1">1</button>
<button class="slideNum" id="btn-2">2</button>
<button class="slideNum" id="btn-3">3</button>
<button class="slideBtn" id="btnNext">다음</button>

<script>
    /*document.querySelector('#btn-1').addEventListener('click',function(){
        document.querySelector('.slide-container').style.transform='translateX(0vw)';
    })
    document.querySelector('#btn-2').addEventListener('click',function(){
        document.querySelector('.slide-container').style.transform='translateX(-100vw)';
    })
    document.querySelector('#btn-3').addEventListener('click',function(){
        document.querySelector('.slide-container').style.transform='translateX(-200vw)';
    })*/


    let btn = document.querySelectorAll('.slideNum');

    btn.forEach(function(item, index){
        var tx=(-100)*index;
        btn[index].addEventListener('click',function(){
            document.querySelector('.slide-container').style.transform='translateX('+tx+'vw)';
            document.querySelectorAll('.slide-box')[index].classList.add('on');
        })
    })

    document.querySelector('#btnPrev').addEventListener('click',function(){

    })
</script>
</body>
</html>

