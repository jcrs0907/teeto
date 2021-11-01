<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<section class="community-section section">
    <div class="hero-body">
        <div class="container is-max-desktop">
            <div class="community-list community-padding card">
                <div class="notification is-link columns ml-0 mr-0 mt-0 mb-5">
                    <div class="column">
                        <img src="/img/main.png" class="image-full">
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
                        <a href="/community/write" class="button is-link is-rounded">새글 작성</a>
                    </div>
                </div>

                <div class="community-list columns is-multiline ml-0 mr-0 mt-0 mb-7">
                    <a href="/community/detail" class="community-card column is-full">
                        <div class="columns">
                            <div class="column">
                                <ul>
                                    <li class="community-title title-hidden is-size-5 has-text-weight-bold mb-3">제가 짠 코드가 divide conquer 방식으로 풀었는지 알려주세요</li>
                                    <li class="date is-size-7 has-text-grey-light mb-2">2021-10-20</li>
                                </ul>
                            </div>
                            <div class="column is-one-quarter is-flex is-flex-direction-column is-justify-content-space-between" >
                                <div class="ml-auto is-flex is-flex-direction-column is-align-items-center mb-4">
                                    <div class="image user-icon is-64x64 mb-2">

                                    </div>
                                    <span class="is-size-7 has-text-weight-bold">멘토닉네임</span>
                                </div>

                                <div class="has-text-right is-flex is-flex-wrap-wrap is-align-items-center is-justify-content-flex-end">
                                    <div class="button is-small is-link is-outlined is-rounded mr-2">2 댓글</div>
                                    <span class="is-size-7 has-text-black"> 2 조회</span>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="/community/detail" class="community-card column is-full">
                        <div class="columns">
                            <div class="column">
                                <ul>
                                    <li class="community-title title-hidden is-size-5 has-text-weight-bold mb-3">제가 짠 코드가 divide conquer 방식으로 풀었는지 알려주세요</li>
                                    <li class="date is-size-7 has-text-grey-light mb-2">2021-10-20</li>
                                </ul>
                            </div>
                            <div class="column is-one-quarter is-flex is-flex-direction-column is-justify-content-space-between" >
                                <div class="ml-auto is-flex is-flex-direction-column is-align-items-center mb-4">
                                    <div class="image user-icon is-64x64 mb-2">

                                    </div>
                                    <span class="is-size-7 has-text-weight-bold">멘토닉네임</span>
                                </div>

                                <div class="has-text-right is-flex is-flex-wrap-wrap is-align-items-center is-justify-content-flex-end">
                                    <div class="button is-small is-link is-outlined is-rounded mr-2">2 댓글</div>
                                    <span class="is-size-7 has-text-black"> 2 조회</span>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="/community/detail" class="community-card column is-full">
                        <div class="columns">
                            <div class="column">
                                <ul>
                                    <li class="community-title title-hidden is-size-5 has-text-weight-bold mb-3">제가 짠 코드가 divide conquer 방식으로 풀었는지 알려주세요</li>
                                    <li class="date is-size-7 has-text-grey-light mb-2">2021-10-20</li>
                                </ul>
                            </div>
                            <div class="column is-one-quarter is-flex is-flex-direction-column is-justify-content-space-between" >
                                <div class="ml-auto is-flex is-flex-direction-column is-align-items-center mb-4">
                                    <div class="image user-icon is-64x64 mb-2">

                                    </div>
                                    <span class="is-size-7 has-text-weight-bold">멘토닉네임</span>
                                </div>

                                <div class="has-text-right is-flex is-flex-wrap-wrap is-align-items-center is-justify-content-flex-end">
                                    <div class="button is-small is-link is-outlined is-rounded mr-2">2 댓글</div>
                                    <span class="is-size-7 has-text-black"> 2 조회</span>
                                </div>
                            </div>
                        </div>
                    </a>

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
    </div>
</section>