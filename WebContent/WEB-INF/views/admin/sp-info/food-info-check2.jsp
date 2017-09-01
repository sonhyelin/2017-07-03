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
					</br>
					<label class="title">전문정보페이지2</label>
					<div style="float: left; width: 33%;">
					<h2>사료정보관리</h2>
					</div>			
					<div>
							<input class="btn edit-button" type="submit" value="수정"/>
							<input class="btn delete-button" type="submit" value="상품삭제"/>
					</div>
					<br />
					<br />
					<br />
						<table class="table-sero">
						    <tr>
						        <th scope="row">상품번호</th>
						        <td>2017957521</td>
						    </tr>
						    <tr>
						        <th scope="row">상품회사명</th>
						        <td>쌍용퍼피</td>
						    </tr>
						      <tr>
						        <th scope="row">대상나이</th>
						        <td>7~9세</td>
						    </tr>
						    <tr>
						        <th scope="row">사료명</th>
						        <td>건강백서 그린 푸드</td>
						    </tr>
						    <tr>
						        <th scope="row">크기</th>
						        <td>소형견</td>
						    </tr>
						    <tr>
						        <th scope="row">체형</th>
						        <td>비만체형</td>
						    </tr>
						      <tr>
						        <th scope="row">피부타입</th>
						        <td>건강한 피부타입</td>
						    </tr>
						      <tr>
						        <th scope="row">건강상태</th>
						        <td>예민한 장 / 면역력 저하</td>
						    </tr>
						      <tr>
						        <th scope="row">상품특징</th>
						        <td>천연 허브 성분으로 인한 장 건강 도움, 양고기 성분으로 면역력 상승</td>
						    </tr>
						      <tr>
						        <th scope="row">원재료</th>
						        <td>양고기, 로즈마리, 키토산</td>
						    </tr>
						      <tr>
						        <th scope="row">사료 권장량</th>
						        <td>종이컵 한 컵(=50g)</td>
						    </tr>
						</table>

						<br />
						<h2>전문가 정보</h2>
								<div class="expert-info">
									전문가 정보입니다.
									</br>
									</br>
									</br>
								    </br>		
								</div>
								
						<div>
							<input class="btn ok-button" type="submit" value="확인"/>
					    </div>
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