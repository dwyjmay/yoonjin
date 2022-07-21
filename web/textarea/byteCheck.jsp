<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp"/>
    <script>
        function updateChar(formName, length_limit, output) {
            var length = calculate_msglen(formName.value);
            output.innerText = length;

            if (length > length_limit) {
                alert("최대 " + length_limit + "byte만 등록하실수 있습니다.");
                formName.value = formName.value.replace(/\r\n$/, "");
                formName.value = assert_msglen(formName.value, length_limit, output);
            }
        }

        function calculate_msglen(message) {
            var nbytes = 0;

            for (var i = 0; i < message.length; i++) {
                var ch = message.charAt(i);
                if (escape(ch).length > 4) {
                    nbytes += 2;
                } else if (ch == '\n') {
                    if (message.charAt(i - 1) != '\r') {
                        nbytes += 1;
                    }
                } else if (ch == '<' || ch == '>') {
                    nbytes += 4;
                } else {
                    nbytes += 1;
                }
            }

            return nbytes;
        }

        function assert_msglen(message, maximum,output){
            var inc = 0;
            var nbytes = 0;
            var msg = "";
            var msglen = message.length;

            for(var i=0; i<msglen; i++){
                var ch = message.charAt(i);
                if(escape(ch).length > 4){
                    inc = 2;
                }else if(ch == '\n'){
                    if(message.charAt(i-1) != '\r'){
                        inc = 1;
                    }
                }else if(ch == '<' || ch == '>'){
                    inc = 4;
                }else{
                    inc = 1;
                }
                if((nbytes + inc) > maximum){
                    break;
                }
                nbytes += inc;
                msg += ch;
            }
            output.innerText = nbytes;
            return msg;
        }
    </script>
</head>
<body>
<form name="qnaForm" id="qnaForm" method="post" enctype="multipart/form-data">
    <table class="form">
        <caption>질문과 답변 폼으로 구분, 제목, 첨부파일, 내용을 등록</caption>

        <tr>
            <th scope="row"><label for="content">내용</label></th>
            <td>
                <p class="unit">
                    <span class="fl">* 글자수는 최대 80Byte 까지 등록 가능 합니다.</span>
                    <span class="fr" id="byteArea"><span id="textlimit">0</span>/80 Byte</span>
                </p>
                <textarea class="contact_txt" id="content" name="content" cols="105" rows="10" title="내용 입력"
                          onkeyup="updateChar(qnaForm.content, 80, textlimit);"></textarea>
            </td>
        </tr>
    </table>
</form>
</body>
</html>

