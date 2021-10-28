<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<section class="section hero is-fullheight">
    <div class="hero-body">
        <div class="container">
            <div class="columns is-centered">
                <form class="login-form column">
                    <div class="login-header has-text-centered block">
                        <a href="/" class="login-logo logo">TEETO</a>
                        <p class="is-size-7 mt-2 has-text-weight-semibold has-text-grey-dark">회원이 아니신가요?
                            <a href="/signup" class="is-size-7 is-underlined has-text-weight-semibold has-text-grey-dark">회원가입하기</a></p>
                    </div>
                    <div class="field">
                        <label class="label">이메일</label>
                        <div class="control">
                            <input class="input" type="email" placeholder="이메일을 입력해 주세요.">
                        </div>
                        <p class="help is-success is-invisible">
                            필수 항목 입니다.
                        </p>
                    </div>
                    <div class="field">
                        <label class="label">비밀번호</label>
                        <div class="control">
                            <input class="input" type="text" placeholder="비밀번호를 입력해 주세요.">
                        </div>
                        <p class="help is-danger is-invisible">
                            필수 항목 입니다.
                        </p>
                    </div>
                    <button type="submit" class="button is-medium is-black is-fullwidth">
                        <strong>로그인 하기</strong>
                    </button>
                    <button type="submit" class="button is-medium is-black is-fullwidth  is-loading">
                        <strong>로그인 하기</strong>
                    </button>

                    <div class="login-footer has-text-centered mb-6 pb-4">
                        <p class="is-size-7 mt-4 has-text-weight-semibold has-text-grey-dark">비밀번호를 잊으셨나요?
                            <a href="/" class="is-size-7 is-underlined has-text-weight-semibold has-text-grey-dark">비밀번호 찾기</a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
