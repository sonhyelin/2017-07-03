<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style-login.css" type="text/css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script>
        $(function() {
            $("#post_content img, .resizablebox").each(function() {
                var oImgWidth = $(this).width();
                var oImgHeight = $(this).height();
                $(this).css({
                    'max-width':oImgWidth+'px',
                    'max-height':oImgHeight+'px',
                    'width':'100%',
                    'height':'100%'
                });
            });
        });
    </script>
</head>
<body style = "height: 100%;">
    <div class="wrapper">
        <div class="main">
            <div class="logo">
                <img src="${path}/images/logo.png"  alt ="로그인"/>
            </div>
           
            <div class="login_box">
            
               <div class="input_login">
                  <input type="id" placeholder="아이디를 입력하세요">
               </div>
               
               <div class="input_login">
                   <input type="password" placeholder="비밀번호를 입력하세요">
               </div>
               
               <div class="check">
                   <label><input type="checkbox">아이디 저장</label>
               </div>
               
               <div class="login">
                  <input type="submit" value="로그인">
               </div>
               
               <div class="last">
                  <div class="join"><a href="newmember-agree">회원가입</a></div>
               <div class="id_password_search"><a href="find-id-pw">아이디 / 비밀번호 찾기</a></div>
               </div>
            </div>
        </div>
    </div>
</body>
</html>