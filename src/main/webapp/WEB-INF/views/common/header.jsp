<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<header id="header" class="header">
    <div class="container">
        <a href="/" class="logo">TEETO</a>
        <ul class="header-menu">
            <li><a href="">클래스</a></li>
            <li><a href="">멘토</a></li>
            <li><a href="">인기있는 클래스</a></li>
            <li><a href="">날짜별 클래스</a></li>
            <li>
                <button data-menu="communityMenu" name="communityBtn">커뮤니티</button>
                <ul id="communityMenu" class="community-menu">
                    <li><a href="">멘티 정기모임/스터디</a></li>
                    <li><a href="">멘토 정보 공유</a></li>
                </ul>
            </li>
            <li><a href="">멘토 신청하기</a></li>
            <li style="display:none;"><a href="">클래스 신청하기</a></li>
        </ul>
        <ul class="member-menu">
            <li><a href="/login">로그인</a></li>
            <li style="display:none;">
                <button data-menu="userMenu" name="userBtn">아이콘</button>
                <ul data-type="userMemu" class="user-menu">
                    <li><a href="">마이페이지</a></li>
                    <li><a href="">로그아웃</a></li>
                </ul>
            </li>
        </ul>
    </div>
</header>