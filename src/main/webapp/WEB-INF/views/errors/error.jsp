<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<style type="text/css">
#fo1{
   font-size: 2.1rem;
}

</style>


<title>error</title>
</head>
<body>
<c:import url="${pageContext.request.contextPath }/assets/css/errors/topbar.jsp" />
	

	<div id="fo1">
    <h3>Error Page</h3>
    에러코드 : ${code}
    <br>에외처리 클래스 : ${class}
    <br>에러 메세지 : ${message}
    <br>문제가되는 request uri : ${uri}
    <br>발생한 예외처리 내용 :<br> ${exception}
    <br>에러가 난 서블릿 명 : ${name}
    <br>에러 메시지(원인) : ${msg}
    <br>에러 나는 이유 : ${msg1}

    <br>시간 : ${timestamp}
    
    <br><a href="${pageContext.request.contextPath }/index">메인화면으로가기 </a>   
  </div>
  
<%-- <c:import url="${pageContext.request.contextPath }/assets/css/errors/footer.jsp" /> --%>
	
</body>
</html>

