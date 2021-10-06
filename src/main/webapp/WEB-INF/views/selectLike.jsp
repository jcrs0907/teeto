<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<c:forEach var="l" items="${likeClassList}">
    <tr>
            ${l.classId}
            ${l.mentoNm}
            ${l.classCtgrCdNm}
            ${l.classHrgkCtgrCdNm}
            ${l.classNm}
            ${l.likeCnt}
    </tr>
</c:forEach>
</body>
</html>