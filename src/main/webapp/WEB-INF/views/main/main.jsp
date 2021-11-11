<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<section class="section hero is-fullheight">
    <div class="hero-body">
        <div class="container is-max-widescreen">
            <%--is-variable is-4 is-1-mobile is-0-tablet is-3-desktop is-8-widescreen is-2-fullhd--%>
            <div class="columns ">
                <div class="column">
                    <div class="main-tabs tabs mb-6">
                        <ul>
                            <li class="is-active"><a>클래스 이름으로 찾기</a></li>
                            <li><a>멘토 이름으로 찾기</a></li>
                        </ul>
                    </div>
                    <div class="is-size-1 has-text-black mb-5 has-text-weight-bold">
                        1분 만에 <br>
                        클래스를 찾아드려요
                    </div>
                    <div class="block">
                        <input class="input is-info is-medium" type="text" placeholder="클래스 이름">
                    </div>

                    <div class="category-icon-list columns is-multiline is-4 is-mobile">
                        <div class="column is-one-quarter has-text-centered">
                            <a class="category-btn button is-white">
                                 <span class="icon mr-0 ml-0 mb-2">
                                       <ion-icon name="brush-outline"></ion-icon>
                                    </span>
                                <span class="is-size-7">디자인</span>
                            </a>
                        </div>
                        <div class="column is-one-quarter has-text-centered">
                            <a class="category-btn button is-white">
                                 <span class="icon mr-0 ml-0 mb-2">
                                        <ion-icon name="code"></ion-icon>
                                    </span>
                                <span class="is-size-7">개발</span>
                            </a>
                        </div>
                        <div class="column is-one-quarter has-text-centered">
                            <a class="category-btn button is-white">
                                 <span class="icon mr-0 ml-0 mb-2">
                                        <ion-icon name="restaurant-outline"></ion-icon>
                                    </span>
                                <span class="is-size-7">요리</span>
                            </a>
                        </div>
                        <div class="column is-one-quarter has-text-centered">
                            <a class="category-btn button is-white">
                                 <span class="icon mr-0 ml-0 mb-2">
                                        <ion-icon name="musical-notes-outline"></ion-icon>
                                    </span>
                                <span class="is-size-7">음악</span>
                            </a>
                        </div>
                        <div class="column is-one-quarter has-text-centered">
                            <a class="category-btn button is-white">
                                 <span class="icon mr-0 ml-0 mb-2">
                                        <ion-icon name="american-football-outline"></ion-icon>
                                    </span>
                                <span class="is-size-7">운동</span>
                            </a>
                        </div>
                        <div class="column is-one-quarter has-text-centered">
                            <a class="category-btn button is-white">
                                 <span class="icon mr-0 ml-0 mb-2">
                                        <ion-icon name="camera-outline"></ion-icon>
                                    </span>
                                <span class="is-size-7">사진, 영상</span>
                            </a>
                        </div>
                        <div class="column is-one-quarter has-text-centered">
                            <a class="category-btn button is-white">
                                 <span class="icon mr-0 ml-0 mb-2">
                                        <ion-icon name="card-outline"></ion-icon>
                                    </span>
                                <span class="is-size-7">수익창출</span>
                            </a>
                        </div>
                        <%--<div class="column is-one-quarter has-text-centered">--%>
                            <%--<a class="category-btn button is-white">--%>
                                 <%--<span class="icon mr-0 ml-0 mb-2">--%>
                                        <%--<ion-icon name="code"></ion-icon>--%>
                                    <%--</span>--%>
                                <%--<span class="is-size-7">그래픽 디자인</span>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                    </div>
                </div>
                <div class="main-bg-area column p-0 is-flex is-justify-content-flex-end is-three-fifths">
                    <img src="/img/main.png" style="object-fit: contain">
                </div>
            </div>

        </div>
    </div>
