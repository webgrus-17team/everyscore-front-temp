<!doctype html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&family=Noto+Sans+KR:wght@100&family=Poor+Story&family=Sunflower:wght@500&display=swap" rel="stylesheet">
        <title>Every Score 게시판</title>
        <link rel="stylesheet" href="css/testcss.css">
        <style>
          #Main_Info {
            margin : 0px;
            display: grid;
            grid-template-columns: 1fr 800px 1fr ;
            /* 그리드 사용하여 가운데 표는 800px 가로길이 고정, 나머지 좌우여백 비율 1:1 */
          }
          #Writing_Search_Button {
            display: grid;
            grid-template-columns: 10fr 13fr 10fr;
            /* 그리드 써서 글쓰기, 가운데 여백, 검색란 비율을 10:13:10 */
            height: 60px;
            /* 글쓰기, 검색버튼 있는 줄과 표 사이 틈 줄임 */
          }
          #subjectname, #search{
              height: 30px;
              font-weight: 700;
              border-radius: 7px;
              font-size: 15px;
              text-align: center
          }
          #subjectname{
                width: 160px;
                border: 1px solid black;
                text-align: left;
          }
          #search{
                width: 70px;
                height: 35px;
                background-color: #01579B;
                color: white;
                border: 4px solid #01579B;
          }
          #Writing_Search_Button .writing {
            border: 1px solid black;
            color: white;
            background-color: #01579B;
            padding-right: 15px;
            padding-bottom: 7px;
            padding-top: 7px;
            padding-left: 15px;
            text-decoration: none;
            border-radius: 7px;
            font-size: 15px;
          }
          #table_head {
            text-align: center;
          }
          #paging{
            padding-bottom: 70px;
            text-align: center;
          }
          #paging a {
            color:black;
            font-size: 13px;
            text-decoration: none;
            display: inline-block;
            margin: 5px;
            padding: 5px 10px;      /* 위아래 5px, 좌우 10px */
            border-radius: 100px;
          }
          #paging .num_button {
            border: 1px solid black;
          }
          #paging .move_button {
            background-color: #eee;
          }
          .big_menu {
            cursor: pointer;
            font-size: 20px;
          }
          .small_menu a {
            font-size: 15px;
            color: red;
            text-decoration: none;
          }
          .subject{
                list-style:none;
                padding-left:0px;
            }
          table{
            width : 100%;  /*해당 칸에서 꽉채워서 표가 차지하게 함*/
            margin : 0px;
            padding : 0px;
            border-collapse: collapse;  /* table의 테두리가 기본2줄인데 1줄로 바꿈 */
            border-top: 2px solid #01579B;  /* table 맨 윗줄만 색 넣기*/
            text-align: center;
          }
          tr {
            border-bottom: 1px solid #999; /* 각줄 밑에 회색 선 만듦 */
          }
          td {
            padding : 20px;
          }
          tbody tr td:nth-child(2) { /* 예외적으로 tbody의 각줄의 2번째 td만 가운데 정렬 */
            text-align: left;
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
                <a href="http://everyScore.co.kr"><img src="img/outline_done_outline_black_24dp.png" height=40, width=40>Every Score</a>
            </div>

            <ul class="everyscore_menu">
                <li class="everyscore_item"><a href=""><img src="img/outline_home_black_24dp.png" height=30, width=30></a></li>
                <li class="everyscore_item"><a href=""><img src="img/outline_face_black_24dp.png" height=30, width=30></a></li>
                <li class="everyscore_item"><a href=""><img src="img/outline_logout_black_24dp.png" height=30, width=30></a></li>
            </ul>
        </nav>
        <h1><strong>게 시 판</strong></h1><br><br><br>

        <div id="Main_Info">
          <div></div>
          <div>
            <div id="Writing_Search_Button">
              <div>
                <a href="main_1.jsp" class=writing>글쓰기</a>
              </div>
              <div></div>
              <div>
                <input id= subjectname type="text" placeholder="  교수명 or 과목명">
                <input id= search type="button" value="검색"><br><br>
              </div>
            </div>

            <table>
              <thead id="table_head">
                <tr>
                  <td>번호</td>  <td>과목명</td> <td>교수명</td> <td>작성일</td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>4</td>
                  <td>
                    <ul class="big_menu">
                      <li class="subject">자료구조</li>
                      <ul class="small_menu">
                        <li><a href="main_2.jsp">중간고사</a></li>
                        <li><a href="main_2.jsp">퀴즈</a></li>
                        <li><a href="main_2.jsp">기말고사</a></li>
                      </ul>
                    </ul>
                  </td>
                  <td>이연</td>
                  <td>2021-08-19</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>
                    <ul class="big_menu">
                      <li class="subject">컴퓨터공학 입문</li>
                      <ul class="small_menu">
                        <li><a href="main_2.jsp">중간고사</a></li>
                        <li><a href="main_2.jsp">퀴즈</a></li>
                        <li><a href="main_2.jsp">기말고사</a></li>
                      </ul>
                    </ul>
                  </td>
                  <td>김두영</td>
                  <td>2021-07-19</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>
                    <ul class="big_menu">
                      <li class="subject">물리학 2</li>
                      <ul class="small_menu">
                        <li><a href="main_2.jsp">중간고사</a></li>
                        <li><a href="main_2.jsp">퀴즈</a></li>
                        <li><a href="main_2.jsp">기말고사</a></li>
                      </ul>
                    </ul>
                  </td>
                  <td>김두영</td>
                  <td>2021-07-11</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>
                    <ul class="big_menu">
                      <li class="subject">객체지향프로그래밍 1</li>
                      <ul class="small_menu">
                        <li><a href="main_2.jsp">중간고사</a></li>
                        <li><a href="main_2.jsp">퀴즈</a></li>
                        <li><a href="main_2.jsp">기말고사</a></li>
                      </ul>
                    </ul>
                  </td>
                  <td>김태간</td>
                  <td>2021-07-07</td>
                </tr>
              </tbody>
            </table>
            <div id="paging"><br>
              <a href="" class="move_button">첫 페이지</a>
              <a href="" class="move_button">이전 페이지</a>
              <a href="" class="num_button">1</a>
              <a href="" class="num_button">2</a>
              <a href="" class="num_button">3</a>
              <a href="" class="num_button">4</a>
              <a href="" class="move_button">다음 페이지</a>
              <a href="" class="move_button">마지막 페이지</a>
              <br>
            </div>
          </div>
        </div>
    </body>
</html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(".small_menu").hide();
  $(".big_menu").click(function () {
      $("ul", this).slideToggle(200);
  });
</script>
