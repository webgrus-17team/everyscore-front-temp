// 페이지 키면 바로 게시판 목록들 뜨게함
    const xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function(){
        console.log('게시판 목록 정상작동', xhttp.readyState);
        // 실행이 되는지 확인용 코드
        if(xhttp.readyState==4 && xhttp.status==200){
          jsonfunc(xhttp.responseText); // 밑에 함수있음
        }else{
          // alert("게시판 로딩 에러");
        }
    }
    xhttp.open("GET", "/api/v1/board", true);
    xhttp.send();

    function jsonfunc(jsonText){
        let jsonData = JSON.parse(jsonText);

        let txt = '';

        for(let i=0; i<jsonData.length; i++){
            txt += '<tr class="menu">' +
                       '<td>' + i + '</td>' +
                       '<td>'+
                           '<ul class="big_menu">' +
                             '<li class="subjectname">' + jsonData[i].subject + '</li>' +
                             '<ul class="small_menu">' +
                                 '<li><a href="Main2_page.html">중간고사</a></li>' +
                                 '<li><a href="Main2_page.html">퀴즈</a></li>' +
                                 '<li><a href="Main2_page.html">기말고사</a></li>' +
                             '</ul>' +
                           '</ul>' +
                        '</td>' +
                        '<td>' + jsonData[i].instructor + '</td>' +
                        '<td>' + jsonData[i].createdDate + '</td>' +
                    '</tr>';
        }
        document.getElementById('table').innerHTML = txt;
    }

// 글 작성시 게시판에 바로 글 추가됨
    $(document).ready(function(){ // 문서가 준비되면 매개변수로 넣은 콜백함수를  실행하라
      document.getElementById('hidden-form-btn').onclick = function(){
          xhttp.onreadystatechange = function(){ // onreadystatechange 이벤트 핸들러 생성
              console.log('글작성 정상작동', xhttp.readyState); // 실행이 되는지 확인용 코드
              if(xhttp.readyState == 4 && xhttp.status == 200){
                        let jsonData = JSON.parse(xhttp.responseText);

                        let result = '';
                        let i = jsonData.length -1;
                        result += '<tr class="menu">' +
                                     '<td>' + i + '</td>' +
                                     '<td>'+
                                         '<ul class="big_menu">' +
                                           '<li class="subjectname">' + jsonData[i].subject + '</li>' +
                                           '<ul class="small_menu">' +
                                               '<li><a href="Main2_page.html">중간고사</a></li>' +
                                               '<li><a href="Main2_page.html">퀴즈</a></li>' +
                                               '<li><a href="Main2_page.html">기말고사</a></li>' +
                                           '</ul>' +
                                         '</ul>' +
                                      '</td>' +
                                      '<td>' + jsonData[i].instructor + '</td>' +
                                      '<td>' + jsonData[i].createdDate + '</td>' +
                                  '</tr>';

                      document.getElementById('table').innerHTML = result;
              }else{
                  //  alert("글작성 에러");
              }
          };

          xhttp.open('GET', '/api/v1/board', true); // 요청 초기화
          xhttp.send(); // 요청을 실행. 기본값은 비동기 요청 직후 즉시 반환.
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
