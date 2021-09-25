<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<html>
<head>
    <title>멘토</title>
</head>
<body>
<form>
    <%--멤버 아이디 받아오기--%>
    <input type="hidden" id="memId" value="memId">
    <div>
        <label class="control-label" for="mentoNM">멘토 닉네임</label>
        <input class="form-control" type="text" id="mentoNM" value="" name="mentoNM" />
    </div>
    <div>
        <label class="control-label" for="mentoTel">멘토 전화번호</label>
        <input class="form-control" type="text" id="mentoTel" value="" name="mentoTel" />
    </div>
    <div>
        <p>멘토 소개(선택)</p>
        <textarea name="mentoDSTN" id="mentoDSTN" cols="30" rows="10">

        </textarea>
    </div>
    <div>
        <p>멘토 은행</p>
        <select name="" id="mentoBank">
            <option value="신한">신한</option>
            <option value="기업">기업</option>
        </select>
    </div>
    <div>
        <label class="control-label" for="mentoAccount">멘토 계좌</label>
        <input class="form-control" type="text" id="mentoAccount" value="" name="mentoAccount" />
    </div>
    <button id="btnApply">멘토 신청하기</button>

</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    //params 예시
    var mentoParams = {
        memId : $("#memId").val(),
        mentoNm : $("#mentoNM").val(),
        mentoTel : $("#mentoTel").val(),
        mentoDSTN : $("#mentoDSTN").val(),
        mentoBank : $("#mentoBank:selected").val(),
        mentoAccount : $("#mentoAccount").val()
    }

    console.log(mentoParams);

    document.querySelector("#btnApply").addEventListener("click", function () {
        $.ajax({
            url: "/apply",
            data: JSON.stringify(mentoParams),
            method: 'POST',
            dataType: 'json',
            contentType:'application/json',
            success : function (res) {
                console.log("저장");
            },
            error: function (xhr) {
                console.log("실패");
            }
        });
    });

</script>
</body>
</html>