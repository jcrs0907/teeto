<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<section class="section">
    <div class="hero-body">
       <div style="display:none">
           커뮤니티 목록
           상단 (검색, 새글 추가)
           배너
           목록(제목 내용 작성자(프로필) 날짜 조회수)
           고정 메뉴
           내가 쓴 글, 내가 쓴 댓글 - 갯수?
            ------------------------
           커뮤니티 게시글 상세
           제목 내용 작성자 프로필 날짜 조회수 댓글(닉네임 내용 날짜)
            ------------------------
           커뮤니티 새글 추가 페이지
           제목 내용
       </div>
        <div class="container is-max-widescreen">
            <div class="notification is-link columns ml-0 mr-0 mt-0 mb-5">
                <div class="column">
                    <img src="/img/main.png" style="object-fit: contain">
                </div>
                <div class="column is-flex is-flex-direction-column is-justify-content-center">
                   <p class="is-size-4 mb-5 has-text-weight-bold">
                       티토 커뮤니티에서 함께 <br>
                       궁금한 점을 해결해봐요
                   </p>

                    <p class="is-size-6">궁금한 게 생겼거나 함께 의견을 나누고 싶다면? <br>
                        무엇이든 좋아요.</p>
                    <br>
                    <p class="is-size-6">멘티들의 생각을 나눠요!</p>
                </div>
            </div>
            <div class="community-header columns">
               <div class="column">
                   <input class="input is-rounded is-link" type="text" placeholder="작성자, 제목을 검색해주세요">
               </div>
                <div class="column has-text-right">
                    <button class="button is-link is-rounded">새글 작성</button>
                </div>
<%--                내가 쓴 글--%>
            </div>

            <div class="community-list columns is-multiline ml-0 mr-0 mt-0 mb-7">
                <div class="community-card column is-full">
                    <div class="columns ">
                        <div class="column">
                            <ul>
                                <li class="community-title is-size-5 has-text-weight-bold mb-3">제가 짠 코드가 divide conquer 방식으로 풀었는지 알려주세요</li>
                                <li class="date is-size-7 has-text-grey-light mb-2">2021-10-20</li>
                            </ul>
                        </div>
                        <div class="column is-one-quarter is-flex is-flex-direction-column is-justify-content-space-between" >
                            <div class="ml-auto is-flex is-flex-direction-column is-align-items-center mb-2">
                                <div class="user-icon mb-2">

                                </div>
                                <span class="is-size-7">멘토닉네임</span>
                            </div>

                            <div class="has-text-right is-flex is-flex-wrap-wrap is-align-items-center is-justify-content-flex-end">
                                <div class="button is-small is-link is-outlined is-rounded mr-2">2 댓글</div>
                                <span class="is-size-7 has-text-black"> 2 조회</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="community-card column is-full">
                    <div class="columns ">
                        <div class="column">
                            <ul>
                                <li class="community-title is-size-5 has-text-weight-bold mb-3">제가 짠 코드가 divide conquer 방식으로 풀었는지 알려주세요</li>
                                <li class="date is-size-7 has-text-grey-light mb-2">2021-10-20</li>
                            </ul>
                        </div>
                        <div class="column is-one-quarter is-flex is-flex-direction-column is-justify-content-space-between" >
                            <div class="ml-auto is-flex is-flex-direction-column is-align-items-center mb-2">
                                <div class="user-icon mb-2">

                                </div>
                                <span class="is-size-7">멘토닉네임</span>
                            </div>

                            <div class="has-text-right is-flex is-flex-wrap-wrap is-align-items-center is-justify-content-flex-end">
                                <div class="button is-small is-link is-outlined is-rounded mr-2">2 댓글</div>
                                <span class="is-size-7 has-text-black"> 2 조회</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="community-card column is-full">
                    <div class="columns ">
                        <div class="column">
                            <ul>
                                <li class="community-title is-size-5 has-text-weight-bold mb-3">제가 짠 코드가 divide conquer 방식으로 풀었는지 알려주세요</li>
                                <li class="date is-size-7 has-text-grey-light mb-2">2021-10-20</li>
                            </ul>
                        </div>
                        <div class="column is-one-quarter is-flex is-flex-direction-column is-justify-content-space-between" >
                            <div class="ml-auto is-flex is-flex-direction-column is-align-items-center mb-2">
                                <div class="user-icon mb-2">

                                </div>
                                <span class="is-size-7">멘토닉네임</span>
                            </div>

                            <div class="has-text-right is-flex is-flex-wrap-wrap is-align-items-center is-justify-content-flex-end">
                                <div class="button is-small is-link is-outlined is-rounded mr-2">2 댓글</div>
                                <span class="is-size-7 has-text-black"> 2 조회</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <nav class="pagination is-centered pt-6 mt-6" role="navigation" aria-label="pagination">
                <a class="pagination-previous">Previous</a>
                <a class="pagination-next">Next page</a>
                <ul class="pagination-list">
                    <li><a class="pagination-link" aria-label="Goto page 1">1</a></li>
                    <li><span class="pagination-ellipsis">&hellip;</span></li>
                    <li><a class="pagination-link" aria-label="Goto page 45">45</a></li>
                    <li><a class="pagination-link is-current" aria-label="Page 46" aria-current="page">46</a></li>
                    <li><a class="pagination-link" aria-label="Goto page 47">47</a></li>
                    <li><span class="pagination-ellipsis">&hellip;</span></li>
                    <li><a class="pagination-link" aria-label="Goto page 86">86</a></li>
                </ul>
            </nav>
        </div>
    </div>
</section>