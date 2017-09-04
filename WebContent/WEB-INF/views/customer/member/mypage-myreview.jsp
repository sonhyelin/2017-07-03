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

<!--                    visual  부분                             -->
<jsp:include page="inc/visual-mypage.jsp"></jsp:include>

		<div id="body">
			<div class="content-container">
				<main id="main">
				</br>
				<h1>마이페이지 - 나의 후기 목록</h1>
				<br/> 
                <table class="table-garo">
                <thread>
	                  <tr>
		                    <th class="num">번호</th>
		                    <th class="content" >후기 내용</th>
		                    <th class="id">작성자</th>
		                    <th class="regdate">작성날짜</th>
	                  </tr>
              	</thread>
             	<tbody>
	                  <tr>
		                    <td>1</td>
		                    <td width=400px>손혜린</td>
		                    <td>hand</td>
		                    <td>2017-08-22</td>
	                 </tr>
	                 <tr>
		                    <td>2</td>
		                    <td width=400px>김아현</td>
		                    <td>YangA</td>
		                    <td>2017-08-22</td>
	                 </tr>
	                 <tr>
		                    <td>3</td>
		                    <td width=400px>백지원</td>
		                    <td>cocolove</td>
		                    <td>2017-08-22</td>
	                 </tr>
             	</tbody>
                </table>
                <section class="button">
                <form>
                	<input type="submit"  value="수정" />
                	<input type="submit"  value="삭제" />
                </form>
                </section>
				</main>

		<!-- aside  부분 -->
		<jsp:include page="../../../views/customer/member/inc/aside-mypage.jsp"></jsp:include>
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