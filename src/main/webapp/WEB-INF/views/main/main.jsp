<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<section class="section hero is-fullheight">
    <div class="hero-body">
        <div class="container is-max-widescreen">
            <div class="columns ">
                <div class="column">
                    <div class="main-tabs tabs mb-6">
                        <ul>
                            <li class="is-active"><a class="has-text-weight-bold">클래스 이름으로 찾기</a></li>
                            <li><a class="has-text-weight-bold">멘토 이름으로 찾기</a></li>
                        </ul>
                    </div>
                    <div class="is-size-1 has-text-black mb-5 has-text-weight-bold">
                        1분 만에 <br>
                        클래스를 찾아드려요
                    </div>
                    <div class="block">
                        <input class="input is-link is-medium" type="text" placeholder="클래스 이름">
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
                디자인 카테고리 </h3>
            <a href="/" class="is-size-7 has-text-black">더보기</a>
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
                디자인 카테고리 </h3>
            <a href="/" class="is-size-7 has-text-black">더보기</a>
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
<a class="hero is-black mb-6 mt-6">
    <div class="hero-body has-text-white">
        <div class="container is-max-widescreen">
            <p class="is-size-4 has-text-weight-bold mb-3">
                티토의 멘토가 된다는 것은 <br>
                사랑하는 일을 퍼뜨리는 과정입니다.
            </p>
            <p class="is-size-6  has-text-grey-light mb-5">
                여러분들은 오프라인 클래스 개설로 <br>
                내가 사랑하는 일을 세상 모든 사람들에게 전파할 수 있어요.
            </p>
            <div class="button is-link has-text-weight-bold">멘토 신청하기</div>
        </div>
    </div>
</a>
<section class="hero-body mb-6">
    <div class="container is-max-widescreen">
        <h3 class="is-size-3 has-text-weight-bold mb-6 has-text-centered">오늘의 클래스</h3>
        <div class="has-text-right mb-4">
            <!-- <p class="is-size-6 has-text-black-ter mb-1">내일은 어떤 클래스가 열릴까요?</p> -->
            <a href="" class="is-size-7 has-text-weight-bold">날짜별 클래스 바로가기</a>
        </div>

        <div class="columns is-desktop">
            <div class="column">
                <div id="mainPicker" class="datepicker"></div>
            </div>
            <div class="column">
                <div class="today-class-list">
                    <div class="today-class-header">
                        <div class="columns mt-0 mb-0 ml-0 mr-0 has-background-black has-text-white is-align-items-center is-mobile">
                            <div class="column is-2 is-size-7">카테고리</div>
                            <div class="column is-2 is-size-7 text-hidden">멘토 닉네임</div>
                            <div class="column is-size-7 text-hidden">클래스 제목</div>
                        </div>
                    </div>
                    <a href="" class="today-class-item columns mt-0 mb-0 ml-0 mr-0 is-align-items-center is-mobile">
                        <div class="column is-2 is-size-7">개발 / 서버 · 백엔드</div>
                        <div class="column is-2 is-size-7 text-hidden">
                            멘토 닉네임
                        </div>
                        <div class="column is-size-7 has-text-black text-hidden">
                            클래스 제목 최대 2줄 클래스 제목 최대 2줄 클래스 제목 최대 2줄(3/20)
                        </div>
                    </a>

                </div>
            </div>
        </div>
    </div>
</section>
<section class="hero-body has-background-light pt-6 pb-6" style="display: none">
    <div class="container is-max-widescreen">
        <div class="review-section columns is-variable is-6 is-1-mobile is-0-tablet is-3-desktop is-8-widescreen is-2-fullhd">
            <div class="column pt-6 pb-6 has-text-right-desktop">
                <h1 class="title is-2">
                    <span>617,425</span> 명이 <br>티토와
                    함께합니다.
                </h1>
                <div class="text is-1">
                    학교에서 배우기 어렵거나 큰 비용을 지불해야만 배울 수 있는 전문적인 지식들을 제공합니다.
                    오픈 플랫폼의 이점을 통해 다양성과 경제성을 모두 높입니다.
                </div>
            </div>
            <div class="review-list column is-6" style="ㅌposition:relative">
                <div class="review-item box">
                    <p class="mb-2">쉽게 설명해 주셔서 감사합니다</p>
                    <p class="has-text-right is-size-7">**님</p>
                </div>
                <div class="review-item box">
                    <p class="mb-2">좋아요 좋아요.</p>
                    <p class="has-text-right is-size-7">**님</p>

                </div>
                <div class="review-item box">
                    <p class="mb-2">너무 너무 좋아요. 내용이 꽉 차네요.</p>
                    <p class="has-text-right is-size-7">**님</p>

                </div>
                <div class="review-item box">
                    <p class="mb-2">드디어 결제해서 강의를 듣는 중입니다!
                        많은 진도를 나가지는 않았지만 목소리나 진행하는 흐름 전부 다 맘에 드네요ㅎㅎ 빨리 진도 다 뺀다음 여기서 배운걸 기반으로 새로운 컨텐츠를 개발하고 싶습니다</p>
                    <p class="has-text-right is-size-7">**님</p>
                </div>
                <div class="review-item box">
                    <p class="mb-2">너무 좋은 강의입니다. 다시 듣고 싶을 정도입니다.
                        강의를 보며 쉬운 설명과 좋은 내용으로 많은 도움이 되었습니다</p>
                    <p class="has-text-right is-size-7">**님</p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="hero mt-6 mb-6">
    <div class="hero-body">
        <a class="container is-max-widescreen is-block pt-6 pb-6">
            <p class="is-size-4 has-text-black has-text-weight-bold mb-3">
                누구나 클래스에 참여할 수 있나요? <br>
                그럼요! 누구나 클래스에 참여할 수 있습니다.
            </p>
            <p class="is-size-6  has-text-black-ter mb-4">
                강의 경험 없음, 비전문가 <br>
                클래스 내용을 아예 몰라도 가능합니다.
            </p>
            <div class="button is-black has-text-weight-bold">클래스 둘러보기</div>
        </a>
    </div>
</section>
    <script>
    var mainPicker = new Datepickk({
        container: document.querySelector('#mainPicker'),
        inline: true,
        range: false,
        tooltip: false,
        today:false,
        locked:true
    });
    mainPicker.selectDate(new Date());
</script>