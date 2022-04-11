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
    <c:import url="/m/include/head.jsp" />

</head>
<body>
    <div class="wrapper">
        <ul class="tabTypeA tabNum2">
            <li><a href="#" onclick="tabControl(this); return false;">탭 첫 번째</a></li>
            <li class="on"><a href="#" onclick="tabControl(this); return false;">탭 두 번째</a></li>
        </ul>

        <ul class="tabTypeA tabNum3">
            <li class="on"><a href="#" onclick="tabControl(this); return false;">탭 첫 번째</a></li>
            <li><a href="#" onclick="tabControl(this); return false;">탭 두 번째</a></li>
            <li><a href="#" onclick="tabControl(this); return false;">탭 세 번째</a></li>
        </ul>

        <ul class="tabTypeA tabNum4">
            <li class="on"><a href="#" onclick="tabControl(this); return false;">탭 첫 번째</a></li>
            <li><a href="#" onclick="tabControl(this); return false;">탭 두 번째</a></li>
            <li><a href="#" onclick="tabControl(this); return false;">탭 세 번째</a></li>
            <li><a href="#" onclick="tabControl(this); return false;">탭 네 번째</a></li>
        </ul>

    </div>

</body>
</html>
