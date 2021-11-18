<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<section class="section hero is-fullheight">
    <div class="hero-body">
        <div class="container">
            <div class="columns is-centered">
                <form class="login-form column">
                    <div class="login-header has-text-centered block">
                        <a href="/" class="login-logo logo">TEETO</a>
                        <p class="is-size-7 mt-2 has-text-weight-semibold has-text-grey-dark">멘토가 되면 어떤 일을 할 수 있나요?
                            <a class="is-size-7 is-underlined has-text-weight-semibold has-text-grey-dark">멘토 가이드</a></p>
                    </div>
                    <div class="field">
                        <label class="label">멘토 닉네임</label>
                        <div class="control">
                            <input class="input" type="text" placeholder="멘토 닉네임을 입력해 주세요.">
                        </div>
                        <p class="help is-success is-invisible">
                            필수 항목 입니다.
                        </p>
                    </div>
                    <div class="field">
                        <label class="label">전화번호</label>
                        <div class="control">
                            <input class="input" type="text" placeholder="전화번호를 입력해 주세요.">
                        </div>
                        <p class="help is-danger is-invisible">
                            필수 항목 입니다.
                        </p>
                    </div>

                    <div class="field">
                        <label class="label">멘토 은행</label>
                        <div class="bank-list columns  is-multiline is-desktop is-3 ml-0 mr-0 mt-0 mb-0">
                            <button type="button" class="button column is-half">
                                <img src="/img/bnk.png">
                            </button>
                            <button type="button" class="button column is-half">
                                <img src="/img/gwangju.png">
                            </button>
                            <button type="button" class="button column is-half is-focused">
                                <img src="/img/hana.png">
                            </button>
                            <button type="button" class="button column is-half">
                                <img src="/img/ibk.png">
                            </button>
                            <button type="button" class="button column is-half">
                                <img src="/img/kb.png">
                            </button>
                            <button type="button" class="button column is-half">
                                <img src="/img/mg.png">
                            </button>
                            <button type="button" class="button column is-half">
                                <img src="/img/sc.png">
                            </button>
                            <button type="button" class="button column is-half">
                                <img src="/img/sh.png">
                            </button>
                        </div>
                        <p class="help is-danger is-invisible">
                            필수 항목 입니다.
                        </p>
                    </div>

                    <div class="field">
                        <label class="label">멘토 계좌</label>
                        <P class="is-size-7 has-text-grey-dark mb-4">멘토 수익구조 정보가 궁금하다면? <a href="" class="is-size-7 is-underlined has-text-grey-dark">멘토 수익구조 정보</a></P>
                        <div class="control">
                            <input class="input" type="textarea" placeholder=" '-'없이 숫자만 입력해주세요.">
                        </div>
                        <p class="help is-danger is-invisible">
                            필수 항목 입니다.
                        </p>
                    </div>
                    <div class="field">
                        <label class="label">멘토 소개(선택)</label>
                        <div class="control">
                            <textarea class="textarea" type="textarea" placeholder="여러 가지 문장으로 당신을 소개해주세요." style="resize: none;"></textarea>
                        </div>
                        <p class="help is-danger is-invisible">
                            필수 항목 입니다.
                        </p>
                    </div>

                    <button type="submit" class="button is-medium is-black is-fullwidth">
                        멘토 신청하기
                    </button>
                </form>
            </div>
        </div>
    </div>
</section>