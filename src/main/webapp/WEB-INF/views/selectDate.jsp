<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<c:forEach var="c" items="${classList}">
    <tr>
            ${c.classId}
            ${c.mentoNm}
            ${c.classCtgrCdNm}
            ${c.classHrgkCtgrCdNm}
            ${c.classNm}
            ${c.classDstn}
            ${c.likeCnt}
    </tr>
</c:forEach>
</body>
</html>