</section>
<section class="section">
    <div class="container is-widescreen">
        <div class="is-flex is-justify-content-space-between is-align-items-center mb-5">
            <h3 class="is-size-4 has-text-weight-bold">
                디자인 카테고리에서 인기있어요! </h3>
            <a href="/" class="is-size-7 has-text-black is-underlined">더보기</a>
        </div>
        <div class="class-columns columns is-desktop is-4">
            <div class="class-column column">
                <div class="class-card card">
                    <div class="class-icon">
                    </div>
                    <div class="class-card-header cate-bg-ds">
                        <span class="cate-badge-shape cate-badge-ds">
                            그래픽디자인
                        </span>
                        <button class="like-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path fill-rule="evenodd" d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z" fill="#fff"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="class-card-content">
                        <ul>
                            <li class="mento-nickname is-size-7">
                                멘토 닉네임
                            </li>
                            <li class="class-title subtitle is-size-5 has-text-weight-bold is-size-4">
                                클래스 제목 최대 2줄 클래스 제목 최대 2줄 클래스 제목 최대 2줄
                            </li>
                            <li class="class-info is-size-7 mb-1">
                                <span class="icon-text">
                                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                                  <span> 성남시 수정구</span>
                                </span>
                                <span class="icon-text">
                                    <span class="icon">
                                        <ion-icon name="calendar-number-outline"></ion-icon>
                                    </span>
                                    <span>2021-03-10 금요일 2시</span>
                                 </span>
                            </li>
                            <li class="class-info is-size-7 has-text-grey-light ">
                              <span class="icon-text">
                                   <span class="icon">
                                        <ion-icon name="person"></ion-icon>
                                   </span>
                                    <span>0 / 10</span>
                              </span>
                              <span class="icon-text">
                                  <span class="icon">
                                      <ion-icon name="heart"></ion-icon>
                                  </span>
                                   <span>10</span>
                              </span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="class-column column">
                <div class="class-card card">
                    <div class="class-icon">
                    </div>
                    <div class="class-card-header cate-bg-ds">
                        <span class="cate-badge-shape cate-badge-ds">
                            그래픽디자인
                        </span>
                        <button class="like-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path fill-rule="evenodd" d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z" fill="#fff"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="class-card-content">
                        <ul>
                            <li class="mento-nickname is-size-7">
                                멘토 닉네임
                            </li>
                            <li class="class-title subtitle is-size-5 has-text-weight-bold is-size-4">
                                클래스 제목 최대 2줄 클래스 제목 최대 2줄 클래스 제목 최대 2줄
                            </li>
                            <li class="class-info is-size-7 mb-1">
                                <span class="icon-text">
                                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                                  <span> 성남시 수정구</span>
                                </span>
                                <span class="icon-text">
                                    <span class="icon">
                                        <ion-icon name="calendar-number-outline"></ion-icon>
                                    </span>
                                    <span>2021-03-10 금요일 2시</span>
                                 </span>
                            </li>
                            <li class="class-info is-size-7 has-text-grey-light ">
                              <span class="icon-text">
                                   <span class="icon">
                                        <ion-icon name="person"></ion-icon>
                                   </span>
                                    <span>0 / 10</span>
                              </span>
                                <span class="icon-text">
                                  <span class="icon">
                                      <ion-icon name="heart"></ion-icon>
                                  </span>
                                   <span>10</span>
                              </span>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
            <div class="class-column column">
                <div class="class-card card">
                    <div class="class-icon">
                    </div>
                    <div class="class-card-header cate-bg-ds">
                        <span class="cate-badge-shape cate-badge-ds">
                            그래픽디자인
                        </span>
                        <button class="like-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path fill-rule="evenodd" d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z" fill="#fff"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="class-card-content">
                        <ul>
                            <li class="mento-nickname is-size-7">
                                멘토 닉네임
                            </li>
                            <li class="class-title subtitle is-size-5 has-text-weight-bold is-size-4">
                                클래스 제목 최대 2줄 클래스 제목 최대 2줄 클래스 제목 최대 2줄
                            </li>
                            <li class="class-info is-size-7 mb-1">
                                <span class="icon-text">
                                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                                  <span> 성남시 수정구</span>
                                </span>
                                <span class="icon-text">
                                    <span class="icon">
                                        <ion-icon name="calendar-number-outline"></ion-icon>
                                    </span>
                                    <span>2021-03-10 금요일 2시</span>
                                 </span>
                            </li>
                            <li class="class-info is-size-7 has-text-grey-light ">
                              <span class="icon-text">
                                   <span class="icon">
                                        <ion-icon name="person"></ion-icon>
                                   </span>
                                    <span>0 / 10</span>
                              </span>
                                <span class="icon-text">
                                  <span class="icon">
                                      <ion-icon name="heart"></ion-icon>
                                  </span>
                                   <span>10</span>
                              </span>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
            <div class="class-column column">
                <div class="class-card card">
                    <div class="class-icon">
                    </div>
                    <div class="class-card-header cate-bg-ds">
                        <span class="cate-badge-shape cate-badge-ds">
                            그래픽디자인
                        </span>
                        <button class="like-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path fill-rule="evenodd" d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z" fill="#fff"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="class-card-content">
                        <ul>
                            <li class="mento-nickname is-size-7">
                                멘토 닉네임
                            </li>
                            <li class="class-title subtitle is-size-5 has-text-weight-bold is-size-4">
                                클래스 제목 최대 2줄 클래스 제목 최대 2줄 클래스 제목 최대 2줄
                            </li>
                            <li class="class-info is-size-7 mb-1">
                                <span class="icon-text">
                                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                                  <span> 성남시 수정구</span>
                                </span>
                                <span class="icon-text">
                                    <span class="icon">
                                        <ion-icon name="calendar-number-outline"></ion-icon>
                                    </span>
                                    <span>2021-03-10 금요일 2시</span>
                                 </span>
                            </li>
                            <li class="class-info is-size-7 has-text-grey-light ">
                              <span class="icon-text">
                                   <span class="icon">
                                        <ion-icon name="person"></ion-icon>
                                   </span>
                                    <span>0 / 10</span>
                              </span>
                                <span class="icon-text">
                                  <span class="icon">
                                      <ion-icon name="heart"></ion-icon>
                                  </span>
                                   <span>10</span>
                              </span>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section mb-6">
    <div class="container is-widescreen">
        <div class="is-flex is-justify-content-space-between is-align-items-center mb-5">
            <h3 class="is-size-4 has-text-weight-bold">
                <span class="cate-bg-dv has-text-white-bis">개발</span> 카테고리에서 인기있어요! </h3>
            <a href="/" class="is-size-7 has-text-black is-underlined">더보기</a>
        </div>
        <div class="class-columns columns is-desktop is-4">
            <div class="class-column column">
                <div class="class-card card">
                    <div class="class-icon">
                    </div>
                    <div class="class-card-header cate-bg-dv">
                        <span class="cate-badge-shape cate-badge-dv">
                            서버 · 백엔드
                        </span>
                        <button class="like-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path fill-rule="evenodd" d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z" fill="#fff"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="class-card-content">
                        <ul>
                            <li class="mento-nickname is-size-7">
                                멘토 닉네임
                            </li>
                            <li class="class-title subtitle is-size-5 has-text-weight-bold is-size-4">
                                클래스 제목 최대 2줄 클래스 제목 최대 2줄 클래스 제목 최대 2줄
                            </li>
                            <li class="class-info is-size-7 mb-1">
                                <span class="icon-text">
                                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                                  <span> 성남시 수정구</span>
                                </span>
                                <span class="icon-text">
                                    <span class="icon">
                                        <ion-icon name="calendar-number-outline"></ion-icon>
                                    </span>
                                    <span>2021-03-10 금요일 2시</span>
                                 </span>
                            </li>
                            <li class="class-info is-size-7 has-text-grey-light ">
                              <span class="icon-text">
                                   <span class="icon">
                                        <ion-icon name="person"></ion-icon>
                                   </span>
                                    <span>0 / 10</span>
                              </span>
                                <span class="icon-text">
                                  <span class="icon">
                                      <ion-icon name="heart"></ion-icon>
                                  </span>
                                   <span>10</span>
                              </span>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
            <div class="class-column column">
                <div class="class-card card">
                    <div class="class-icon">
                    </div>
                    <div class="class-card-header cate-bg-dv">
                        <span class="cate-badge-shape cate-badge-dv">
                            서버 · 백엔드
                        </span>
                        <button class="like-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path fill-rule="evenodd" d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z" fill="#fff"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="class-card-content">
                        <ul>
                            <li class="mento-nickname is-size-7">
                                멘토 닉네임
                            </li>
                            <li class="class-title subtitle is-size-5 has-text-weight-bold is-size-4">
                                클래스 제목 최대 2줄 클래스 제목 최대 2줄 클래스 제목 최대 2줄
                            </li>
                            <li class="class-info is-size-7 mb-1">
                                <span class="icon-text">
                                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                                  <span> 성남시 수정구</span>
                                </span>
                                <span class="icon-text">
                                    <span class="icon">
                                        <ion-icon name="calendar-number-outline"></ion-icon>
                                    </span>
                                    <span>2021-03-10 금요일 2시</span>
                                 </span>
                            </li>
                            <li class="class-info is-size-7 has-text-grey-light ">
                              <span class="icon-text">
                                   <span class="icon">
                                        <ion-icon name="person"></ion-icon>
                                   </span>
                                    <span>0 / 10</span>
                              </span>
                                <span class="icon-text">
                                  <span class="icon">
                                      <ion-icon name="heart"></ion-icon>
                                  </span>
                                   <span>10</span>
                              </span>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
            <div class="class-column column">
                <div class="class-card card">
                    <div class="class-icon">
                    </div>
                    <div class="class-card-header cate-bg-dv">
                        <span class="cate-badge-shape cate-badge-dv">
                            서버 · 백엔드
                        </span>
                        <button class="like-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path fill-rule="evenodd" d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z" fill="#fff"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="class-card-content">
                        <ul>
                            <li class="mento-nickname is-size-7">
                                멘토 닉네임
                            </li>
                            <li class="class-title subtitle is-size-5 has-text-weight-bold is-size-4">
                                클래스 제목 최대 2줄 클래스 제목 최대 2줄 클래스 제목 최대 2줄
                            </li>
                            <li class="class-info is-size-7 mb-1">
                                <span class="icon-text">
                                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                                  <span> 성남시 수정구</span>
                                </span>
                                <span class="icon-text">
                                    <span class="icon">
                                        <ion-icon name="calendar-number-outline"></ion-icon>
                                    </span>
                                    <span>2021-03-10 금요일 2시</span>
                                 </span>
                            </li>
                            <li class="class-info is-size-7 has-text-grey-light ">
                              <span class="icon-text">
                                   <span class="icon">
                                        <ion-icon name="person"></ion-icon>
                                   </span>
                                    <span>0 / 10</span>
                              </span>
                                <span class="icon-text">
                                  <span class="icon">
                                      <ion-icon name="heart"></ion-icon>
                                  </span>
                                   <span>10</span>
                              </span>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
            <div class="class-column column">
                <div class="class-card card">
                    <div class="class-icon">
                    </div>
                    <div class="class-card-header cate-bg-dv">
                        <span class="cate-badge-shape cate-badge-dv">
                            서버 · 백엔드
                        </span>
                        <button class="like-btn">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path fill-rule="evenodd" d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z" fill="#fff"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="class-card-content">
                        <ul>
                            <li class="mento-nickname is-size-7">
                                멘토 닉네임
                            </li>
                            <li class="class-title subtitle is-size-5 has-text-weight-bold is-size-4">
                                클래스 제목 최대 2줄 클래스 제목 최대 2줄 클래스 제목 최대 2줄
                            </li>
                            <li class="class-info is-size-7 mb-1">
                                <span class="icon-text">
                                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                                  <span> 성남시 수정구</span>
                                </span>
                                <span class="icon-text">
                                    <span class="icon">
                                        <ion-icon name="calendar-number-outline"></ion-icon>
                                    </span>
                                    <span>2021-03-10 금요일 2시</span>
                                 </span>
                            </li>
                            <li class="class-info is-size-7 has-text-grey-light ">
                              <span class="icon-text">
                                   <span class="icon">
                                        <ion-icon name="person"></ion-icon>
                                   </span>
                                    <span>0 / 10</span>
                              </span>
                                <span class="icon-text">
                                  <span class="icon">
                                      <ion-icon name="heart"></ion-icon>
                                  </span>
                                   <span>10</span>
                              </span>
                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%--중간배너 1--%>
