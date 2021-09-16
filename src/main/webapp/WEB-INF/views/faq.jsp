<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>List</title>
</head>
<body>

<h1> Faq </h1>


<div class="container">
    <table class="table table-hover">
        <tr>
            <th>시퀀스</th>
            <th>질문</th>
            <th>답변</th>
        </tr>
        <c:forEach var="l" items="${faqList}">
            <tr>
                <td>${l.faqSeqno}</td>
                <td>${l.faqQuestion}</td>
                <td>${l.faqAnswer}</td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>
