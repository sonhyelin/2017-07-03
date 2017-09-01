<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style-admin.css" type="text/css" rel="stylesheet" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<!--                    헤더  부분                             -->
<jsp:include page="../../../views/admin/inc/header.jsp"></jsp:include>

<!--                      visual 부분                           -->
    <jsp:include page="../../../views/admin/inc/visual.jsp"/>

	<div id="body">
		<div class="content-container">
           	<main id="main">
            <div id="main-pont">
               <h1>후기조회페이지1-목록</h1>
                          <br/> 
                           <table class="table-garo">
                           <thread>
                            <tr>
                              <th class="num">번호</th>
                              <th class="food-name">상품명</th>
                              <th class="maker">제조사</th>
                              <th class="title">제목</th>
                              <th class="writer">작성자</th>
                              <th class="admin-read">확인</th>
                              <th class="answer">답변</th>                                                       
                            </tr>
                            </thread>
                            <tbody>
                            <tr>
                              <td>1</td>
                              <td>홀리스틱 베네 M32멀티프로틴</td>
                              <td>내추럴 코어</td>
                              <td class="left">매번 이것만 시켜요!!</td>
                              <td>김아현</td>
                              <td>O</td>
                              <td>완료</td>                          
                           </tr>
                           <tr>
                              <td>2</td>
                              <td>유기농 오리고기 작은 알갱이</td>
                              <td>YangA</td>
                              <td class="left">알갱이가 있어서 강아지들이 좋아해요</td>
                              <td>김양아</td>
                              <td>X</td>
                              <td>미완료</td>
                           </tr>
                           <tr>
                              <td>3</td>
                              <td>치킨 캔</td>
                              <td>cocolove</td>
                              <td class="left">hi2</td>
                              <td>디자인담당</td>
                              <td>O</td>
                              <td>답변중</td>
                           </tr>
                           </tbody>
                         </table>
            </div>
            </main>
			
	<!-- aside  부분 -->
				<jsp:include page="../../../views/admin/review-mng/inc/aside-review-mng.jsp"></jsp:include>

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
	
		<script type="text/javascript">
            $(document).ready(function() {                 
                //전체 선택/해제
                $("#check-all").click(function(){             
                    var chk = $(this).is(":checked");                     
                    if(chk){
                        $('input[name*="check"]').prop('checked', true);
                    }else{
                        $('input[name*="check"]').prop('checked', false);
                    }                     
                });
                 
                //체크 항목 확인
                $("#check").click(function(){                  
                    $('input[name*="check"]').each(function(i){                 
                        if($(this).is(":checked")){
                            alert($(this).val());
                        }
                    });                 
                });                                  
            });
</script>
   
</body>
</html>