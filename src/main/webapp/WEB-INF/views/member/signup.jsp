<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<section class="section hero is-fullheight">
    <div class="hero-body">
        <div class="container">
            <div class="columns is-centered">
                <form class="login-form column">
                    <div class="login-header has-text-centered block">
                        <a href="/" class="login-logo logo">TEETO</a>
                    </div>
                    <div class="field">
                        <label class="label">이름</label>
                        <div class="control">
                            <input class="input" type="text" placeholder="이름을 입력해 주세요.">
                        </div>
                        <p class="help is-success is-invisible">
                            필수 항목 입니다.
                        </p>
                    </div>
                    <div class="field">
                        <label class="label">닉네임(멘티)</label>
                        <div class="control">
                            <input class="input" type="text" placeholder="닉네임을 입력해 주세요.">
                        </div>
                        <p class="help is-success is-invisible">
                            필수 항목 입니다.
                        </p>
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
                        <label class="label is-size-7">인증번호 받기</label>
                        <div class="field is-grouped mb-0">
                            <p class="control is-expanded">
                                <input class="input" type="text" placeholder="인증번호를 입력해 주세요.">
                            </p>
                            <p class="control">
                                <button class="button is-black">
                                    확인
                                </button>
                            </p>
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
                    <button type="submit" class="button is-medium is-black is-fullwidth" disabled>
                        <strong>회원가입 하기</strong>
                    </button>
                </form>
            </div>
        </div>
    </div>
</section>
