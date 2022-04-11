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
    <script>
        $(function(){
            /* 해상도에 맞춰서  처음 페이지가 로드 되었을 때만 적용 */
            $('img[usemap]').rwdImageMaps();
        })
    </script>
</head>
<body>
<div id="container">
    <p><img src="images/longImg.jpg" alt="" usemap="#mapLink1"></p>
    <map id="mapLink1" name="mapLink1"><area shape="rect" alt="" title="" coords="826,827,1093,1002" href="javascript:alert('hello');" target="" /></map>
</div>
</body>
</html>
