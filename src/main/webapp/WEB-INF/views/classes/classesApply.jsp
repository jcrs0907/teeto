<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<nav class="navbar is-white is-fixed-top is-flex is-align-items-center pl-3 pr-3" role="navigation">
    <span class="logo mr-4">TEETO</span>
    <p class="class-apply-title is-size-6 mr-4">클래스 신청하기</p>
    <span class="class-progress-text is-size-7 has-text-link ">85% 완료</span>
    <button class="button is-light is-small ml-auto">나가기</button>
    <div class="class-progress-bar">
        <span style="transform: translateX(-15%);"></span>
    </div>
</nav>
<section class="section pt-6 pl-0 pr-0 pb-0">
    <div class="teeto-container container columns is-desktop mt-0">
        <aside class="class-apply-list pl-5 pr-5">
            <button class="class-progress-btn button is-white mt-5 mb-4">
                    <span class="class-progress-check">
                        <em class="progress-number">1</em>
                        <svg class="check-icon" xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="none" viewBox="0 0 24 24"><path fill-rule="evenodd" d="M10 18l-6-6 1.5-1.5L10 15l9-9 1.5 1.5L10 18z" fill="#FFF"></path></svg>
                    </span>
                기본 정보
            </button>
            <button class="class-progress-btn button has-text-grey-light is-white mb-4">
                    <span class="class-progress-check ">
                        <em class="progress-number">2</em>
                        <svg class="check-icon" xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="none" viewBox="0 0 24 24"><path fill-rule="evenodd" d="M10 18l-6-6 1.5-1.5L10 15l9-9 1.5 1.5L10 18z" fill="#FFF"></path></svg>
                    </span>
                소개
            </button>
            <button class="class-progress-btn button has-text-grey-light is-white mb-4 completed">
                    <span class="class-progress-check">
                        <em class="progress-number">3</em>
                        <svg class="check-icon" xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="none" viewBox="0 0 24 24"><path fill-rule="evenodd" d="M10 18l-6-6 1.5-1.5L10 15l9-9 1.5 1.5L10 18z" fill="#FFF"></path></svg>
                    </span>
                상세 정보
            </button>
            <button class="class-progress-btn button has-text-grey-light is-white">
                    <span class="class-progress-check ">
                        <em class="progress-number">4</em>
                        <svg class="check-icon" xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="none" viewBox="0 0 24 24"><path fill-rule="evenodd" d="M10 18l-6-6 1.5-1.5L10 15l9-9 1.5 1.5L10 18z" fill="#FFF"></path></svg>
                    </span>
                요약
            </button>
        </aside>
        <main class="class-apply-main column has-background-white">
            <div class="class-apply-step mt-5 mb-5">
                <!-- 기본 정보: 클래스 카테고리, 세부 카테고리, 제목 -->
                <h3 class="title mb-3">간단하게 어떤 클래스인지 알려주세요</h3>
                <p class="is-size-6 mb-6">언젠가 이런 걸 가르쳐봐야지 생각해본 적이 있으신가요? <br> 간단히 멘토님이 알려
                    줄 수 있는 카테고리를 설정해봐요.</p>

                <div class="field mb-6">
                    <label class="label">카테고리</label>

                    <div class="select is-info is-fullwidth">
                        <select>
                            <option>최신순</option>
                            <option>인기순</option>
                        </select>
                    </div>
                </div>
                <div class="field mb-6">
                    <label class="label">세부 카테고리</label>
                    <div class="sub-category-list pb-6">
                        <button class="button cate-badge-shape cate-badge-dv clicked">
                            서버 · 백엔드

                        </button>
                        <button class="button cate-badge-shape">
                            서버 · 백엔드
                        </button>
                    </div>
                    <div class="field">
                        <label class="label">클래스 제목</label>
                        <div class="control">
                            <input class="input" type="text" placeholder="클래스 제목을 입력해 주세요.">
                        </div>
                        <p class="help is-success is-invisible">
                            필수 항목 입니다.
                        </p>
                    </div>
                </div>
            </div>
            <div class="class-apply-step mt-5 mb-5">
                <!-- 소개: 클래스 내용 -->
                <h3 class="title mb-3">어떤 걸 알려주실 수 있나요?</h3>
                <p class="is-size-6 mb-6">클래스를 통해 알려주실 것과 완성할 수 있는 것들을 설명해 주세요.</p>
                <textarea class="textarea" name="" id="" cols="30" rows="10" placeholder="ex. 라탄으로 어디에나 어울릴 타원 트레이 만들기"></textarea>
            </div>
            <div class="class-apply-step mt-5 mb-5">
                <!-- 상세 정보: 클래스 인원, 주소, 금액 -->
                <h3 class="title mb-3">클래스의 정보를 알려주세요.</h3>
                <p class="is-size-6 mb-6">상세 정보를 통해 멘티들에게 클래스 정보를 설명해 주세요.</p>
                <div class="field">
                    <label class="label">클래스 인원</label>
                    <div class="control">
                        <input class="input" type="number" placeholder="클래스 인원을 입력해 주세요.">
                    </div>
                    <p class="help is-success is-invisible">
                        필수 항목 입니다.
                    </p>
                </div>
                <div class="field">
                    <label class="label">클래스 주소</label>
                    <div class="control">
                        <input class="input" type="text" placeholder="클래스 주소을 입력해 주세요.">
                    </div>
                    <p class="help is-success is-invisible">
                        필수 항목 입니다.
                    </p>
                </div>
                <div class="field">
                    <label class="label">클래스 금액</label>
                    <div class="control">
                        <input class="input" type="number" placeholder="클래스 금액을 입력해 주세요.">
                    </div>
                    <p class="help is-success is-invisible">
                        필수 항목 입니다.
                    </p>
                </div>

            </div>
            <div class="class-apply-step mt-5 mb-6">
                <!-- 요약: 클래스 진행 과정을 요약해주세요(타이틀 두개, 설명 두개)
                클래스 설명을 위한 상세 이미지와 설명을 넣어주세요 (이미지, 타이틀) -->
                <h3 class="title mb-3">클래스를 요약해주세요</h3>
                <p class="is-size-6 mb-6">내 클래스를 표현한다면 어떤 문장이 좋을까요? <br> 이미지와 간단한 소개를 통해 효과적으로 클래스를 어필해보세요.</p>
                <div class="field">
                    <label class="label">클래스의 컨셉이 잘 드러난 제목과 이미지를 보여주세요</label>
                    <div class="class-detail-list columns mr-0 ml-0 mt-0 mb-0">
                        <div class="class-detail-item column is-one-third">
                            <div class="class-detail-image-box">
                                <div class="img-upload-area input mb-3">
                                    <label for="img_uploads_0" class="pl-3 pr-3">
                              <span class="image-icon has-text-grey-light is-size-3 icon mb-2">
                                <ion-icon name="image-outline"></ion-icon>
                              </span>
                                        <span class="is-size-6 has-text-centered has-text-grey-light">클래스 주제에 대한 사진</span>
                                    </label>
                                    <input type="file" id="img_uploads_0" name="image_uploads" accept=".jpg, .jpeg, .png">
                                    <div class="preview">
                                        <img src="" alt="">
                                    </div>
                                    <div class="img-option-box pr-2 pt-2">
                                        <button class="img-option-btn button is-small">
                                <span class="icon is-medium">
                                  <ion-icon name="create-outline"></ion-icon>
                                </span>
                                        </button>
                                        <button class="img-option-btn button is-small">
                                <span class="icon is-medium">
                                  <ion-icon name="close-outline"></ion-icon>
                                </span>
                                        </button>
                                    </div>
                                </div>
                                <textarea class="textarea" name="" id="" cols="30" rows="5" placeholder="사진에 대한 설명을 적어주세요"></textarea>
                            </div>
                        </div>
                        <div class="class-detail-item column is-one-third">
                            <div class="class-detail-image-box">
                                <div class="img-upload-area input mb-3">
                                    <label for="img_uploads_1" class="pl-3 pr-3">
                              <span class="image-icon has-text-grey-light is-size-3 icon mb-2">
                                <ion-icon name="image-outline"></ion-icon>
                              </span>
                                        <span class="is-size-6 has-text-centered has-text-grey-light">클래스 주제에 대한 사진</span>
                                    </label>
                                    <input type="file" id="img_uploads_1" name="image_uploads" accept=".jpg, .jpeg, .png">
                                    <div class="preview">
                                        <img src="" alt="">
                                    </div>
                                    <div class="img-option-box pr-2 pt-2">
                                        <button class="img-option-btn button is-small">
                                <span class="icon is-medium">
                                  <ion-icon name="create-outline"></ion-icon>
                                </span>
                                        </button>
                                        <button class="img-option-btn button is-small">
                                <span class="icon is-medium">
                                  <ion-icon name="close-outline"></ion-icon>
                                </span>
                                        </button>
                                    </div>
                                </div>
                                <textarea class="textarea" name="" id="" cols="30" rows="5" placeholder="사진에 대한 설명을 적어주세요"></textarea>
                            </div>
                        </div>
                        <div class="class-detail-item column is-one-third">
                            <div class="class-detail-image-box">
                                <div class="img-upload-area input mb-3">
                                    <label for="img_uploads_2" class="pl-3 pr-3">
                              <span class="image-icon has-text-grey-light is-size-3 icon mb-2">
                                <ion-icon name="image-outline"></ion-icon>
                              </span>
                                        <span class="is-size-6 has-text-centered has-text-grey-light">클래스 주제에 대한 사진</span>
                                    </label>
                                    <input type="file" id="img_uploads_2" name="image_uploads" accept=".jpg, .jpeg, .png">
                                    <div class="preview">
                                        <img src="" alt="">
                                    </div>
                                    <div class="img-option-box pr-2 pt-2">
                                        <button class="img-option-btn button is-small">
                                <span class="icon is-medium">
                                  <ion-icon name="create-outline"></ion-icon>
                                </span>
                                        </button>
                                        <button class="img-option-btn button is-small">
                                <span class="icon is-medium">
                                  <ion-icon name="close-outline"></ion-icon>
                                </span>
                                        </button>
                                    </div>
                                </div>
                                <textarea class="textarea" name="" id="" cols="30" rows="5" placeholder="사진에 대한 설명을 적어주세요"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="field">
                    <label class="label">클래스 진행 과정을 요약해주세요</label>
                    <div class="class-process-list columns mr-0 ml-0 mt-0 mb-0">
                        <div class="class-process-item column is-one-third">
                            <input type="text" class="input mb-3" placeholder="클래스 진행 과정 타이틀을 적어주세요">
                            <textarea class="textarea" name="" id="" cols="30" rows="5" placeholder="클래스 진행 과정을 적어주세요"></textarea>
                        </div>
                        <div class="class-process-item column is-one-third">
                            <input type="text" class="input mb-3" placeholder="클래스 진행 과정 타이틀을 적어주세요">
                            <textarea class="textarea" name="" id="" cols="30" rows="5" placeholder="클래스 진행 과정을 적어주세요"></textarea>
                        </div>
                        <div class="class-process-item column is-one-third">
                            <input type="text" class="input mb-3" placeholder="클래스 진행 과정 타이틀을 적어주세요">
                            <textarea class="textarea" name="" id="" cols="30" rows="5" placeholder="클래스 진행 과정을 적어주세요"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="classes-example">

            </div>
            <nav class="class-apply-footer navbar is-white is-fixed-bottom is-flex is-align-items-center pl-3 pr-3" role="navigation">
                <button class="button is-small">이전</button>
                <button class="button is-small ml-auto">다음</button>
                <button class="button is-small is-link">완료</button>
            </nav>
        </main>
    </div>
</section>