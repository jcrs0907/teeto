<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="class-section section mt-6">
    <div class="teeto-container container columns is-desktop">
        <aside class="category-list column menu is-4 pb-4" >
<%--        <c:out value="${classes.classCtgrCd}" default=""/>--%>
<%--        <c:out value="${classes.classDetailCtgrCd}" default=""/>--%>
<%--        <c:out value="${classList}" default=""/>--%>

        <%--카테고리 리스트와 카테고리 클래스 카운트--%>
        <%--클래스 카테고리와 상세 카테고리가 널일 경우 전체 코스 선택--%>
        <%--클래스 카테고리가 있고 data.classCtgrCd가 같은 경우 clicked--%>
            
        <c:set var="totalCount" value="${0}" />
        <c:forEach var="data" items="${cateList}">
            <c:set var="totalCount" value="${totalCount + data.cateCount}" />
        </c:forEach>
            <a href="/class/list" class="category-btn button cate-bg-all <c:if test="${null eq classes.classCtgrCd}">has-background-black clicked</c:if>">
                <span class="category-text">전체 코스</span>
                <em class="category-count is-size-7">${totalCount}</em>
            </a>
            <c:forEach var="data" items="${cateList}" varStatus="status">
                <a href="/class/list/${data.classCtgrCd}" data-cate-type="${data.classCtgrCd}"
                   class="category-btn button <c:if test="${classes.classCtgrCd eq data.classCtgrCd}">has-background-black clicked</c:if>">
                    <span class="category-text">${data.classCtgrCdNm}</span>
                    <em class="category-count is-size-7">${data.cateCount}</em>
                </a>
            </c:forEach>
        </aside>
        <main class="class-list column">
            <%--classes.classCtgrCd가 널이 아닐 때 타이틀만 받아오기--%>
            <h1 class="class-category-title title mb-5">
                <c:if test="${null eq classes.classCtgrCd}">전체 코스</c:if>
                <c:forEach var="data" items="${cateList}" varStatus="status">
                    <c:if test="${classes.classCtgrCd eq data.classCtgrCd}">${data.classCtgrCdNm}</c:if>
                </c:forEach>
            </h1>
            <div class="notification is-black mb-5">
                날짜별로 클래스를 검색하고 싶다면?
                <br><br>
                <a href=""><ion-icon name="arrow-forward-outline"></ion-icon>날짜별 클래스 바로가기</a>
            </div>
            <div class="class-option-list is-flex is-align-items-center pb-4">
                <input class="class-search-input input is-info is-rounded" type="text" placeholder="클래스 이름">
                <div class="class-filter-select ml-auto">
                    <div class="select is-info is-rounded ml-auto">
                        <select>
                            <option>최신순</option>
                            <option>인기순</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="sub-category-list pb-6">
                <c:if test="${null ne classes.classCtgrCd}">
                    <a href="/class/list/${classes.classCtgrCd}" class="button cate-badge-shape <c:if test="${null eq classes.classDetailCtgrCd}">has-background-black clicked</c:if>">
                       전체
                    </a>
                </c:if>
                <c:forEach var="data" items="${subCateList}" varStatus="status">
                    <a href="/class/list/${classes.classCtgrCd}/${data.classCtgrCd}" class="button cate-badge-shape <c:if test="${classes.classDetailCtgrCd eq data.classCtgrCd}">has-background-black clicked</c:if>">
                            ${data.classCtgrCdNm}
                    </a>
                </c:forEach>
            </div>

            <%--전체 클래스가 없을 떄, 선택한 카테고리 클래스가 없을 때 구분하기--%>
            <div class="class-columns columns is-desktop is-4">
                <c:choose>
                    <c:when test = "${0 eq totalCount}">
                        클래스 없어
                    </c:when>
                    <c:when test = "${0 ne totalCount && 0 < totalCount}">
                        <c:if test="${empty classList}">
                            ㅠㅠ 클래스 없어
                        </c:if>
                        <c:if test="${!empty classList}">
                            <c:forEach var="data" items="${classList}" varStatus="status">
                                <div class="class-column column">
                                    <a href="/class/detail/${data.classId}" target="_blank" class="class-card card">
                                        <div class="class-icon">
                                       <span class="icon">
                                        <c:if test="${data.classHrgkCtgrCdNm eq 'DS'}">
                                            <ion-icon name="brush-outline"></ion-icon>
                                        </c:if>
                                        <c:if test="${data.classHrgkCtgrCdNm eq 'CK'}">
                                            <ion-icon name="restaurant-outline"></ion-icon>
                                        </c:if>
                                        <c:if test="${data.classHrgkCtgrCdNm eq 'DV'}">
                                            <ion-icon name="code"></ion-icon>
                                        </c:if>
                                        <c:if test="${data.classHrgkCtgrCdNm eq 'EC'}">
                                            <ion-icon name="american-football-outline"></ion-icon>
                                        </c:if>
                                        <c:if test="${data.classHrgkCtgrCdNm eq 'MN'}">
                                            <ion-icon name="card-outline"></ion-icon>
                                        </c:if>
                                        <c:if test="${data.classHrgkCtgrCdNm eq 'MS'}">
                                            <ion-icon name="musical-notes-outline"></ion-icon>
                                        </c:if>
                                        <c:if test="${data.classHrgkCtgrCdNm eq 'PT'}">
                                            <ion-icon name="camera-outline"></ion-icon>
                                        </c:if>
                                       </span>
                                        </div>

                                        <div class="class-card-header">
                                        <span class="cate-badge-shape">
                                                ${data.classCtgrCdNm}
                                        </span>
                                            <button class="like-btn">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                                    <path fill-rule="evenodd" d="M1.5 8.824C1.5 5.607 3.962 3 7 3c2.5 0 4 1.5 5 3 1-1.5 2.5-3 5-3 3.038 0 5.5 2.607 5.5 5.824C22.5 14.827 16.684 18.52 12 21 7.316 18.52 1.5 14.827 1.5 8.824z" fill="#eaeaea"></path>
                                                </svg>
                                            </button>
                                        </div>
                                        <div class="class-card-content">
                                            <ul>
                                                <li class="mento-nickname is-size-7">
                                                        ${data.mentoNm}
                                                </li>
                                                <li class="class-title subtitle is-size-5 has-text-weight-bold is-size-4">
                                                        ${data.classNm}
                                                </li>
                                                <li class="class-info is-size-7 mb-1">
                                                        <%--                                            <span class="icon-text">--%>
                                                        <%--                                                <span class="icon"><ion-icon name="home-outline"></ion-icon></span>--%>
                                                        <%--                                              <span> 성남시 수정구</span>--%>
                                                        <%--                                            </span>--%>
                                                    <span class="icon-text">
                                                <span class="icon">
                                                    <ion-icon name="calendar-number-outline"></ion-icon>
                                                </span>
                                                <span>${data.classStrtDate}</span>
                                             </span>
                                                </li>
                                                    <%--                                            <li class="class-info is-size-7 has-text-grey-light ">--%>
                                                    <%--                                              <span class="icon-text">--%>
                                                    <%--                                                   <span class="icon">--%>
                                                    <%--                                                        <ion-icon name="person"></ion-icon>--%>
                                                    <%--                                                   </span>--%>
                                                    <%--                                                    <span>0 / 10</span>--%>
                                                    <%--                                              </span>--%>
                                                    <%--                                             <span class="icon-text">--%>
                                                    <%--                                                  <span class="icon">--%>
                                                    <%--                                                      <ion-icon name="heart"></ion-icon>--%>
                                                    <%--                                                  </span>--%>
                                                    <%--                                                   <span>10</span>--%>
                                                    <%--                                              </span>--%>
                                                    <%--                                            </li>--%>
                                            </ul>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </c:if>
                    </c:when>
                </c:choose>

            </div>
        </main>
    </div>
</section>
<script>

</script>