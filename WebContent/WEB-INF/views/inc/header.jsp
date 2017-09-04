<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${path}/css/style.css" type="text/css" rel="stylesheet" />
</head>
<body>

<header id="header">
      <div class="content-container">
         <h1 id="logo">
            <a href="../home/main"><img src="../../images/doglogo.png" width="300px" height="100px"
               alt="PUPPYFOOD101" /></a>
         </h1>

         <section>
            <nav id="main-menu" class="hd-list">
               <ul>
                  <li><a href="../menu/aboutus-hello">
                        ABOUT US</a></li>
                  <li><a href="../menu/basic-type-dry">
                     기본 사료</a></li>
                  <li><a
                     href="../menu/cm-recobasic">
                     맞춤 사료</a></li>
                  <li><a
                     href="../menu/community-free">
                     커뮤니티</a></li>
               </ul>
            </nav>

            <nav id="member-menu"  class="hd-list">
               <ul>
                  <li><a href="../member/login">로그인</a></li>
                  <li><a href="../member/mypage-check">마이페이지</a></li>
                  <!-- <li id="search"><a href=""><img src="images/search.PNG" alt="검색"/></a></li> -->
               </ul>
            </nav>
            
            <section id="search-form">
               <form>
                  <label>검색</label> <input type="text" /> <input type="submit"  value="검색" />
               </form>
            </section>

         </section>
      </div>
   </header>


</body>
</html>