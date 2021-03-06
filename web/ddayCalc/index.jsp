<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <c:import url="/include/head.jsp" />
    <script>
        function counter(){
            /* !!!!!!!!!!월별 주기!!!!!!!!!! */

            /*
                var now2=new Date(); //현재 날짜 가져오기
                var year= now2.getFullYear();
                var month= now2.getMonth()+1;
                var cycle=new Date(year,month,1).getDate(); //현재 월의 마지막 날
                console.log(year+": year", month+": month", cycle+":date");
                var dday = new Date(year,month,1);
                console.log(dday);
              */


            /* !!!!!!!!!!특정일 주기!!!!!!!!!! */


            var dday = new Date("Nov 15,2021,00:00:00").getTime(); //디데이ms
            var now2=new Date(); //현재 날짜 가져오기
            var distance2= dday-now2;
            var d2=Math.floor(distance2 / (1000 * 60 * 60 * 24));
            console.log((-d2)+" 일 지남");

            //주기리셋
            if(distance2<0){ //현재날짜가 dday를 지났으면
                d2=Math.floor((-d2/7)); //dday로부터 몇주 지났는지
                console.log(d2+"주");
                dday+=(604800000)*(d2); //
            }

            setInterval(function(){
                var now = new Date(); //현재 날짜 가져오기
                var distance = dday - now;
                var d = Math.floor(distance / (1000 * 60 * 60 * 24));
                var h = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var m = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var s = Math.floor((distance % (1000 * 60)) / 1000);

                if(distance<0){
                    dday +=(604800000); //7일 = 604800000ms  1일 = 86400000
                }
                else{
                    if(s < 10){
                        s = '0'+s;
                    }
                    $('#counter-day').html("Days : "+d);
                    $('#counter-hours').html(', Hours : '+h);
                    $('#counter-minutes').html(', Minutes : '+m);
                    $('#counter-second').html(', Second : '+s);

                }
            }, 1000);
        }
        counter();
    </script>
</head>
<body>
<div class="content">
    <span id="counter-day"></span>
    <span id="counter-hours"></span>
    <span id="counter-minutes"></span>
    <span id="counter-second"></span>
</div>

</body>
</html>

