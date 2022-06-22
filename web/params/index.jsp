<%--
  Created by IntelliJ IDEA.
  User: efusioni
  Date: 2022-06-22
  Time: 오후 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
    <script>

        function myFunc(obj){
            var ind =  $(obj).parent().index() + 1;
            var params = {
                num : ind
            }

            $.post('content.jsp',params,function (data){
                $('#wrapper').append(data);

            })
        }

    </script>
</head>
<body>
<div id="wrapper">
    <section>
        <h3>점심메뉴</h3>
        <ul>
            <li>
                <span>편의점</span>
                <a href="javascript:;" onclick="myFunc(this);">기타</a>
            </li>
            <li>
                <span>서브웨이</span>
                <a href="javascript:;" onclick="myFunc(this);">기타</a>
            </li>
            <li>
                <span>곰식당</span>
                <a href="javascript:;" onclick="myFunc(this);">한식</a>
            </li>
            <li>
                <span>스폰티노</span>
                <a href="javascript:;" onclick="myFunc(this);">양식</a>
            </li>
            <li>
                <span>을지다락</span>
                <a href="javascript:;" onclick="myFunc(this);">양식</a>
            </li>
            <li>
                <span>유가네</span>
                <a href="javascript:;" onclick="myFunc(this);">한식</a>
            </li>
        </ul>
    </section>
</div>

</body>
</html>

