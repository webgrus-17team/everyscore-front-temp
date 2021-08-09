<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&family=Noto+Sans+KR:wght@100&family=Poor+Story&family=Sunflower:wght@500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/testcss.css">
    <title>EveryScore 글작성</title>
    <style>
      body {
           margin: 0;
           background-color: whitesmoke;
      }
      #submit_box {
        width : 370px;
        height: 40px;
        font-size: 17px;
        background-color:#01579B;
        color: white;
        margin-right : 18px;
        border: 0px solid #01579B;
        border-radius: 8px;
        position: absolute;
        left: 10px;
      }
      #submit_box:hover{
                background-color: whitesmoke;
      }
       .write{
        position: absolute;
        top: 40%;
        left: 35%;
        transform: translate(-50%, -50%)
        display: grid;
        grid-template-columns: 1fr 800px 1fr ;
      }
      strong{
            font-family: 'Poor Story', cursive;
            font-size: 27px;
      }
      input {
        height : 40px;
        border: 1px solid black;
        border-radius: 10px;
      }
       h1 {
            color: whitesmoke;
            margin: 0px;
            padding: 50px;
            text-align: center;
            color: white;
            /* 그라데이션 코드 시작 */
            /* Permalink - use to edit and share this gradient: https://colorzilla.com/gradient-editor/#01579b+0,80adc9+100 */
            background: #01579b; /* Old browsers */
            background: -webkit-linear-gradient(left, #01579b 0%, #80adc9 100%);
            background: -o-linear-gradient(left, #01579b 0%, #80adc9 100%);
            background: linear-gradient(to right, #01579b 0%, #80adc9 100%); /* FF3.6-15 */ /* Chrome10-25,Safari5.1-6 */ /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#01579b', endColorstr='#80adc9',GradientType=1 ); /* IE6-9 */
            /* 그라데이션 코드 끝 */
            }
        .test{
            position:relative;
            top: 14px;
        }
      td {
        width : 200px;
      }
      tr {
        height : 70px;
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
                <li class="everyscore_item"><a href=""><img src="img/outline_logout_black_24dp.png" title ="로그아웃" height=30, width=30></a></li>
            </ul>
        </nav>
   <h1><strong>글 작성</strong></h1><br><br><br>
    <div class="write">
      <form name="scorepage" action="http://ManagePage.co.kr" method="post">
        <table border="0">
            <tr>
                <td>교수명</td> <td><input type="text" name="professorname" maxlength="10" placeholder="  ex) 김철수"></td>
              </tr>
             <tr>
                <td>과목명</td> <td><input type="text" name="subjectname" placeholder="  ex) 일반수학1"></td>
              </tr>
          <tr>
            <td>시험종류 </td>
            <td>
              <input class="test" type="radio" name="test" value="midterm_exam">중간
              <input class="test" type="radio" name="test" value="final_exam">기말
              <input class="test" type="radio" name="test" value="QUIZ">퀴즈
            </td>
          </tr>
          <tr>
            <td>만점점수</td> <td><input type="text" name="score" maxlength="3" placeholder="  ex) 100"></td>
          </tr>
        </table>
        <br>
        <input id="submit_box" type="submit" value="완료">
        <br>
        <br>
        <br>
      </form>
    </div>
  </body>
</html>
