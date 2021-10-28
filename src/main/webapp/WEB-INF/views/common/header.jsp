<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<header class="header" style="display:none">
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
            <li>
                <button data-menu="userMenu" name="userBtn">아이콘</button>
                <ul id="userMenu" class="user-menu">
                    <li><a href="">마이페이지</a></li>
                    <li><a href="">로그아웃</a></li>
                </ul>
            </li>
        </ul>
    </div>
</header>
<nav  id="header" class="navbar is-white is-fixed-top" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="/">
            <span class="logo">TEETO</span>
        </a>

        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a class="navbar-item">
                클래스
            </a>

            <a class="navbar-item">
                멘토
            </a>
            <a class="navbar-item">
                인기있는 클래스
            </a>
            <a class="navbar-item">
                날짜별 클래스
            </a>
            <a class="navbar-item is-hidden-desktop">
                커뮤니티 - 멘티 정기모임/스터디
            </a>
            <a class="navbar-item is-hidden-desktop">
                커뮤니티 - 멘토 정보 공유
            </a>
            <div class="navbar-item has-dropdown is-hoverable is-hidden-mobile is-hidden-tablet-only">
                <div class="navbar-link is-arrowless">
                    커뮤니티
                </div>

                <div class="navbar-dropdown is-boxed">
                    <a class="navbar-item">
                        멘티 정기모임/스터디
                    </a>
                    <a class="navbar-item">
                        멘토 정보 공유
                    </a>
                </div>
            </div>
        </div>

        <div class="navbar-end">
            <a class="navbar-item is-hidden-desktop">
                멘토 신청하기
            </a>
            <a class="navbar-item is-hidden-desktop">
                클래스 신청하기
            </a>
            <a href="/login" class="navbar-item is-hidden-desktop">
                로그인
            </a>
            <a class="navbar-item is-hidden-desktop">
                마이페이지
            </a>
            <a class="navbar-item is-hidden-desktop">
                로그아웃
            </a>
            <div class="navbar-item is-hidden-mobile is-hidden-tablet-only">
                <div class="buttons">
                    <a class="button is-black">
                        <strong>멘토 신청하기</strong>
                    </a>
                    <a class="button is-black">
                        <strong>클래스 신청하기</strong>
                    </a>
                    <a href="/login" class="button is-white">
                        로그인
                    </a>
                </div>
            </div>
            <div class="navbar-item has-dropdown is-hoverable is-hidden-mobile is-hidden-tablet-only">
                <div class="navbar-link is-arrowless">
                    <span class="user-icon icon" style="font-size:30px">
                         <ion-icon name="happy-outline"></ion-icon>
                    </span>

                </div>

                <div class="navbar-dropdown is-boxed is-right">
                    <a class="navbar-item">
                        마이페이지
                    </a>
                    <a class="navbar-item">
                        로그아웃
                    </a>

                </div>
            </div>
        </div>
    </div>
</nav>
