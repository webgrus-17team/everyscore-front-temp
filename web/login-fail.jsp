<!doctype html>
<%@ page contentType="text/html;charset=utf-8" %> <!--한글 깨짐으로 인한 utf-8 추가-->
<html lang="en">
<head>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&family=Noto+Sans+KR:wght@100&family=Poor+Story&family=Sunflower:wght@500&display=swap" rel="stylesheet">
    <title>로그인 오류</title>
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
        #container{
            width: 400px;
            margin: auto;
        }
        strong{
            color: #01579B;
            font-size: 20px;
            font-family: 'Ubuntu', sans-serif;
        }
        *{
            font-family: 'Nanum Gothic', sans-serif;
            font-weight: 900;
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
        tr {
            height : 40px;
        }

    </style>
</head>
<body>
    <div id="container">
        <p><strong>로그인 오류가 발생했습니다. id 혹은 암호를 다시 입력해주세요.</strong></p>
        <p><input type="button" id="Loginbox" value="돌아가기" length="20" onclick="location.href='Login_Page.jsp'"></p>
    </div>
</body>