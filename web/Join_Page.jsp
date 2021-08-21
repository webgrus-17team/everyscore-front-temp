<!doctype html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&family=Noto+Sans+KR:wght@100&family=Poor+Story&family=Sunflower:wght@500&display=swap" rel="stylesheet">
        <title>ES 회원가입</title>
    <style>
      #container{
        width: 400px;
        margin: auto;
      }
      #join{
        padding: 30px;
        padding-top: 5px;
        border: 2px solid #01579B;
        background-color: white;
        color: gray;
      }
      #submit_box{
        width: 230px;
        height: 57px;
        font-size: 16px;
        background-color: #01579B;
        color: white;
        border-radius: 4px;
        position: absolute;
        left: 40px;
      }
      .gender{
        text-align: center;
        position: relative;
        top: 12px;
      }
      .box{
        width: 230px;
      }
      strong a{
        text-decoration: none;
        color: #01579B;
        font-size: 40px;
        font-family: 'Ubuntu', sans-serif;
      }
      input {
        margin-left: 45px;
        height : 38px;
        border: 1px solid lightgray;
        border-radius: 5px;
        color: gray;
      }
      *{
        font-family: 'Nanum Gothic', sans-serif;
        font-weight: 900;
      }
      body{
        background-color: #F2F2F2;
        width : 400px;
        height: 500px;
        text-align:center;
        position: absolute;
        top: 45%;
        left: 50%;
        transform: translate(-50%, -50%)
      }
      tr {
        height : 40px;
      }

    </style>
  </head>
  <body>
    <header>
        <p class="Login_Total_Info">
         <a href="http://everyScore.co.kr"><img src="img/outline_done_outline_black_24dp.png"  title="Logo" height="50" width="55"></a>
          <strong><a href="Login_Page.html">Every Score</a></strong>
        </p>
    </header>
    <div id="container">
      <div id="join">
       <form name="Join_Form" action="http://ManagePage.co.kr" method="post">
        <table border="0">
          <tr>
            <td>
              <input class="gender" type="radio" name="gender" value="male" required>남자
              <input class="gender" type="radio" name="gender" value="female" required>여자
            </td>
          </tr>
          <tr>
            <td><input class="box" type="text" name="major" placeholder="  학번" required></td>
          </tr>
          <tr>
             <td><input class="box" type="text" name="classnumber" placeholder="  학과" required></td>
          </tr>
          <tr>
             <td><input class="box" type="text" name="name" placeholder="  이름" required></td>
          </tr>
          <tr>
              <td><input class="box" type="date" name="date" required ></td>
          </tr>
          <tr>
             <td><input class="box" type="text" name="id" placeholder="  ID" required></td>
          </tr>
          <tr>
             <td><input class="box" type="password" name="pw" placeholder="  PW" required></td>
          </tr>
          <tr>
             <td><input class="box" type="text" name="email" placeholder="  Email" required></td>
          </tr>
        </table><br>
        <input id="submit_box" type="submit" value="회원 가입"><br><br>
       </form>
     </div>
    </div>
    <br>
  </body>
</html>
