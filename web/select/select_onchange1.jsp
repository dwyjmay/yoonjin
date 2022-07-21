<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
</head>
<body>
<select onchange="selectOption(this.value)">
    <option value="section1">1</option>
    <option value="section2">2</option>
    <option value="section3">3</option>
</select>

<div id="section1" class="sections">1선택</div>
<div id="section2" class="sections">2선택</div>
<div id="section3" class="sections">3선택</div>
<div id="section4" class="sections">4선택</div>

</body>
<script>
    function selectOption(value) {
        console.log(value);
        $(".sections").hide();
        $("#" + value).show();

    }
</script>
</html>
