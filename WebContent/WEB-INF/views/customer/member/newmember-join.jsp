<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<script  type="text/javascript">
function form_submit() {
document.id.action="newmemberjoin-dog.html";
document.id.submit();
}
</script>
<link href="${path}/css/style-newmember-join.css" type="text/css" rel="stylesheet" />
</head>
<body>

	<div class="wrapper">
		<div class="main">
			
			<div class="newmember_box">
			
		<!-- 	   <div style =" overflow: auto; height:500px; position: static;">  -->
				<form>
				<div class="logo">
				<img src="../../images/logo.png" alt="" /><br>
			       </div>
					<fieldset>
						
						<legend>개인 정보</legend>
						<br> <br>
						<ol>
							<li><label for="userid">아이디</label> <input id="userid"
								name="userid" type="text" required>
								<div class="check">
									<button type="button">중복체크</button> <!-- 나중에 디비연동과 같이 수정 -->
								</div></li>
							<li><label for="pwd1">비밀번호</label> <input id="pwd1"
								name="pwd1" type="password" required></li>
							<li><label for="pwd2">비밀번호 확인</label> <input id="pwd2"
								name="pwd2" type="password" required></li>
							<li><label for="username">이름</label> <input id="username"
								name="username" type="text" required autofocus></li>
							<li><label for="birth">생년월일</label> <input id="birth"
								name="birth" type="date" placeholder="" required></li>
							<li><label for="tel">연락처</label> <input id="tel" name="tel"
								type="tel" required autocomplete="off"></li>
							<li><label for="email">메일 주소</label> <input id="email"
								name="email" type="email" required autocomplete="off"></li>

						</ol>
					</fieldset>
				

					<br> <br>
					<fieldset id="button">
					<div id="dogbutton">
						<button type="button" onclick="location.href='newmemberagree.html'">이전으로</button>
						<button type="reset">다시작성</button>
						<button type="submit" >다음으로</button><!-- 나중에 디비연동과 같이 수정 -->
						</div>
					</fieldset>
				</form>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>

		
		</div>
	</div>
	</div>
</body>
</html>