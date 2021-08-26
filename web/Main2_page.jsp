<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&family=Poor+Story&family=Rampart+One&display=swap" rel="stylesheet">
    <title>ES 점수입력</title>
    <link rel="stylesheet" href="css/top.css">
    <link rel="stylesheet" href="css/Main2_page.css">
  </head>
  <body>
      <nav class="everyscore">
        <div class="everyscore_logo">
            <a href="Main3_page.jsp"><img src="img/outline_done_outline_black_24dp.png" height=40, width=40>Every Score</a>
        </div>
        <ul class="everyscore_menu">
          <li class="everyscore_item"><a href="Main3_page.jsp"><img src="img/outline_home_black_24dp.png" title="홈" height=30, width=30></a></li>
          <li class="everyscore_item"><a href=""><img src="img/outline_face_black_24dp.png" title="마이페이지" height=30, width=30></a></li>
          <li class="everyscore_item"><a href="Login_Page.jsp"><img src="img/outline_logout_black_24dp.png" title="로그아웃" height=30, width=30></a></li>
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
<script src="js/Main2_page.js"></script>
