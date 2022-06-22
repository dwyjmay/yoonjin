<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp"/>
    <script>
        $(function(){
            uiUtil.chkAll('#chkAll', '.chkOthers');
        })
    </script>
</head>
<body id="checkAllBody">
<p class="termsTxt">약관 확인 후 동의 선택해주세요.</p>
<div class="checkAllArea"><input type="checkBox" class="chkTypeA checkAll" id="chkAll"><label for="chkAll">전체 약관 동의</label></div>
<ul class="termList">
    <li class="ess">
        <div>
            <input type="checkBox" class="chkTypeA chkOthers" id="agree1"><label for="agree1">AK멤버스 이용약관
            <span>(필수)</span></label>
        </div>
        <a href="javascript:;">내용보기</a>
    </li>
    <li class="ess">
        <div>
            <input type="checkBox" class="chkTypeA chkOthers" id="agree2"><label for="agree2">AK몰 이용약관 <span>(필수)</span></label>
        </div>
        <a href="javascript:;">내용보기</a>
    </li>
    <li class="ess">
        <div>
            <input type="checkBox" class="chkTypeA chkOthers" id="agree3"><label for="agree3">개인정보 수집 및 이용동의
            <span>(필수)</span></label>
        </div>
        <a href="javascript:;">내용보기</a>
    </li>
    <li>
        <div>
            <input type="checkBox" class="chkTypeA chkOthers" id="agree4"><label for="agree4">개인정보 수집 및 이용동의
            <span>(선택)</span></label>
        </div>
        <a href="javascript:;">내용보기</a>
    </li>
    <li>
        <div>
            <input type="checkBox" class="chkTypeA chkOthers" id="agree5"><label for="agree5">제휴 신용카드 정보활용 제공동의 <span>(선택)</span></label>
        </div>
        <a href="javascript:;">내용보기</a>
    </li>
</ul>
</body>
</html>