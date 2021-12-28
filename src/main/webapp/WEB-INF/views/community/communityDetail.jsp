<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<section class="community-section section">
    <div class="hero-body">
        <div class="container is-max-desktop">

            <div class="community-detail community-padding ml-0 mr-0 mb-6">
                <div class="community-card">
                    <div class="columns">
                        <div class="column">
                            <ul>
                                <li class="community-title is-size-5 has-text-weight-bold mb-3">제가 짠 코드가 divide conquer 방식으로 풀었는지 알려주세요</li>
                                <li class="date is-size-7 has-text-grey-light mb-2">2021-10-20</li>
                            </ul>
                        </div>
                        <div class="column is-one-quarter is-flex is-flex-direction-column is-justify-content-space-between">
                            <div class="ml-auto is-flex is-flex-direction-column is-align-items-center mb-2">
                                <div class="image user-icon is-64x64 mb-2">

                                </div>
                                <span class="is-size-7 has-text-weight-bold">멘토닉네임</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="community-content is-size-6 mb-3 pt-6 pr-5 pl-5 pb-4">
                    여기서 함수 안에 선언한 let startDate = $('#start').val(); << 이 변수를 함수 밖으로 빼면 (function 위로 옮기면) 옳게 실행이 되지 않는데욤.

                    만약 함수를 두개 사용하고 두 함수 모두에 startDate라는 변수를 사용하고 싶을 땐, let startDate 변수를 두 번 선언해야만 하는건가요 ??

                    <img src="/img/main.png" class="community-image mt-4 image-full mb-4">
                </div>
                <div class="has-text-right is-flex is-flex-wrap-wrap is-align-items-center is-justify-content-flex-end pb-6">
                    <div class="button is-small is-link is-outlined is-rounded mr-2">2 댓글</div>
                    <span class="is-size-7 has-text-black"> 2 조회</span>
                </div>
                <button class="button is-ghost is-size-6 has-text-weight-bold has-text-black mb-4 pl-0 pr-0">댓글 접기</button>
                <div class="community-comment-list mb-6 pb-3">
                    <article class="media">
                        <figure class="media-left">
                            <figure class="media-left has-text-centered">
                                <p class="image is-64x64 user-icon mb-2">
                                </p>
                                <span class="is-size-7 has-text-weight-bold">멘토닉네임</span>
                            </figure>
                        </figure>
                        <div class="media-content">
                            <div class="content">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta eros lacus, nec ultricies elit blandit non. Suspendisse pellentesque mauris sit amet dolor blandit rutrum. Nunc in tempus turpis.

                                </p>
                                <p class="date is-size-7 has-text-grey-light has-text-right">2021-10-20</p>
                            </div>
                        </div>
                    </article>
                    <article class="media">
                        <figure class="media-left">
                            <figure class="media-left has-text-centered">
                                <p class="image is-64x64 user-icon mb-2">
                                </p>
                                <span class="is-size-7 has-text-weight-bold">멘토닉네임</span>
                            </figure>
                        </figure>
                        <div class="media-content">
                            <div class="content">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porta eros lacus, nec ultricies elit blandit non. Suspendisse pellentesque mauris sit amet dolor blandit rutrum. Nunc in tempus turpis.
                                </p>
                                <p class="date is-size-7 has-text-grey-light has-text-right">2021-10-20</p>
                            </div>
                        </div>
                    </article>
                </div>

                <article class="media">
                    <figure class="media-left has-text-centered">
                        <p class="image is-64x64 user-icon mb-2">
                        </p>
                        <span class="is-size-7 has-text-weight-bold">멘토닉네임</span>
                    </figure>
                    <div class="media-content">
                        <div class="field">
                            <p class="control">
                                <textarea class="community-textarea textarea" placeholder="댓글을 입력해 주세요"></textarea>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control has-text-right">
                                <button class="button is-small is-link is-rounded">댓글 입력하기</button>
                            </p>
                        </div>
                    </div>
                </article>
            </div>




        </div>
    </div>
</section>