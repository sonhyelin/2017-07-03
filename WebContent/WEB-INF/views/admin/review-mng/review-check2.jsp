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
					<h1>후기조회페이지2-검색결과</h1>
                          <br/> 
                           <table class="table-garo">
                            <tr>
                              <th>선택</th>
                              <th>번호</th>
                              <th width=400px>해당상품명</th>
                              <th>상품 제조사</th>
                              <th>제목</th>
                              <th>작성자</th>
                              <th>관리자읽음</th>
                              <th>답변상태</th>
                            </tr>
                            <tr>
                              <td></td>
                              <td>1</td>
                              <td width=400px>손혜린</td>
                              <td>hand</td>
                              <td>hi</td>
                              <td>손대표</td>
                              <td>ㅇ</td>
                              <td>완료</td>
                           </tr>
                           <tr>
                         	  <td></td>
                              <td>2</td>
                              <td width=400px>김아현</td>
                              <td>YangA</td>
                              <td>hi2</td>
                              <td>김양아</td>
                              <td>ㅇ</td>
                              <td>답변중</td>
                           </tr>
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