<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
      <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="css/Login_Page.css">
    <title>Every Score</title>
  </head>
  <body>
    <div>
      <header>
        <p class="Login_Total_Info">
         <a href="http://everyScore.co.kr"><img src="img/outline_done_outline_black_24dp.png"  title="Logo" height="50" width="55"></a>
          <strong>Every Score</strong>
        </p>
      </header>
      <form action="http://EveryScore.co.kr" method ="post">
         <div id="container">
           <div id="join">
               <div class="form-group">
                  <input type="text" name="id" placeholder="Username">
               </div>
               <div class="form-group">
                  <input type="password" name="pw" placeholder="Password">
               </div>
               <p><input id="Loginbox" type="button" value="로그인" length="20" onclick = "alert('반갑습니다!')"></p>
               <p class="Join_box"><a href="Join_Page.jsp">회원가입</a></p>
          </div>
        </div>
      </form>

      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script>
        $('#Loginbox').click(funtion(){
          $.ajax({
            url:'/api/v1/user',
            type:'post',
            data:$('form').serialize()
            success:funtion(data){
              if (data==='LoginFail'){
                alert('로그인 정보가 잘못되었습니다.')
              }
              else {
                window.location.href='main_3.jsp';
              }
            }
          })
        })
      </script>
    </div>
  </body>
</html>
