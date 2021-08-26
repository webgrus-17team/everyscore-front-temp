<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&family=Poor+Story&family=Rampart+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/Login_Page.css">
    <title>Every Score</title>
  </head>
  <body>
    <div>
      <header>
        <p class="Login_Total_Info">
         <a href="Login_Page.jsp"><img src="img/outline_done_outline_black_24dp.png"  title="Logo" height="50" width="55"></a>
          <strong><a href="Login_Page.jsp">Every Score</a></strong>
        </p>
      </header>
      <form name="Login_Form" action="/api/v1/user" method ="post">
         <div class="id-pw-group">
            <input type="text" name="id" maxlength="20" placeholder="ID" required>
            <input type="password" name="pw" maxlength="20" placeholder="Password" required>
         </div>
         <p><input type="submit" id="Loginbox" value="로그인" length="20"></p>
         <p class="Join_box">Every Score는 처음이야? <a href="Join_Page.jsp">회원가입</a></p>
       </form>
    </div>
  </body>
</html>
