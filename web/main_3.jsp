<!doctype html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&family=Noto+Sans+KR:wght@100&family=Poor+Story&family=Sunflower:wght@500&display=swap" rel="stylesheet">
        <title>ES 게시판</title>
        <link rel="stylesheet" href="css/testcss.css">
        <style>
          #Main_Info {
            margin : 0px;
            display: grid;
            grid-template-columns: 1fr 800px 1fr ;
            text-align: center;
          }
          #writing-form {
            display: grid;
            grid-template-columns: 90px 1fr 35px 180px;
            height: 60px;
            text-align: left;
          }
          #writing-form .writing-button {
            border: 1px solid whitesmoke;
            color: white;
            background-color: #01579B;
            padding-right: 15px;
            padding-bottom: 7px;
            padding-top: 7px;
            padding-left: 15px;
            text-decoration: none;
            border-radius: 7px;
            font-size: 15px;
            height: 45px;
            cursor: pointer;
          }
          #hidden-form {
            padding: 8px;
          }
          #hidden-form input[type=text] {
            margin-left: 10px;
            width: 110px;
            height : 25px;
            border: 1px solid black;
            border-radius: 5px;
            color: black;
            font-size: 15px;
          }
          #hidden-form-btn{
            background-color: black;
            margin-left: 10px;
            height : 30px;
            border: 1px solid black;
            border-radius: 5px;
            color: white;
            width: 60px;
          }
          #writing-form img {
            padding-top: 8px;
          }
          #search-form {
            padding-top: 8px;
          }
          #search-box{
            height: 25px;
            font-weight: 700;
            border-radius: 7px;
            font-size: 15px;
            width: 160px;
            border: 1px solid black;
            text-align: left;
          }
          #postHead {
            display: grid;
            grid-template-columns: 105px 370px 175px 150px;
            text-align: center;
            border-top: 2px solid #01579B;
            border-bottom: 2px solid #01579B;
            margin : 0px;
            border-collapse: collapse;  /* table의 테두리가 기본2줄인데 1줄로 바꿈 */
            text-align: center;
            font-size: 17px;
          }
          #postHead span{
            padding: 10px;
          }
          .big_menu {
            cursor: pointer;
            font-size: 20px;
          }
          .small_menu a {
            font-size: 15px;
            color: red;
            text-decoration: none;
          }
          .subjectname{
            list-style:none;
            padding-left:0px;
            color: #01579B;
          }
          table{
            width : 100%;  /*해당 칸에서 꽉채워서 표가 차지하게 함*/
            margin : 0px;
            padding : 0px;
            border-collapse: collapse;  /* table의 테두리가 기본2줄인데 1줄로 바꿈 */
            text-align: center;
          }
          tr {
            border-bottom: 1px solid #999; /* 각줄 밑에 회색 선 만듦 */
            display: grid;
            grid-template-columns: 105px 370px 175px 150px;
          }
          .postNum, .professorname, .postDate{
            display: grid;
            place-content: center;
          }
          tr td:nth-child(2) { /* 예외적으로 tbody의 각줄의 2번째 td만 가운데 정렬 */
            text-align: left;
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
                  <li class="everyscore_item"><a href=""><img src="img/outline_face_black_24dp.png" title="내정보" height=30, width=30></a></li>
                  <li class="everyscore_item"><a href="Login_Page.html"><img src="img/outline_logout_black_24dp.png" title="로그아웃" height=30, width=30></a></li>
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
                    <input type="text" name="Subject_name" placeholder="  과목명" required>
                    <input type="text" name="Professor_name" placeholder="  교수명" required>
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
                            <li><a href="main_2.html">중간고사</a></li>
                            <li><a href="main_2.html">퀴즈</a></li>
                            <li><a href="main_2.html">기말고사</a></li>
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
<script type="text/javascript">
// 글작성시 바로 db로 정보 보내고 게시판에 작성되는 코드
  $(document).ready(function(){
    document.getElementById('hidden-form-btn').onclick = function(){
      const request = new XMLHttpRequest();
      request.onreadystatechange = () =>{
          console.log('응답', request.readyState);
          if(request.readyState == 4){
              if(request.status == 200){
                  const jsonData = JSON.parse(request.responseText);

                  let result = '<tr class="menu">';
                  for(let i=0; i<jsonData.length; i++){
                          result += '<td>' + (i+1) + '</td>';
                          result += '<td>'
                                        '<ul class="big_menu">'
                                          '<li class="subjectname">' + jsonData[i].Subject_name + '</li>'
                                          '<ul class="small_menu">'
                                            '<li><a href="main_2.html">중간고사</a></li>'
                                            '<li><a href="main_2.html">퀴즈</a></li>'
                                            '<li><a href="main_2.html">기말고사</a></li>'
                                          '</ul>'
                                        '</ul>'
                                    '</td>';
                          result += '<td class="professorname">' + jsonData[i].Professor_name + '</td>';
                          result += '<td class="postDate">2021-07-07</td>';
                  }
                  result += '</tr>';

                  document.getElementById('result').innerHTML = '';
                  document.getElementById('result').innerHTML = result;
              }else{
                  alert("에러입니다");
              }
          }
      };

      request.open('POST', '/api/v1/board', true);
      request.send();
    };
  });

// 검색기능 구현 코드
  function filter(){
  var searchbox, subjectname, professorname, menu, i;

  searchbox = document.getElementById("search-box").value.toUpperCase();
  menu = document.getElementsByClassName("menu");

  for(i=0; i<menu.length; i++){
    subjectname = menu[i].getElementsByClassName("subjectname");
    professorname = menu[i].getElementsByClassName("professorname");

    if(subjectname[0].innerHTML.toUpperCase().indexOf(searchbox) > -1){
      menu[i].style = "table";
    }
    else if(professorname[0].innerHTML.toUpperCase().indexOf(searchbox) > -1){
      menu[i].style = "table";
    }
    else{
      menu[i].style.display = "none";
    }
  }
}

// 게시판 글 누르면 숨겨둔 메뉴 나오게하는 기능(중간,기말,퀴즈)
  $(".small_menu").hide();
  $(".big_menu").click(function() {
      $("ul", this).slideToggle(200);
  });

// 글작성 누르면 숨겨둔 형식 나오게 하는 기능
  $("#hidden-form").hide();
  $(".writing-button").click(function() {
      $("form").slideToggle(50);
  });



// JSON으로 백엔드에 데이터 전송하는 코드
  $('#hidden-submit-box').click(function(){
    $.ajax({
      url: '/api/v1/start',
      type: 'post',
      dataType: 'JSON',
      data: $('form').serialize(),
      success: function(data){
        window.location.href='main_3.html'
      }
    })
  })
</script>
