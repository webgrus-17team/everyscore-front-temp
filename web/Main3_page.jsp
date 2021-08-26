<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
         <link href="https://fonts.googleapis.com/css2?family=Gaegu:wght@700&family=Poor+Story&family=Rampart+One&display=swap" rel="stylesheet">
        <title>ES 게시판</title>
        <link rel="stylesheet" href="css/top.css">
        <link rel="stylesheet" href="css/Main3_page.css">
    </head>
    <body>
          <nav class="everyscore">
              <div class="everyscore_logo">
                  <a href="Main3_page.jsp"><img src="img/outline_done_outline_black_24dp.png" height=40, width=40>Every Score</a>
              </div>
              <ul class="everyscore_menu">
                  <li class="everyscore_item"><a href="Main3_page.jsp"><img src="img/outline_home_black_24dp.png" title="홈" height=30, width=30></a></li>
                  <li class="everyscore_item"><a href=""><img src="img/outline_face_black_24dp.png" title="내정보" height=30, width=30></a></li>
                  <li class="everyscore_item"><a href="Login_Page.jsp"><img src="img/outline_logout_black_24dp.png" title="로그아웃" height=30, width=30></a></li>
              </ul>
          </nav>
          <h1><strong>게 시 판</strong></h1><br><br>

          <div id="Main_Info">
            <div></div>
            <div>
              <div id="writing-form">
                <div><button class=writing-button>글작성</button></div>
                <div>
                  <form id="hidden-form">
                    >>
                    <input type="text" name="subjectName" placeholder="  과목명" required>
                    <input type="text" name="professorName" placeholder="  교수명" required>
                    <input type="submit" id="hidden-form-btn" value="완료">
                  </form>
                </div>
                <div><img src="img/outline_search_black_24dp.png" title="검색" height=30, width=30></div>
                <div id="search-form">
                  <input id="search-box" type="text" placeholder="  과목명 or 교수명" onkeyup="filter()">
                </div>
              </div>
              <div>
                <div id="postHead">
                  <span class="postTopNum">번호</span>
                  <span class="postTopSubject">과목명</span>
                  <span class="postTopProfessor">교수명</span>
                  <span class="postTopDate"> 작성일</span>
                </div>
                <div style="overflow:scroll; overflow-x:hidden; width:820px; height:500px;">
                <!-- 스크롤 바(가로,세로) 만들고 가로 바(x) 숨김 -->
                  <table id="table">
                    <tr class="menu">
                      <td class="postNum">1</td>
                      <td>
                        <ul class="big_menu">
                          <li class="subjectname">객체지향프로그래밍 1</li>
                          <ul class="small_menu">
                            <li><a href="Main2_page.jsp">중간고사</a></li>
                            <li><a href="Main2_page.jsp">퀴즈</a></li>
                            <li><a href="Main2_page.jsp">기말고사</a></li>
                          </ul>
                        </ul>
                      </td>
                      <td class="professorname">멘토님</td>
                      <td class="postDate">2021-07-07</td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div></div>
          </div>
          <br><br>
      </body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/Main3_page.js"></script>
