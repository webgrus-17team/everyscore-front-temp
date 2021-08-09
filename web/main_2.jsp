<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&family=Noto+Sans+KR:wght@100&family=Poor+Story&family=Sunflower:wght@500&display=swap" rel="stylesheet">
        <title>Every Score</title>
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
            left: 230px;
          }
          #submit_box:hover{
            background-color: whitesmoke;
          }
          .write{
            position: absolute;
            top: 40%;
            left: 25%;
            transform: translate(-50%, -50%)
            display: grid;
            grid-template-columns: 1fr 800px 1fr ;
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
          #child1,#child2,#child3,#child4,#child5{
              margin-right: -5px;
              font-weight:700;
              width : 100px;
              height: 40px;
              font-size: 15px;
              border: 2px solid whitesmoke;
          }
          #child1{
              border-right-style: none;
              /* 그라데이션 코드 시작 */
              background: #01771a;
              background: -moz-linear-gradient(left,  #01771a 0%, #62db00 100%);
              background: -webkit-linear-gradient(left,  #01771a 0%,#62db00 100%);
              background: linear-gradient(to right,  #01771a 0%,#62db00 100%);
              filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#01771a', endColorstr='#62db00',GradientType=1 );
              /* 그라데이션 코드 끝 */
          }
          #child2{
              border-right-style: none;
              border-left-style: none;
              /* 그라데이션 코드 시작 */
              background: #62db00;
              background: -moz-linear-gradient(left,  #62db00 0%, #ffff00 100%);
              background: -webkit-linear-gradient(left,  #62db00 0%,#ffff00 100%);
              background: linear-gradient(to right,  #62db00 0%,#ffff00 100%);
              filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#62db00', endColorstr='#ffff00',GradientType=1 );
              /* 그라데이션 코드 끝 */
          }
          #child3{
              border-right-style: none;
              border-left-style: none;
              /* 그라데이션 코드 시작 */
              background: #ffff00;
              background: -moz-linear-gradient(left,  #ffff00 42%, #fc9300 100%, #aa1300 100%, #fc9300 100%);
              background: -webkit-linear-gradient(left,  #ffff00 42%,#fc9300 100%,#aa1300 100%,#fc9300 100%);
              background: linear-gradient(to right,  #ffff00 42%,#fc9300 100%,#aa1300 100%,#fc9300 100%);
              filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffff00', endColorstr='#fc9300',GradientType=1 );
              /* 그라데이션 코드 끝 */
          }
          #child4{
              border-right-style: none;
              border-left-style: none;
              /* 그라데이션 코드 시작 */
              background: #fc9300;
              background: -moz-linear-gradient(left,  #fc9300 28%, #ff0000 100%, #aa1300 100%, #fc9300 100%);
              background: -webkit-linear-gradient(left,  #fc9300 28%,#ff0000 100%,#aa1300 100%,#fc9300 100%);
              background: linear-gradient(to right,  #fc9300 28%,#ff0000 100%,#aa1300 100%,#fc9300 100%);
              filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fc9300', endColorstr='#fc9300',GradientType=1 )
              /* 그라데이션 코드 끝 */
          }
          #child5{
              border-left-style: none;
              /* 그라데이션 코드 시작 */
              background: #ff0000;
              background: -moz-linear-gradient(left,  #ff0000 0%, #aa1300 100%);
              background: -webkit-linear-gradient(left,  #ff0000 0%,#aa1300 100%);
              background: linear-gradient(to right,  #ff0000 0%,#aa1300 100%);
              filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ff0000', endColorstr='#aa1300',GradientType=1 );
              /* 그라데이션 코드 끝 */
          }
          .block{
               width: 500px;
          }
          td {
            width : 200px;
            font-size: 20px;
          }
          tr {
            height : 80px;
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
                <li class="everyscore_item"><a href="main_3.jsp"><img src="img/outline_home_black_24dp.png" title="홈" height=30, width=30></a></li>
                <li class="everyscore_item"><a href=""><img src="img/outline_face_black_24dp.png" title="마이페이지" height=30, width=30></a></li>
                <li class="everyscore_item"><a href=""><img src="img/outline_logout_black_24dp.png" title="로그아웃" height=30, width=30></a></li>
            </ul>
        </nav>
    <h1><strong>점수 입력</strong></h1><br><br><br>
    <div class="write">
      <form name="scorepage" action="http://ManagePage.co.kr" method="post">
        <table border="0">
            <tr>
                <td>내 점수</td> <td class="block"><input type="text" name="score" maxlength="3" autofocus> / 100</td>
              </tr>
              <tr>
                  <td>난이도</td>
                  <td class="block">
                    <button id="child1" type="button">매우 쉬움</button>
                    <button id="child2" type="button">쉬움</button>
                    <button id="child3" type="button">보통</button>
                    <button id="child4" type="button">어려움</button>
                    <button id="child5" type="button">매우 어려움</button>
                  </td>
              </tr>
        </table>
        <br>
        <input id="submit_box" type="submit" value="결과 확인">
      </form>
    </div>
  </body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $('button').on('click', function(event){
    alert('213');
  })
  $('#submit_box').click(funtion(){
    $.ajax({
      url:
      type: 'post',
      data: $('form').serialize(),
      success: funtion(data){
        window.location.href='main_3.jsp';
      }
    })
  })
</script>
