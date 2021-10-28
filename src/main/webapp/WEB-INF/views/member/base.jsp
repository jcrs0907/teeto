<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%--HTML5 선언--%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%--head 추가할 사항 메타 태그 내용--%>
    <tiles:insertAttribute name="head"/>
</head>
<body id="body">
<tiles:insertAttribute name="content" />
</body>
</html>
