<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style.css" type="text/css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
</head>
<body>

<!--                    헤더  부분                             -->
<jsp:include page="../../inc/header.jsp"></jsp:include>

<div id="visual">
		<div class="content-container"></div>
		<div id="body">
			<div class="content-container">
				<main id="main">
					<div>
						<img src="${path}/images/logo.png" alt="로고" id="edit-logo"/>
					</div>
					<div>
						<ul>
							<li id="edit-pw">비밀번호 확인</li>
							<br/>
							<li id="edit-pw2">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 확인합니다.</li>
							<form id="edit-pw-input">
			                     <!-- <label>비밀번호</label> -->
			                     <input type="text" name="title"/>
		                 	</form>
		                	<input class=" btn login-button" type="submit" value="로그인" />
		                	<li id="edit-pw-find">▶ 비밀번호를 잊으셨다면?</li>
		                	<button class="btn click-button">click</button>
						</ul>
					</div>
				
				</main>
				
			
		<!-- aside  부분 -->
		<jsp:include page="../../../views/customer/member/inc/aside-mypage.jsp"></jsp:include>
	</div>
	</div>
	</div>
	
	<!--                            footer 부분                      -->
	<jsp:include page="../../inc/footer.jsp"></jsp:include>
		
		<script>
		$(function() {
			var Accordion = function(el, multiple) {
				this.el = el || {};
				// more then one submenu open?
				this.multiple = multiple || false;

				var dropdownlink = this.el.find('.dropdownlink');
				dropdownlink.on('click', {
					el : this.el,
					multiple : this.multiple
				}, this.dropdown);
			};

			Accordion.prototype.dropdown = function(e) {
				var $el = e.data.el, $this = $(this),
				//this is the ul.submenuItems
				$next = $this.next();

				$next.slideToggle();
				$this.parent().toggleClass('open');

				if (!e.data.multiple) {
					//show only one menu at the same time
					$el.find('.submenuItems').not($next).slideUp().parent()
							.removeClass('open');
				}
			}

			var accordion = new Accordion($('.accordion-menu'), false);
		})
	</script>

</body>
</html>