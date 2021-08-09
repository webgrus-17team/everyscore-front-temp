<!doctype html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&family=Noto+Sans+KR:wght@100&family=Poor+Story&family=Sunflower:wght@500&display=swap" rel="stylesheet">
        <title>Every Score 집계결과</title>
        <link rel="stylesheet" href="css/testcss.css">
    <style>
      #Main_Info {
        margin : 0px;
        display: grid;
        grid-template-columns: 1fr 600px 1fr ;
      }
      #Main_Info .Sub_Info {
        padding-left: 40px;
      }
      strong{
        font-family: 'Poor Story', cursive;
        font-size: 27px;
      }
      h1 {
            color: whitesmoke;
            margin: 0px;
            padding: 50px;
            text-align: center;
            color: white;
            /* 그라데이션 코드 시작 */
            background: #01579b;
            background: -webkit-linear-gradient(left, #01579b 0%, #80adc9 100%);
            background: -o-linear-gradient(left, #01579b 0%, #80adc9 100%);
            background: linear-gradient(to right, #01579b 0%, #80adc9 100%);
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#01579b', endColorstr='#80adc9',GradientType=1 );
            /* 그라데이션 코드 끝 */
            }
    </style>
  </head>
  <body>
    <nav class="everyscore">
            <div class="everyscore_logo">
                <a href="main_3.jsp"><img src="img/outline_done_outline_black_24dp.png" height=40, width=40>Every Score</a>
            </div>

            <ul class="everyscore_menu">
                <li class="everyscore_item"><a href="main_3.jsp"><img src="img/outline_home_black_24dp.png" title="홈" height=30, width=30></a></li>
                <li class="everyscore_item"><a href=""><img src="img/outline_face_black_24dp.png" title="마이페이지" height=30, width=30></a></li>
                <li class="everyscore_item"><a href=""><img src="img/outline_logout_black_24dp.png" title="로그아웃" height=30, width=30></a></li>
            </ul>
        </nav>
    <h1><strong>점수 집계 결과</strong></h1><br><br>
    <div id="Main_Info">
      <div></div>
      <div>
        <canvas id="Score_Chart" width="10px"></canvas>
        <div class="Sub_Info">
          <p>표본수 : 35</p>
          <p>평균 : 47.2</p>
          <p>중간값 : 41</p>
          <p>난이도 : 조금 어려움</p>
          <p>내 등수 : 7/18</p>
        </div>
      </div>
      <div></div>
    </div>
  </body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script>
  var ctx = document.getElementById('Score_Chart').getContext('2d');
  var chart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['0~10','11~20','21~30','31~40','41~50','51~60','61~70','71~80','81~90','91~100'],
      datasets: [{
        label: '인원 수',
        backgroundColor: '#01579B',
        data: [15,1,3,11,20,9,7,8,1,0,2]
      }]
    },
  });
</script>
