<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
//window.alert("간단한 메시지");
//window.confirm("간단한 메시지");
//window.prompt("간단한 메시지" + "입력란의 기본 메시지");

function alertDialogBox() {
    alert("확인을 누를 때까지 다른 작업을 할 수 없어요!");
    setTimeout("1", 1);
}
function confirmDialogBox() {

    var str;

    if (confirm("확인이나 취소를 눌러주세요!") == true) {
    	alert("확인(예)을 누르셨습니다.");
        str = "당신은 확인을 눌렀습니다!";

    } else {

        str = "당신은 취소을 눌렀습니다!";

    }

    document.getElementById("text").innerHTML = str;

}

function promptDialogBox() {

    var inputStr = prompt("당신의 이름을 입력해 주세요 : ", "홍길동");
    if (inputStr != null) {

        document.getElementById("text").innerHTML = "당신의 이름은 " + inputStr + "입니다.";
		alert(text);
    }

}

function startTimeout() {

    setTimeout(printCurrentDate, 2000);

}

function printCurrentDate() {

    document.getElementById("date").innerHTML = new Date();

}

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
<fmt:formatDate var="year" value="${now }" pattern="yyyy"/>

<p>Current year : ${year}</p>
<p>Previous year : ${year -1}</p>

<c:if test="${param.loginFail eq 'true'}">
  <div class="login-fail">아이디 혹은 비밀번호가 일치하지 않습니다.</div>
</c:if>
<input type="button" onclick="confirmDialogBox()" value="클릭confirm">
<input type="button" onclick="alertDialogBox()" value="클릭alert">
<input type="button" id="text" onclick="promptDialogBox()" value="클릭prompt" > 
<input type="text" id="date" value="date">

</body>
</html>