<section class="hero is-link">
    <div class="hero-body">
        <div class="columns is-desktop is-4">
            <div class="column">
                멘토 신청하기
            </div>
            <div class="column"></div>
            <div class="column"></div>
            <div class="column">링크 이동 버튼</div>
        </div>
    </div>
</section>
<section class="hero-body">
    <div class="container is-max-widescreen">
        <h3 class="title is-4 is-bold">날짜별 클래스 더보기</h3>
        <div class="tile is-ancestor">
            <div class="tile is-parent">
                <div class="tile is-child box">
                    <p class="title">Three</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam semper diam at erat pulvinar, at pulvinar felis blandit. Vestibulum volutpat tellus diam, consequat gravida libero rhoncus ut. Morbi maximus, leo sit amet vehicula eleifend, nunc dui porta orci, quis semper odio felis ut quam.</p>
                    <p>Suspendisse varius ligula in molestie lacinia. Maecenas varius eget ligula a sagittis. Pellentesque interdum, nisl nec interdum maximus, augue diam porttitor lorem, et sollicitudin felis neque sit amet erat. Maecenas imperdiet felis nisi, fringilla luctus felis hendrerit sit amet. Aenean vitae gravida diam, finibus dignissim turpis. Sed eget varius ligula, at volutpat tortor.</p>
                    <p>Integer sollicitudin, tortor a mattis commodo, velit urna rhoncus erat, vitae congue lectus dolor consequat libero. Donec leo ligula, maximus et pellentesque sed, gravida a metus. Cras ullamcorper a nunc ac porta. Aliquam ut aliquet lacus, quis faucibus libero. Quisque non semper leo.</p>
                </div>
            </div>
            <div class="tile is-4 is-vertical is-parent">
                <div class="tile is-child box">
                    <p class="title">One</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare magna eros, eu pellentesque tortor vestibulum ut. Maecenas non massa sem. Etiam finibus odio quis feugiat facilisis.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="hero-body">
    <div class="container is-max-widescreen">
        <div class="columns is-variable is-4 is-1-mobile is-0-tablet is-3-desktop is-8-widescreen is-2-fullhd">
            <div class="column">
                <div style="padding:50px 0; box-sizing: border-box">
                    <h1 class="title is-2">
                        <span>617,425</span> 명이 <br>티토와
                        함께합니다.
                    </h1>
                    <div class="text is-1">
                        학교에서 배우기 어렵거나 큰 비용을 <br>지불해야만 배울 수 있는 전문적인 지식들을 제공합니다.<br>
                        오픈 플랫폼의 이점을 통해 다양성과 경제성을 모두 높입니다.
                    </div>
                </div>
            </div>
            <div class="column" style="position:relative">
                <div style="width: 100%; height: 48px; background: linear-gradient(180deg,hsla(0,0%,100%,0),hsla(0,0%,100%,.72));
    position: absolute; bottom: 0; z-index: 1;"></div>
               <div>
                   <div class="box">
                       상자 안에 있어요.
                   </div>
                   <div class="box">
                       상자 안에 있어요.
                   </div>
                   <div class="box">
                       상자 안에 있어요.
                   </div>
                   <div class="box">
                       상자 안에 있어요.
                   </div>
                   <div class="box">
                       상자 안에 있어요.
                   </div>
               </div>
            </div>
        </div>
    </div>
</section>
<section class="hero-body">
    <div class="container is-max-widescreen">
        This container is <strong>fullwidth</strong> <em>until</em> the <code>$fullhd</code> breakpoint.
    </div>
</section>
