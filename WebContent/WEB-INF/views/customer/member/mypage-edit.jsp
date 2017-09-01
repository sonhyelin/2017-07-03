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
</head>
<body>

<!--                    헤더  부분                             -->
<jsp:include page="../../inc/header.jsp"></jsp:include>

<div id="visual">
		<div class="content-container"></div>
		<div id="body">
			<div class="content-container">
				<main id="main">
				
				나의 페이지 수정하기.
				
				</main>
				
			
				<aside id="aside">
				<br>
					<nav>
						<h1>
							<img src="../../images/sub-head-mypage.png" width="250px"
								height="100px" alt="나의 페이지 수정" />
						</h1>
						<ul class="accordion-menu">
							<li>
								<div class="dropdownlink">회원 정보</div>
								<ul class="submenuItems">
									<li><a href="#">• 정보 조회</a></li>
									<li><a href="#">• 정보 수정</a></li>
									<li><a href="#">• 회원 탈퇴</a></li>
								</ul> 
							</li>
							<li>
								<div class="dropdownlink">나의 후기</div>
								<ul class="submenuItems">
									<li><a href="#">• 후기 조회</a></li>
								</ul>
							</li>
							<li>
								<div class="dropdownlink">나의 찜 상품</div>
								
							</li>

						</ul>
					</nav>
				</aside>
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