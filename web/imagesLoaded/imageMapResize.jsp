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
        /* 페이지 로드 후 페이지 리사이징 되었을 때 크기에 맞춰서 변형됨 */
        $(function(){
            $('map').imageMapResize();
        })


        $('#container').imagesLoaded()
            .always( function( instance ) {
                console.log('all images loaded');
            })
            .done( function( instance ) {
                console.log('all images successfully loaded');
            })
            .fail( function() {
                console.log('all images loaded, at least one is broken');
            })
            .progress( function( instance, image ) {
                var result = image.isLoaded ? 'loaded' : 'broken';
                console.log( 'image is ' + result + ' for ' + image.img.src );
            });
    </script>
</head>
<body>
<div id="container">
    <p><img src="images/longImg.jpg" alt="" usemap="#mapLink1"></p>
    <map id="mapLink1" name="mapLink1"><area shape="rect" alt="" title="" coords="826,827,1093,1002" href="javascript:alert('hello');" target="" /></map>
</div>
</body>
</html>
