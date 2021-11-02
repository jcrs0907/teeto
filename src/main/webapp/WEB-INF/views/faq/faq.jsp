<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type ="text/css" href="/css/faq.css">
<section class="hero is-dark is-large">
    <div class="hero-body">
        <div class="container has-text-centered">
            <p class="logo is-size-3 has-text-white mb-5">
                TEETO
            </p>
            <p class="is-size-4">
                FAQ 자주 묻는 질문
            </p>
        </div>
    </div>

</section>
<section class="section container is-widescreen ">
    <div class="faq-cate-list columns is-desktop is-multiline  pt-6 pb-0  has-text-centered">
        <div class="column">
            <button data-faq-cd="FAQ01" name="faqLinkBtn" class="faq-link-btn button is-large is-outlined is-active">
                아이콘

                멘토 관련
            </button>
        </div>
        <div class="column">
            <button data-faq-cd="FAQ02" name="faqLinkBtn" class="faq-link-btn button is-large is-outlined">
                클래스 개설
            </button>
        </div>
        <div class="column">
            <button data-faq-cd="FAQ03" name="faqLinkBtn" class="faq-link-btn button is-large is-outlined">
                참여자 가이드
            </button>
        </div>
        <div class="column">
            <button data-faq-cd="FAQ04" name="faqLinkBtn" class="faq-link-btn button is-large is-outlined">
                계정관리
            </button>
        </div>
    </div>
</section>
<div class="section">
    <div class="faq-list container is-widescreen">
    <c:forEach var="l" items="${faqList}">
        <div data-seq="${l.faqSeqno}" class="faq-item message is-dark is-medium open">
            <p class="faq-title message-header has-text-weight-bold">
            ${l.faqQuestion}
            <ion-icon name="chevron-down-outline"></ion-icon>
            </p>
            <p class="faq-content message-body">${l.faqAnswer}</p>
        </div>
        <div data-seq="${l.faqSeqno}" class="faq-item message is-dark is-medium">
            <p class="faq-title message-header has-text-weight-bold">
                    ${l.faqQuestion} 멘토가 되려면 어떻게 해야하나요? 멘토가 되려면 어떻게 해야하나요?
                <ion-icon name="chevron-down-outline"></ion-icon>
            </p>
            <p class="faq-content message-body">${l.faqAnswer}</p>
        </div>
    </c:forEach>
    </div>
</div>


