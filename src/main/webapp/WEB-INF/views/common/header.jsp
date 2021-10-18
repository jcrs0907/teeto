<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header</title>
<style>
    .container {
        max-width: 1440px;
        width: 100%;
        margin: 0 auto;
        background-color: lightpink;
        justify-content: space-between;
        align-items: center;
    }
    .login-menu, .apply-menu{
        display: none;
    }
    header .container{
        display: flex;
    }
    header {
        background-color: black;
    }
    .login {
        align-items: flex-end;
    }
</style>
</head>
<body>
    <header>
        <div class="container">

        <div class="logo">TEETO</div>

        <div class="menu">
            <a>클래스</a>
            <a>멘토</a>
            <a>인기있는클래스</a>
            <a>날짜별클래스</a>
            <a>커뮤니티</a>
        </div>

        <div class="apply-menu">
            <a>멘토 신청하기</a>
            <a>클래스 신청하기</a>
        </div>

        <div class="login">
            <a>로그인</a>
        </div>

        <div class="login-menu">
            <a>마이페이지</a>
            <a>로그아웃</a>
        </div>

        </div>
    </header>
</body>
</html>
