<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%--타일즈 사용시 꼭 선언--%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%--HTML5 선언--%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%--뷰포트의 너비가 웹 사이트를 보고있는 장치와 동일하다는 것을 정의--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>index</title>
    <%-- font --%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">

</head>
<body>
<div id="header"><tiles:insertAttribute name="header" /></div>
<div id="main"><tiles:insertAttribute name="content" /></div>
<div id="footer"><tiles:insertAttribute name="footer" /></div>
</body>
</html>
