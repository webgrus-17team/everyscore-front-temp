<!doctype html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&family=Noto+Sans+KR:wght@100&family=Poor+Story&family=Sunflower:wght@500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/testcss.css">
        <title>Every Score 회원가입</title>
    <style>
      #submit_box {
        width : 370px;
        height: 45px;
        font-size: 18px;
        background-color:#01579B;
        color: white;
        border-radius: 7px;
        position: absolute;
        left: 40px;
      }
      .birthday_box {
        width: 47px;
        height: 32px;
        border: 1px solid black;
        border-radius: 5px;
      }
      .birthday_select_box{
        width: 50px;
        height: 35px;
        border: 1px solid black;
        border-radius: 5px;
      }
      .write{
        position: absolute;
        top: 30%;
        left: 35%;
        transform: translate(-50%, -50%)
        display: grid;
        grid-template-columns: 1fr 800px 1fr ;
        padding: 30px;
      }
      strong{
            font-family: 'Poor Story', cursive;
            font-size: 27px;
      }
      input {
        height : 35px;
        border: 1px solid black;
        border-radius: 5px;
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
      .gender{
            position:relative;
            top: 12px;
        }
      td {
        width : 200px;
        height: 70px;
      }
      tr {
        height : 40px;
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
   <h1><strong>회원 가입</strong></h1>
    <div class="write">
      <form name="Join_Total_Information" action="http://ManagePage.co.kr" method="post">
        <table border="0">
          <tr>
            <td>성별 </td>
            <td>
              <input class="gender" type="radio" name="gender" value="male">남자
              <input class="gender" type="radio" name="gender" value="female">여자
            </td>
          </tr>
          <tr>
            <td>생년월일</td>
            <td>
              <input type="text" class="birthday_box" name="birthday_year" maxlength="4" placeholder=" 년(4자)">
              <select class="birthday_select_box" name="birthday_month" >
                <option> 월</option>
                <option value="01">1</option>
                <option value="02">2</option>
                <option value="03">3</option>
                <option value="04">4</option>
                <option value="05">5</option>
                <option value="06">6</option>
                <option value="07">7</option>
                <option value="08">8</option>
                <option value="09">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
              </select>
              <input type="text" class="birthday_box" name="birthday_day" maxlength="2" placeholder=" 일">
            </td>
          <tr>
            <td>학번</td> <td><input type="text" name="major" placeholder="  ex) 12202538"></td>
          </tr>
          <tr>
            <td>학과</td> <td><input type="text" name="classnumber" placeholder="  ex) 컴퓨터공학"></td>
          </tr>
          <tr>
            <td>이름</td> <td><input type="text" name="username" placeholder="  ex) 홍길동"></td>
          </tr>
          <tr>
            <td>아이디</td> <td><input type="text" name="id" placeholder="  ex) stu123"></td>
          </tr>
          <tr>
            <td>비밀번호</td> <td><input type="password" name="pw" placeholder="  ********"></td>
          </tr>
          <tr>
            <td>이메일</td> <td><input type="email" name="email" placeholder="  ex) stu123@naver.com"></td>
          </tr>
        </table>
        <br>
        <input id="submit_box" type="submit" value="완료">
        <br>
        <br>
        <br>
      </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $(#submit_box).click(funtion(){
        $.ajax({
          url:'http:/localhost:8080/api/v1/join',
          type:'post',
          data: $('form').serialize(),
          success: funtion(data){
            if (data==='JoinFail'){
              alert('미입력된 회원가입 정보가 존재합니다.')
            }
            else {
              window.location.href='Login_Page.jsp'
            }
          }
        })
      })
    </script>
  </body>
</html>
