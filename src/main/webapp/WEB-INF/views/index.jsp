<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%--타일즈 사용시 꼭 선언--%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%--HTML5 선언--%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%--head 추가할 사항 메타 태그 내용--%>
    <tiles:insertAttribute name="head"/>
</head>
<body>
<tiles:insertAttribute name="header" />
<tiles:insertAttribute name="content" />
<tiles:insertAttribute name="footer" />
<%--<tiles:insertAttribute name="aside"/>--%>
<%--<tiles:insertAttribute name="mobileMenu"/>--%>
</body>
</html>
