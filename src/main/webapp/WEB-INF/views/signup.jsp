<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form>
    <%--임의의 멤버 아이디 받기--%>
    <div>
        <label class="control-label" for="userMail">이메일</label>
        <input class="form-control" type="text" id="userMail" value="email@email.com" name="userMail" />
    </div>
    <div>
        <label class="control-label" for="userName">성명</label>
        <input class="form-control" type="text" id="userName" value="이름" name="userName" />
    </div>
    <div>
        <%--중복 체크 필요--%>
        <label class="control-label" for="userNickName">닉네임</label>
        <input class="form-control" type="text" id="userNickName" value="닉네임" name="userNickName" />
        <button type="button" id="btnCheckNick">중복 체크</button>
    </div>
    <div>
        <label class="control-label" for="userPass">패스워드</label>
        <input class="form-control" type="password" id="userPass" value="password" name="userPass" />
    </div>

   <div>
       <input type="file" name="file"/>
       <input class="btn btn-primary btn-sm"  type="submit" value="업로드"/>
   </div>
    <div>
        <label><input type="checkbox" name="check1" value="Y" checked> 인증1</label>
        <label><input type="checkbox" name="check2" value="Y" checked> 인증2</label>
    </div>
    <div>
        <button id="btnSignUp" class="btn btn-success" type="submit" id="submit">회원가입</button>
        <button class="btn btn-danger" type="button">취소</button>
    </div>
</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<%--ajax 구현 필요, 구현 후 login--%>
<script>
    <%--자바스크립트 버전 업 필요--%>
    //params 예시
    var signUpParams = {
        param1 : $("#userMail").val(),
        param2 : $("#userName").val(),
        param3 : $("#userNickName").val(),
        param4 : $("#userPass").val(),
        param5 : $("input[name=file]").val(),
        param6 : $("input[name=check1]").val(),
        param7 : $("input[name=check2]").val()
    }

    console.log(signUpParams);

    document.querySelector("#btnSignUp").addEventListener("click", function () {
        $.ajax({
            url: "/register",
            data: JSON.stringify(signUpParams),
            method: 'POST',
            dataType: 'json',
            contentType:'application/json',
            success : function (res) {
                if(res) {
                    alert("가입 성공!");
                }else {
                    alert("가입 실패!");
                }
            },
            error: function (xhr) {
                console.log("error");
            }
        });
    });

</script>
</body>
</html>