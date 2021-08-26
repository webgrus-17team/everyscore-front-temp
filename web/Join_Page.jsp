<!doctype html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en">
  <head>
     <meta charset="utf-8">
     <link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&family=Poor+Story&family=Rampart+One&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="css/Join_page.css">
     <title>ES 회원가입</title>
  </head>
  <body>
    <header>
        <p class="Login_Total_Info">
         <a href="http://everyScore.co.kr"><img src="img/outline_done_outline_black_24dp.png"  title="Logo" height="50" width="55"></a>
          <strong><a href="Login_Page.jsp">Every Score</a></strong>
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

