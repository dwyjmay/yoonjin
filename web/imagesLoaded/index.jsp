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

        /* 사용 예시 1 */
        /*$('#container').imagesLoaded( function() {
            // images have loaded
        });

        // options
        $('#container').imagesLoaded( {
                // options...
            },
            function() {
                // images have loaded
            }
        );*/

        /* 사용 예시 2 */
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
    <p><img src="images/longImg.jpg" alt=""></p>
    <p><img src="images/img1.jpg" alt=""></p>
    <p><img src="images/img2.jpg" alt=""></p>
    <p><img src="images/img3.jpg" alt=""></p>
    <p><img src="images/img4.jpg" alt=""></p>
    <p><img src="images/img6.jpg" alt=""></p>
    <p><img src="images/img7.jpg" alt=""></p>
    <p><img src="images/img8.jpg" alt=""></p>
    <p><img src="images/img9.jpg" alt=""></p>
    <p><img src="images/img10.jpg" alt=""></p>
    <p><img src="images/img11.jpg" alt=""></p>
    <p><img src="images/img12.jpg" alt=""></p>

</div>

</body>
</html>
