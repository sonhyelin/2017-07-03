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
 
   
 <!--                      visual 부분                           -->
 <jsp:include page="inc/visual-community.jsp"/>
		
    	 <div id="body">
            <div class="content-container">
               <main id = "main">
                     <div id="main-pont">
                        <h1>생활정보</h1> 
                        <h3>생활정보를 공유해요:)</h3>
                        <br/>
                           <table class="table-garo">
                           <thread>
                            <tr>
                              <th class="num">번호</th>
                              <th class="title">제목</th>
                              <th class="writer">작성자</th>
                              <th class="hit">조회수</th>
                            </tr>
                            </thread>
                            <tbody>
                            <tr>
                              <td>1000</td>
                              <td class="left">훈련정보</td>
                              <td>이연경</td>
                              <td>100</td>
                           </tr>
                           <tr>
                              <td>2</td>
                              <td class="left">훈련정보 2</td>
                              <td>백지원</td>
                              <td>100</td>
                           </tr>
                           <tr>
                              <td>3</td>
                              <td class="left">훈련정보 3</td>
                              <td>안소정</td>
                              <td>100</td>
                           </tr>
                           <tr>
                              <td>4</td>
                              <td class="left">용품정보 </td>
                              <td>손혜린</td>
                              <td>100</td>
                           </tr>
                            <tr>
                              <td>5</td>
                              <td class="left">용품정보 2</td>
                              <td>이지영</td>
                              <td>100</td>
                           </tr>
                           <tr>
                              <td>6</td>
                              <td class="left">질병정보</td>
                              <td>김아현</td>
                              <td>100</td>
                           </tr>
                           </tbody>
                         </table>
                     </div>
               </main>
			   
   <!-- aside  부분 -->
 <jsp:include page="../../../views/customer/menu/inc/aside-community.jsp"></jsp:include>
   
		 
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