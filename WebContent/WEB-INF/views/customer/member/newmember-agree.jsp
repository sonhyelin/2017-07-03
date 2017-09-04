<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<script type="text/javascript">

    function CheckForm(Join){
        
       
       //체크박스 체크여부 확인 [하나]
        var chk1=document.frmJoin.U_checkAgreement1.checked;
        var chk2=document.frmJoin.U_checkAgreement2.checked;
        
        if(!chk1){
            alert('약관1에 동의해 주세요');
            return false;
        } 
        if(!chk2) {
            alert('약관2에 동의해 주세요');
            return false;
        }

        //체크박스 체크여부 확인 [동일 이름을 가진 체크박스 여러개일 경우]
      /*   var isSeasonChk = false;
        var arr_Season = document.getElementsByName("SEASON[]");
        for(var i=0;i<arr_Season.length;i++){
            if(arr_Season[i].checked == true) {
                isSeasonChk = true;
                break;
            }
        }
    
        if(!isSeasonChk){
            alert("계절의 종류를 한개 이상 선택해주세요.");
            return false;
        }

    } */
 </script>
<link href="${path}/css/style-newmember-agree.css" type="text/css" rel="stylesheet" />
</head>
<body>

   <div class="wrapper">
      <div class="main">
         <div class="login_box" style="text-align: center;">
            <h1 class="hidden">PUPPYFOOD101 회원가입</h1>
            <form action="" method="get" id="form1">
               <h2 class="hidden">약관선택</h2>
               <p>
               <div class="logo">
                  <img src="../../images/logo.png" alt="" /><br>
               </div>
               <h3
                  style="line-height: 300%; text-align: center; font-size: 17px; font-weight: bold;">PUPPYFOOD101
                  서비스 약관 동의</h3>
               <div style="text-align: left;">
                  <div class="colbox">
                     <div style="font-weight: bold;">
                        제 1 장 총 칙<br />
                     </div>
                     1. 서비스 이용약관<br />
                     <div style="font-weight: bold;">
                        제 1 조 목 적<br />
                     </div>
                     <div>
                        본 약관은 서비스 이용자가 PUPPYFOOD101(이하 “회사”라 합니다)가 제공하는 온라인상의 인터넷 서비스(이하
                        “서비스”라고 하며, 접속 가능한 유∙무선 단말기의 종류와는 상관없이 이용 가능한 “회사”가 제공하는 모든
                        “서비스”를 의미합니다. 이하 같습니다)에 회원으로 가입하고 이를 이용함에 있어 회사와 회원(본 약관에 동의하고
                        회원등록을 완료한 서비스 이용자를 말합니다. 이하 “회원”이라고 합니다)의 권리•의무 및 책임사항을 규정함을
                        목적으로 합니다.<br /> 1. 서비스 이용약관<br /> 1. 서비스 이용약관<br /> 1. 서비스
                        이용약관<br /> 1. 서비스 이용약관<br /> 1. 서비스 이용약관<br />
                     </div>
                  </div>
                  <div id="a1">
                     <label style="line-height: 300%;"> <input type="checkbox"
                        name="c1" id="c1" required> 이용약관에 동의합니다
                     </label>
                  </div>
                  </p>
                  <p>
                  <h3
                     style="line-height: 300%; font-size: 17px; font-weight: bold; text-align: center;">PUPPYFOOD101
                     개인정보 수집 및 이용 동의</h3>
                  <div class="colbox">
                     PUPPYFOOD101은 아래의 목적으로 개인정보를 수집 및 이용하며, 회원의 개인정보를 안전하게 취급하는데 최선을
                     다합니다.<br /> 1. 수집목적<br /> • 이용자 식별, 원활한 의사소통, 부정이용 시 제재 및 기록<br />
                     • 회원제 서비스 제공, 문의사항 또는 불만 처리, 공지사항 전달<br /> • 신규 서비스 개발, 이벤트 행사 시
                     정보 전달, 마케팅 및 광고 등에 활용<br /> • 서비스 이용 기록 및 통계 분석을 통한 서비스 개선 및 맞춤형
                     서비스 제공 <br /> 2. 수집항목<br /> (필수) 아이디, 비밀번호, 이름, 연락처(휴대폰번호 또는
                     이메일 주소 중 1개 선택)<br /> 3. 보유기간<br /> 수집된 정보는 회원탈퇴 후 지체없이 파기됩니다.<br />
                     2. 개인정보 수집 및 이용에 대한 안내<br /> 2. 개인정보 수집 및 이용에 대한 안내<br /> 2.
                     개인정보 수집 및 이용에 대한 안내<br /> 2. 개인정보 수집 및 이용에 대한 안내<br />
                  </div>
               </div>
               <div id="a2">
                  <label style="line-height: 300%;"> <input type="checkbox"
                     name="c2" id="c2" required> 개인정보 수집 및 이용에 동의합니다.
                  </label>
               </div>
               </p>
               <p>
               <div id="aa" style="line-height: 300%; padding-left: 150px;">
                  <button type="reset">이전</button>
                  <button type="button" onclick="location.href='newmemberjoin.html'";>다음</button>
               </div>

               </p>
               <br> <br> <br> <br> <br>
               <h2 class="hidden">참고문서</h2>
               <ul style="text-align: center;">
                  <li><a href="#">퍼피푸드101 이용약관 동의</a></li>
                  <li><a href="#">개인정보 수집 및 이용에 대한 안내</a></li>
               </ul>
            </form>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
         </div>
      </div>
   </div>
</body>
</html>