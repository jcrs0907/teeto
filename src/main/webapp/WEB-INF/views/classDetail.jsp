<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<div>
    <p>${classDetail.classId}</p>
    <p>${classDetail.classNm}</p>
    <p>${classDetail.classTitle}</p>
    <p>${classDetail.classDstn}</p>
    <p>${classDetail.classStrtDate}</p>
    <p>${classDetail.classStrtTime}</p>
    <p>${classDetail.classCurrentMte}</p>
    <p>${classDetail.classMaxMte}</p>
    <p>${classDetail.classPlace}</p>
    <p>${classDetail.classCharge}</p>
    <p>${classDetail.mentoId}</p>
    <p>${classDetail.mentoNm}</p>
    <p>${classDetail.mentoDstn}</p>
    <p>${classDetail.classCtgrCdNm}</p>
    <p>${classDetail.classHrgkCtgrCdNm}</p>
    <p>${classDetail.likeCnt}</p>

    --------

    <div>
        <c:forEach var="detail" items="${classDetail.classesDetailList}">
            <p>${detail.classDetailTitle}</p>
            <p>${detail.classDetailFileSeqno}</p>
        </c:forEach>
    </div>


    <div>
        <c:forEach var="process" items="${classDetail.classesProcessList}">
            <p>${process.classProcessTitle}</p>
            <p>${process.classProcessDesc}</p>
        </c:forEach>
    </div>






</div>
</body>
</html>