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
					<h1 style="float: left; width: 33%;">상품정보조회</h1>
						<section id="search-form">
							<h1 class="hidden">상품검색</h1>
							<form style="float: left; width: 33%;">
								<br/>
								<div style="float: left; width: 18%;">
									<label class>사료명</label>
								</div >
								<div style="float: left; width: 28%;">
									<input type="text"/>
								</div>
								<div style="float: left; width: 33%;">
									<input id="btn-1" type="submit" value="검색"/>
								</div>
							</form>
						</section>
						<br />
						<br />
						<br />
                           <table class="table-garo">
                            <tr>
                              <th>상품번호</th>
                              <th width=400px>사료명</th>
                              <th>회사명</th>
                              <th>정보등록/수정일</th>
                            </tr>
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
                         </table>
			
				</div>
				</main>
			
	<!-- aside  부분 -->
				<jsp:include page="../../../views/admin/sp-info/inc/aside-sp-info.jsp"></jsp:include>

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