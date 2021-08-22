<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
    <title>Every Score</title>
    <style>
       #Loginbox{
         width: 316px;
         height: 55px;
         font-size: 18px;
         background-color:#01579B;
         color: white;
         border: 10px solid #01579B;
         border-radius: 10px;
       }
       .Join_box{
         font-size: 15px;
         text-align: center;
       }
       .Join_box a{
         font-size: 17px;
       }
       .id-pw-group input[type=text],
       .id-pw-group input[type=password]{
         width: calc(80%);
         padding: 15px;
         font-size: 18px;
         border: 1px solid gray;
         border-radius: 10px;
       }
       *{
        font-family: 'Nanum Gothic', sans-serif;
       }
       body{
         background-color: whitesmoke;
         width : 350px;
         text-align: center;
         position: absolute;
         top: 45%;
         left: 50%;
         transform: translate(-50%, -50%)
       }
       a{
         text-decoration: none;
         color: blue;
       }
       strong a{
         color: #01579B;
         font-size: 40px;
         font-family: 'Ubuntu', sans-serif;
       }
    </style>
  </head>
  <body>
    <div>
      <header>
        <p class="Login_Total_Info">
         <a href="Login_Page.jsp"><img src="img/outline_done_outline_black_24dp.png"  title="Logo" height="50" width="55"></a>
          <strong><a href="Login_Page.jsp">Every Score</a></strong>
        </p>
      </header>
      <form name="Login_Form" action="http://localhost:8080/api/v1/user" method ="post">
         <div class="id-pw-group">
            <input type="text" name="id" maxlength="20" placeholder="ID" required>
            <input type="password" name="pw" maxlength="20" placeholder="Password" required>
         </div>
         <p><input type="submit" id="Loginbox" value="로그인" length="20"></p>
         <p class="Join_box">Every Score는 처음이야? <a href="Join_Page.jsp"> 회원가입</a></p>
       </form>
    </div>
  </body>
</html>
