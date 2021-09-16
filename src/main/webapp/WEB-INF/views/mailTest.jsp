<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Mail</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>

<h1> EmailTest </h1>

<div class="container">
    이메일 : <input type="text" id="email">
    <button id="sendEmail">발송</button>
</div>

<script>
    $(document).ready(function(){
        $("#sendEmail").on('click', function(){
            $.ajax( {
                url : "/auth/sendMail",
                data : {'email':$("#email").val() } ,
                type : 'post' ,
                dataType : 'json',
                success :  function(serverdata){
                    alert(serverdata.process);
                },
                error:function() {
                    alert("send mail failed");
                }
            } );//ajax
        });//on
    });//ready
</script>
</body>
</html>
