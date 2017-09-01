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
				<div id="main-pont">
					</br>
					<label class="title">마이페이지-회원정보조회</label>
				</div>
				<div>
					<nav>
						<img src="../../images/coco.png" alt="강아지 사진"/>
						<table class="table-sero">
                      	<tr>
                          <th scope="row">아이디</th>
                          <td>cocolove</td>
                      	</tr>
                     	 <tr>
                          <th scope="row">가입자 이름</th>
                          <td>백지원</td>
                      	</tr>
                        <tr>
                          <th scope="row">강아지 이름</th>
                          <td>코코</td>
                      	</tr>
                      	<tr>
                          <th scope="row">강아지 나이</th>
                          <td>8살</td>
                      	</tr>
                      	<tr>
                          <th scope="row">강아지 사이즈</th>
                          <td>중형견</td>
                      	</tr>
                      	<tr>
                          <th scope="row">강아지 종</th>
                          <td>푸들</td>
                      	</tr>
                        <tr>
                          <th scope="row">강아지 성별</th>
                          <td>암컷</td>
                      	</tr>
						</table>
					</nav>
					<nav>
					<table class="table-garo">
                    	<thread>
                            <tr>
                              <th class="num">번호</th>
                              <th class="date" >날짜</th>
                              <th class="content">입력내용</th>
                            </tr>
                        </thread>
                        <tbody>
                            <tr>
                              <td>1</td>
                              <td width=400px>2017-08-24</td>
                              <td>손대표 무셔워,,ㅠㅠ</td>
                           </tr>
                           <tr>
                              <td>2</td>
                              <td width=400px>2017-08-24</td>
                              <td>김아현은 세상 뻔뻔-+-</td>
                           </tr>
                           <tr>
                              <td>3</td>
                              <td width=400px>2017-08-24</td>
                              <td>프로젝트 넘나 어려운것</td>
                           </tr>
                         </tbody>
                        </table>
					</nav>
				</div>
				</main>

				<aside id="aside">
		   		</br>
		      <nav>
		      	<h1><img src="../../images/sub-head-mypage.png"  width="250px" height="100px" alt="기본사료"/></h1>
		      	</br>
		      	 <ul class="aside-top-menu">
			         <li><a href="${path}/html/subpage-basic-type.html">회원 정보</a></li>
			         <li class="aside-menu"><a href="">정보 조회</a></li>
			         <li class="aside-menu"><a href="">정보 수정</a></li>
			         <li class="aside-menu"><a href="">회원 탈퇴</a></li>
		         </ul>
		      </nav>
		      <nav>
		         <ul class="aside-top-menu">
		         	</br>
		         	<li><a href="${path}/html/subpage-basic-age.html">나의 후기</a></li>
		            <li class="aside-menu"><a href="">후기 조회</a></li>
		         </ul>
		      </nav>
		      <nav>
		         <ul class="aside-top-menu">
		         	</br>
		         	<li><a href="${path}/html/subpage-basic-size.html">나의 찜 상품</a></li>		     
		         </ul>
		      </nav>
		   </aside>
		 </div>
	</div>
	</div>
	
	<!--                            footer 부분                      -->
<jsp:include page="../../inc/footer.jsp"></jsp:include>

</body>
</html>