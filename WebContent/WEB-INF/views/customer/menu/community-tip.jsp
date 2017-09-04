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
              <div id="body">
            <div class="content-container">
               <main id = "main">
                     <div id="main-pont">
                        <h1>돌봄 TIP</h1> 
                        <h3>강아지 돌봄 꿀팁들을 전수해 주세요:)</h3>
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
                              <td>1</td>
                              <td class="left">tip 1</td>
                              <td>이연경</td>
                              <td>100</td>
                           </tr>
                           <tr>
                              <td>2</td>
                              <td class="left">tip 2</td>
                              <td>백지원</td>
                              <td>100</td>
                           </tr>
                           <tr>
                              <td>3</td>
                              <td class="left">tip 3</td>
                              <td>안소정</td>
                              <td>100</td>
                           </tr>
                           <tr>
                              <td>4</td>
                              <td class="left">tip 4</td>
                              <td>손혜린</td>
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