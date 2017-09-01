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
document.id.action="welcome.html";
document.id.submit();
}
</script>
<link href="${path}/css/style-newmember-join.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<div class="wrapper">
		<div class="main">
			
			<div class="newmember_box">
			
			<!--    <div style =" overflow: auto; height:500px; ">  -->
				<form>
				<div class="logo">
				<img src="../../images/logo.png" alt="" /><br>
			       </div>
					<fieldset>
						<legend>반려견 정보</legend>
						<div class="dogplus">
							<button type="button">반려견 추가</button>
						</div>
						<br> <br>
						<ol>
							<li><label for="dogname">이름</label> <input id="dogname"
								name="dogname" type="text" placeholder="" autofocus="autofocus"
								required></li>
							<li><label for="dogsex">성별</label> <select name="dogsex"
								required>
									<option value="">성별  선택</option>
									<option value="암컷">암컷</option>
									<option value="수컷">수컷</option>
							</select></li>
							<li><label for="birth">생년월일</label> <input id="birth"
								name="birth" type="date" placeholder="" required></li>
							<li><label for="dogsize">사이즈</label> <select name="dogsize"
								required>
									<option value="">사이즈 선택</option>
									<option value="소형견">소형견</option>
									<option value="중형견">중형견</option>
									<option value="대형견">대형견</option>
							</select></li>
							<li><label for="dogkind">견종</label> <input id="dogkind"
								name="dogkind" type="text" placeholder="" required></li>

						</ol>
					</fieldset>

					<br> <br>
					<fieldset id="button">
					<div id="dogbutton">
						<button type="button" onclick="location.href='newmemberjoin.html'">이전으로</button>
						<button type="reset">다시작성</button>
						<button type="submit" >가입완료</button><!-- 나중에 디비연동과 같이 수정 -->
						</div>
					</fieldset>
				</form>
	<!-- 		</div> -->
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