<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
    <style>
        /*checkType */
        .checkTypeA input {display:none;}
        .checkTypeA label {cursor:pointer;}
        .checkTypeA label:before {content:''; display:inline-block; margin-right:8px; width:22px; height:22px; border:1px solid #bfbfbf; border-radius:3px;  vertical-align:middle;}
        .checkTypeA input:checked + label {color:#f15d43 !important;}
        .checkTypeA input:checked + label:before {background:#f15d43 url(/cssMore/images/ico_check_1.png) no-repeat center/ auto; border:1px solid #f15d43;}

        /*radioType */
        .radioTypeA input {display:none;}
        .radioTypeA label {position:relative; display:inline-block; padding-left:22px; cursor:pointer;}
        .radioTypeA label:before {content:''; position:absolute; top:0; bottom:0; left:0; margin:auto; width:16px; height:16px; border:1px solid #e1e4e6; border-radius:50%; box-sizing:border-box;}
        .radioTypeA input:checked + label {color:#f15d43;}
        .radioTypeA input:checked + label:before {border:4px solid #f15d43;}
        .radioTypeA + .radioTypeA {margin-left:15px;}
    </style>

</head>

<body>
<p class="checkTypeA">
    <input type="checkbox" id="termsAgreeYn" name="termsAgreeYn" value="Y">
    <label for="termsAgreeYn" class="ec">무료체험 이용약관 동의 <span class="fs_ess">필수</span></label>
</p>

<span class="radioTypeA">
        <input type="radio" id="chkType1" name="chkType" value="무료체험">
        <label for="chkType1">무료</label>

        <input type="radio" id="chkType2" name="chkType" value="무료체험">
        <label for="chkType2">체험</label>
    </span>
</body>

</html>