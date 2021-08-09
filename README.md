# everyscore-front-temp
jsp로 변경해 서버에 올려 테스트하는 공간입니다.

- tomcat 버전 : tomcat 9.0.34
- 사용할 로컬 포트번호 : 8081
- 현재 적용된 버전 : 2021-08-09 65번째 commit   

### 추가로 변경한 사항

- 연결되는 파일명들 jsp로 변경
- 모든 jsp파일 상단에 utf-8 설정 추가(한글 깨짐 없애기 위해)
- api 주소 앞에 http:localhost:8080/  추가(백엔드 포트번호 8080으로 지정 예정)
- 로그인, 회원가입 페이지는 html form으로 정보를 받을거라, ajax 사용하지 않아도 될 듯

[intellij 톰캣 설정 링크](https://akdl911215.tistory.com/272)