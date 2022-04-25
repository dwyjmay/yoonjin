<%--
  Created by IntelliJ IDEA.
  User: efusioni
  Date: 2022-04-12
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
    <script>
       
    </script>
</head>
<body>

<a id='a1' href="/imagesLoaded/images/img1.jpg"
   download>일반</a>
<a id='a1' href="/imagesLoaded/images/img1.jpg"
   download='asdfa.webp'>파일명지정</a>
<script>

    function MS_bindDownload(el) {
        if (el === undefined) {
            throw Error('I need element parameter.');
        }
        if (el.href === '') {
            throw Error('The element has no href value.');
        }
        var filename = el.getAttribute('download');
        if (filename === null){
            throw Error('I need download property.');
        }
        if (filename === '') {
            var tmp = el.href.split('/');
            filename = tmp[tmp.length - 1];
        }
        el.addEventListener('click', function (evt) {
            evt.preventDefault();
            var xhr = new XMLHttpRequest();
            xhr.onloadstart = function () {
                xhr.responseType = 'blob';
            };
            xhr.onload = function () {
                navigator.msSaveOrOpenBlob(xhr.response, filename);
            };
            xhr.open("GET", el.href, true);
            xhr.send();
        })
    }


    let atags = document.querySelectorAll('a');
    for (let i = 0; i < atags.length; i++) {
        const element = atags[i];
        MS_bindDownload(element);
    }

</script>


</body>
</html>

