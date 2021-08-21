<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&family=Noto+Sans+KR:wght@100&family=Poor+Story&family=Sunflower:wght@500&display=swap" rel="stylesheet">
    <title>ES 점수입력</title>
    <link rel="stylesheet" href="css/testcss.css">
    <style>
      #submit_box {
        width : 200px;
        height: 40px;
        font-size: 15px;
        background-color:#01579B;
        color: white;
        margin-right : 5px;
        border: 0px solid #01579B;
        border-radius: 7px;
        position: absolute;
      }
      #submit_box:hover{
        background-color: whitesmoke;
      }
      #child1 {
        margin-right: -5px;
        font-weight:700;
        width : 600px;
        height: 20px;
        font-size: 15px;
        border: 2px solid whitesmoke;
        /* 그라데이션 */
        background: #0fbf0f;
        background: -moz-linear-gradient(left,  #0fbf0f 1%, #fff714 51%, #e50000 100%);
        background: -webkit-linear-gradient(left,  #0fbf0f 1%,#fff714 51%,#e50000 100%);
        background: linear-gradient(to right,  #0fbf0f 1%,#fff714 51%,#e50000 100%);
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#0fbf0f', endColorstr='#e50000',GradientType=1 );
      }
      #Group_level {
        font-size: 13px;
      }
      #Group_level input{
        margin-left: 55px;
      }
      #Group_level .level_button{
        margin-left: 40px;
        position:relative;
        top: 5px;
      }
      .write{
        display: grid;
        grid-template-columns: 1fr 720px 1fr;
      }
      .left_td {
        width: 100px;
      }
      p{
        margin: 6px;
      }
      strong{
        font-size: 40px;
        font-family: 'Ubuntu', sans-serif;
      }
      input {
        height : 20px;
        width:30px;
        border: 1px solid black;
        border-radius: 3px;
      }
      td {
        width : 200px;
        font-size: 20px;
      }
      tr {
        height : 120px;
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
            <a href="main_3.html"><img src="img/outline_done_outline_black_24dp.png" height=40, width=40>Every Score</a>
        </div>
        <ul class="everyscore_menu">
          <li class="everyscore_item"><a href="main_3.html"><img src="img/outline_home_black_24dp.png" title="홈" height=30, width=30></a></li>
          <li class="everyscore_item"><a href=""><img src="img/outline_face_black_24dp.png" title="마이페이지" height=30, width=30></a></li>
          <li class="everyscore_item"><a href="Login_Page.html"><img src="img/outline_logout_black_24dp.png" title="로그아웃" height=30, width=30></a></li>
        </ul>
      </nav>

      <h1><strong>점수 입력</strong></h1><br><br><br>

      <div class="write">
        <div></div>
        <div>
          <form name="scorepage">
            <table border="0">
              <tr>
                <td class="left_td">내 점수</td> <td><input type="text" name="myscore" maxlength="3" autofocus required> / 100</td>
              </tr>
              <tr>
                <td class="left_td">난이도</td>
                <td>
                  <p><button id="child1" type="button"></button></p>
                  <p id="Group_level">
                    <input class="level_button" type="radio" name="level" value="very_easy" required>매우 쉬움
                    <input class="level_button" type="radio" name="level" value="easy" required>쉬움
                    <input class="level_button" type="radio" name="level" value="midium" required>보통
                    <input class="level_button" type="radio" name="level" value="difficult" required>어려움
                    <input class="level_button" type="radio" name="level" value="very_difficult" required>매우 어려움
                  </p>
                </td>
              </tr>
              <tr>
                <td></td> <td><input id="submit_box" type="submit" value="결과 확인"></td>
              </tr>
            </table>
          </form>
        </div>
        <div></div>
      </div>
  </body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $("#submit_box").click( function() {
    $.ajax({
      url: '/api/v1/input',
      type: 'post',
      data: $('form').serialize(),
      dataType: 'json',
      success: function(data){
        window.location.href='Result_Page.html';
      }
    })
  })
</script>
