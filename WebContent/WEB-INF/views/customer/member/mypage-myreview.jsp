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

				<aside id="aside">
		   		</br>
		      <nav>
		      	<h1><img src="../../images/sub-head-basicfood.png"  width="250px" height="100px" alt="기본사료"/></h1>
		      	</br>
		      	 <ul class="aside-top-menu">
			         <li><a href="../html/subpage-basic-type.html">회원 정보</a></li>
			         <li class="aside-menu"><a href="">정보 조회</a></li>
			         <li class="aside-menu"><a href="">정보 수정</a></li>
			         <li class="aside-menu"><a href="">회원 탈퇴</a></li>
		         </ul>
		      </nav>
		      <nav>
		         <ul class="aside-top-menu">
		         	</br>
		         	<li><a href="../html/subpage-basic-age.html">나의 후기</a></li>
		            <li class="aside-menu"><a href="">후기 조회</a></li>
		         </ul>
		      </nav>
		      <nav>
		         <ul class="aside-top-menu">
		         	</br>
		         	<li><a href="../html/subpage-basic-size.html">나의 찜 상품</a></li>		     
		         </ul>
		      </nav>
		   </aside>
		 </div>
	</div>


<!--                            footer 부분                      -->
<jsp:include page="../../inc/footer.jsp"></jsp:include>

</body>
</html>