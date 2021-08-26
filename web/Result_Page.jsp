<!doctype html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&family=Poor+Story&family=Rampart+One&display=swap" rel="stylesheet">
    <title>zzz</title>
    <link rel="stylesheet" href="css/top.css">
    <link rel="stylesheet" href="css/Result_page.css">
  </head>
  <body>
    <nav class="everyscore">

      <div class="everyscore_logo">
        <a href="Main3_page.jsp"><img src="img/outline_done_outline_black_24dp.png" height=40, width=40>Every Score</a>
      </div>
      <ul class="everyscore_menu">
        <li class="everyscore_item"><a href="Main3_page.jsp"><img src="img/outline_home_black_24dp.png" title="홈" height=30, width=30></a></li>
        <li class="everyscore_item"><a href=""><img src="img/outline_face_black_24dp.png" title="마이페이지" height=30, width=30></a></li>
        <li class="everyscore_item"><a href="Login_Page.jsp"><img src="img/outline_logout_black_24dp.png" title="로그아웃" height=30, width=30></a></li>
      </ul>
    </nav>

    <h1><strong>점수 집계 결과</strong></h1><br><br>

    <div id="Main_Info">
        <!-- grid-area로 한걸 그냥 세로줄로 4칸 나눠서 grid-columns로 바꿈  -->
        <div></div>

        <div id="left_info">
          <div class="main_graph">
            <canvas id="Score_Chart" width="15px" height="14px"></canvas>
          </div>
        </div>

        <div id="right_info">
          <div class="stack_graph">
              <div class="average_stack1">
                  <!-- js 코드 들어감 -->
              </div>
              <div class="midvalue_stack2">
                  <!-- js 코드 들어감 -->
              </div>
          </div>
          <div class="level_graph">
              <canvas id="Donut_Chart" width="10px" height="10px"></canvas>
          </div>
          <div class="ranking">
              <img src="img/free-icon-trophy-2164820.png" title="상" height=40, width=40>
              <span class="myrank"></span>
          </div>
        </div>
        <div></div>
    </div>
  </body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="js/Result_page.js"></script>

