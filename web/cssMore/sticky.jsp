<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
    <style>
        #header,#nav,#content{color:white; text-decoration: none;}
        #header{background: red;
            height:100px;
        }
        #nav{
            background:cornflowerblue;
            text-align: center;
            padding:40px 0;

            /* positoin -> sticky 를 써주고 top 등 지정*/
            position: sticky;
            top:0;
        }
        #content{
            background: green;
            height:1000vh;
        }

    </style>
</head>
<body>
<div id="header">Header</div>
<div id="nav">Navigation</div>
<div id="content">Content</div>
</body>
</html>
