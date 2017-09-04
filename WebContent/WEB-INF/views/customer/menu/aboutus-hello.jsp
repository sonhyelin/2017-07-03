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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<!--                    헤더  부분                             -->
<jsp:include page="../../inc/header.jsp"></jsp:include>
 

 

		<div id="body">
			<div class="content-container">
				<main id="main">
				<div id="main-pont">안녕하세요. 저희 사이트는 이렇습니다.</div>
				</main>
								
			<!-- aside  부분 -->
				<jsp:include page="../../../views/customer/menu/inc/aside-aboutus.jsp"></jsp:include>

				
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
					$el.find('.accordion-menu').not($next).slideUp().parent()
							.removeClass('open');
				}

			}

			var accordion = new Accordion($('.accordion-menu'), false);
		})
	</script>

</body>
</html>