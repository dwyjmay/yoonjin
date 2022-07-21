<%--
  Created by IntelliJ IDEA.
  User: efusioni
  Date: 2022-07-21
  Time: 오후 1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp"/>
    <style>
        .li_00{background-color:#fa7b78;}
        .li_01{background:#91b4fa;}
        .li_02{background-color:#fabd34;}
    </style>
</head>
<body>
<ul class="list">
    <li>Lorem ipsum dolor sit amet.</li>
    <li>Lorem ior sit amet.</li>
    <li>Lorem ipsum</li>
</ul>

<script>
    $(function () {
        $('.list li').each(function (index) {
            $(this).addClass('li_0' + index);
        });
    })
</script>
</body>
</html>

