<%--
  Created by IntelliJ IDEA.
  User: efusioni
  Date: 2022-04-12
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.

  $(function(){
            var searchStr = '문화';
            $(".test:contains('"+searchStr+"')").each(function(){
                var regex=new RegExp(searchStr,'gi');
                $(this).html($(this).text().replace(regex,"<mark>"+searchStr+"</mark>"));
            })
        })
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
    <script>
        $(function(){
            var searchStr = '문화'; //찾고싶은 단어
            /*var regex=new RegExp(searchStr,'gi'); */
            var orgStr = $('.test').html(); // 기존의 html
            findText();

            function findText(){
                if(orgStr.match(searchStr)){ //페이지 내 일치하는 것이 있을 경우
                    var test=orgStr.match(searchStr).index; //일치되는 곳의 개수
                    var txtCont = orgStr.split(searchStr);
                    var arr = [];

                    for(i=0; i<test;i++){
                        arr[i]=txtCont[i].replace(txtCont[i].substr(-1), txtCont[i].substr(-1)+"<mark>"+searchStr+"</mark>");
                    }
                    $('.test').html(arr)

                }
                else{
                    alert('no results');
                }



                    }
        })

    </script>
</head>
<body>

<div class="test">

    문화아카데미는 문화가 문화하는 문화상황이다 문화하는방법 문지기 내가문화 내가곧문화다

</div>

</body>
</html>

