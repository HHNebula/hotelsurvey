## 🏨 L4 Hotel JEJU 🏨  
![Generic badge](https://img.shields.io/badge/Java-yellow.svg)  ![Generic badge](https://img.shields.io/badge/Survlet-blue.svg)  ![Generic badge](https://img.shields.io/badge/JSP-red.svg)  ![Generic badge](https://img.shields.io/badge/JDBC-skyblue.svg)  ![Generic badge](https://img.shields.io/badge/Bootstrap-purple.svg) ![Generic badge](https://img.shields.io/badge/CSS-yellowgreen.svg) ![Generic badge](https://img.shields.io/badge/HTML-green.svg) 
![Generic badge](https://img.shields.io/badge/VisualStudioCode-orange.svg)
![Generic badge](https://img.shields.io/badge/MySQL-skyblue.svg)
![Generic badge](https://img.shields.io/badge/Tomecat-gree.svg)  
###  Project Team NAME : 개발팀 🐾
-----------------------  

### ⚙️ 구현 화면  
- [User Page]   
<img width="40%" src="./docs/img/userpage.gif">

- [Admin Page]   
<img width="40%" src="./docs/img/adminpage.gif">  

### ✈️ 소개 
JEJU L4 Hotel Survey 은 호텔의 서비스 품질향상을 위해 설문조사 및 통계 기능을 가지고 있습니다.  
User와 Staff의 사용 목적 및 관리를 고려하여 UserPage와 AdminPage를 나누어 구현하였습니다.  
Survey 제출 중복 방지를 위해서 UserPage 가입 회원 대상으로 ID,PW,CheckIN의 유효성 검사를 진행 하며 CheckIN 기록 건당 1개의 Survey를 제공합니다.  
Survey 필수 입력란 미입력 시 사용자에게 알람을 주어 설문/회원가입/로그인/ID,PW찾기 등의 필수 입력란을 놓치지 않고 오타와 미입력을 방지합니다.  
호텔 staff는 admin Page에 인증된 ID&PW 로 Login 후 회원조회/예약조회/설문조회 권한을 확인 할 수 있습니다. 이를 통해 staff는 호텔 회원의 정보 및 예약 관리와 설문 통계확인이 가능합니다.  

### 🛠 기능 요약  
UserPage와 AdminPage가 분리되어있습니다.  

### - UserPage  
1. [SingUp] User의 입력 값을 통한 회원가입 & 중복방지 구현

2. [Log in&Out] 가입한 ID/PW로 Log in&Out 기능 & Login상태에 따른 동적 상태 구현

2. [Survey] Check_IN 날짜 유효성 검증을 통한 Survey 중복 방지 구현 & Survey DB연결 및 출력 구현 
      
3.  [Statistics] 전체 Survey 제출 건의 항목별 응답 갯수 Statistics 구현 

2.  [Home&Navbar] Login 상태에 따른 동적 화면 및 전체 메뉴 이동 구현    

### - AdminPage  

1. [Admin Log in&Out] 등록된 Admin ID/PW로 Log in&Out 기능 & Login상태에 따른 동적 화면 구현

2. [UserStatus] 가입한 전체 User 회원 정보 조회 구현 

3. [Reservation]  전체 User의 예약 현황 조회 구현 

4. [Statistics] 전체 Survey 제출 건의 항목별 응답 갯수 Statistics 구현 

-----------------------

### ⏰ 개발 기간
2022년 12월 27일 ~ 2023년 1월 1일  

### 📌 Technical stack  
![Generic badge](https://img.shields.io/badge/Java-yellow.svg)  ![Generic badge](https://img.shields.io/badge/Survlet-blue.svg)  ![Generic badge](https://img.shields.io/badge/JSP-red.svg)  ![Generic badge](https://img.shields.io/badge/JDBC-skyblue.svg)  ![Generic badge](https://img.shields.io/badge/Bootstrap-purple.svg) ![Generic badge](https://img.shields.io/badge/CSS-yellowgreen.svg) ![Generic badge](https://img.shields.io/badge/HTML-green.svg) 
![Generic badge](https://img.shields.io/badge/VisualStudioCode-orange.svg)
![Generic badge](https://img.shields.io/badge/MySQL-skyblue.svg)
![Generic badge](https://img.shields.io/badge/Tomecat-gree.svg)                

### 🔍<개발팀> 멤버 한줄 소개  
   
### 👨‍💻 하성수(팀장)  

팀원 업무분담 , 전체 코드리뷰    
ERD, SQL, ddl, dml  
User&Admin Page Log in&out 여부에 따른 동적 nav 구현  
Admin Page Backend & Admin Page Frontend 전체 구현  
(Admin Log in&Out ,UserStatus,Reservation,Statistics)  
  

### 👩‍💻 김현정  
Git 관리, 기능별 영상 촬영 & ReadMe 관리 , 전체 코드리뷰  
User Page Frontend 구현 및 보수    
User Page Login-Out 기능 구현    
User & Admin Page Login 실패 확인 기능 (Alert) 구현  


### 👩‍💻 진보경 

UserPage Survey 문항/답항 DB 연결 및 Survey 구현 및 제출된 Survey를 DB 입력 기능 구현  
Login UserID 통해 Check-IN&Out List 출력  
Check_IN 날짜 유효성 검증을 통한 Survey 중복 방지 구현(Alert) & Survey DB연결 및 출력    
Survey 제출 건의 항목별 응답 갯수 Statistics 구현 Survey 작성 시 객관식 문항 or Check-IN 미입력 방지 구현  

### 👩‍💻 류연주  
코드 유지보수 관리, 통합 기능 구현 테스트(QC)    
UserPage SignUp 시도 시 기존 가입자 Email과 중복 방지 기능 구현  
UserPage SignUp 기능 구현   
UserPage & AdminPage 구현 테스트 및 동영상 촬영  


-----------------------
### 🔗 라이브 영상  
- [L4 Hotel Survey JEJU (User Page)_Live](https://www.youtube.com/watch?v=Rg0f_bUsdBU)  
- [L4 Hotel Survey JEJU (Admin Page)_Live](https://www.youtube.com/watch?v=dkxa0cUDRTo)    
  
### 💻 ERD
- [ERD](./docs/img/ERD.png)  

### 💻 CodeArchitecture  
- [CodeArchitecture](./docs/img/codearchitectures.png)  
### ⚙️ 구현 화면  


### [User Page]
- [Home (메인 홈화면 이미지)](./docs/refactoring/img/home.png)
- [Signup (회원가입 화면 이미지)](./docs/refactoring/img/signup.png)
- [Log in (로그인 화면 이미지)](./docs/refactoring/img/login.png)
- [Find_id_pw (ID/PW 찾기 화면 이미지)](./docs/refactoring/img/forgetidpw.png)
- [Survey (설문지 작성 화면 이미지)](./docs/refactoring/img/survey.png)
- [Review (설문지 통계 화면 이미지)](./docs/refactoring/img/stisfaction.png)


### [Admin Page]
- [admin_main (메인 화면 이미지)](./docs/img/3_admin_main.png)
- [admin_login (로그인 화면 이미지)](./docs/img/1_admin_login.png)
- [admin_login_error (로그인 에러 이미지)](./docs/img/2_admin_login_error.png)
- [admin_userList (회원 현황 조회 이미지)](./docs/img/4_admin_userList.png)
- [admin_reservList (예약 현황 조회 이미지)](./docs/img/5_admin_reservList.png)
- [admin_survey (설문지 통계 주관식 이미지)](./docs/img/6_admin_survey_desc.png)
- [admin_survey (설문지 통계 접근편의성 이미지)](./docs/img/6_admin_survey_Q1.png)
- [admin_survey (설문지 통계 직원친절도 이미지)](./docs/img/6_admin_survey_Q2.png)
- [admin_survey (설문지 통계 호텔청결도 이미지)](./docs/img/6_admin_survey_Q3.png)
- [admin_survey (설문지 통계 음식만족도 이미지)](./docs/img/6_admin_survey_Q4.png)
- [admin_survey (설문지 통계 화시설편의성면 이미지)](./docs/img/6_admin_survey_Q5.png)

-----------------------

### 📝 주요 코드

#### 드롭다운 메뉴 클릭시 투숙 기록 UID 출력

```JS

let queryReserv = document.querySelector("#reserv");
let queryReservHidden = document.querySelector("#reservhidden");

queryReserv.addEventListener("click", (event) => {
  if (event.target.id != null) {
    queryReservHidden.innerHTML =
      "<input type='hidden' name='reservID' value=" +
      `${event.target.id}` +
      " />";
  }
});

```
#### include를 이용한 header와 footer 적용



```JSP
 <%@ include file = "header.jsp" %>
 <%@ include file = "footer.jsp" %>
    <!-- 생략 -->
```

#### 어드민 설문 조회 페이지에서 현재 어떤 항목을 표시하고 있는지를 나타내는 코드  

```jsp
<div class="fs-3" id="admin_target_title">
    <% switch (target) { case "Q1" : %>
    접근 편의성
    <% break; case "Q2" : %>
    직원 친절도
    <% break; case "Q3" : %>
    호텔 청결도
    <% break; case "Q4" : %>
    음식 만족도
    <% break; case "Q5" : %>
    시설 편리성
    <% break; case "descriptive" : %>
    주관식 응답
    <% break; } %>
</div>
```

#### 출력하고자 하는 설문 내용이 주관식인지, 선택형인지 여부에 따라 테이블을 다르게 구성하여 출력  


```jsp
<table class="table table-striped">
<% if (target.equals("descriptive")) { %>
    <thead>
        <tr>
            <th scope="col">주관식 응답 내용</th>
        </tr>
    </thead>
    <% } else { %>
    <thead>
        <tr>
            <th scope="col">매우 만족</th>
            <th scope="col">만족</th>
            <th scope="col">보통</th>
            <th scope="col">불만</th>
            <th scope="col">매우불만</th>
        </tr>
    </thead>
    <% } %>
    <tbody>
    <% ArrayList<String> result = (ArrayList<String>) request.getAttribute("result");
    if (target.equals("descriptive")) {
        for (int i = 0; i < result.size(); i++ ) { %>
        <tr>
            <td>
                <%= result.get(i) %>
            </td>
        </tr>
    <% } } else { %>
        <tr>
    <% for (int i=0; i < result.size(); i++ ) { %>
            <td>
                <%= result.get(i) %>
            </td>
    <% } %>
        </tr>
    <% } %>
    </tbody>
</table>
```
-----------------------
### SQL 
- [ddl](../ddl.sql)  
- [dml](../dml.sql)  

### dao
- [Commons](/src/main/java/com/hotel/survey/hotelsurvey/dao/Commons.java) 
- [SurveyWithDB](/src/main/java/com/hotel/survey/hotelsurvey/dao/SurveyWithDB.java)  

### [User Page]  

### Survlets  
- [ForgetIdPw](/src/main/java/com/hotel/survey/hotelsurvey/survlets/prods/login/ForgetIdPw.java)  
- [LoginAttempt](/src/main/java/com/hotel/survey/hotelsurvey/survlets/prods/login/LoginAttempt.java)  
- [LoginPage](/src/main/java/com/hotel/survey/hotelsurvey/survlets/prods/login/LoginPage.java) 
- [LogoutAttempt](/src/main/java/com/hotel/survey/hotelsurvey/survlets/prods/login/LogoutAttempt.java) 
- [Home](/src/main/java/com/hotel/survey/hotelsurvey/survlets/prods/main/Home.java) 
- [AttemptSignup](/src/main/java/com/hotel/survey/hotelsurvey/survlets/prods/signup/AttemptSignup.java) 
- [Signup](/src/main/java/com/hotel/survey/hotelsurvey/survlets/prods/signup/Signup.java) 
- [StatisticsServlets](/src/main/java/com/hotel/survey/hotelsurvey/survlets/prods/survey/StatisticsServlets.java) 
- [SurveyServlets](/src/main/java/com/hotel/survey/hotelsurvey/survlets/prods/survey/SurveyServlets.java) 

### jsp
- [footer](/src/main/resources/META-INF/resources/jsp/prod/footer.jsp)  
- [forget_id_pw](/src/main/resources/META-INF/resources/jsp/prod/forget_id_pw.jsp)  
- [header](/src/main/resources/META-INF/resources/jsp/prod/header.jsp)  
- [index](/src/main/resources/META-INF/resources/jsp/prod/index.jsp)  
- [login](/src/main/resources/META-INF/resources/jsp/prod/login.jsp)  
- [signup](/src/main/resources/META-INF/resources/jsp/prod/signup.jsp)  
- [statistics](/src/main/resources/META-INF/resources/jsp/prod/statistics.jsp)  
- [survey](/src/main/resources/META-INF/resources/jsp/prod/survey.jsp)  


### [Admin Page]  

### Survlets 
- [index](/docs/refactoring/index.html)  
- [signup](/docs/refactoring/signup.html)  
- [login](/docs/refactoring/login.html)  
- [find_id_pw](/docs/refactoring/forget_id_pw.html)  
- [review](/docs/refactoring/statistics.html)  
- [survey](/docs/refactoring/survey.html)  

### CSS
- [index](/docs/css/index.css)  
-----------------------
### 🤖 프로젝트 성격 (동기)  
해당 프로젝트는 1차 콘솔 구현, 2차 프론트 구현했던 주제로 이를 거쳐 3차로 jsp, Survlet, sql을 중심으로 더해 기능 구현을 추가한 프로젝트입니다.  
저희팀은 요구하는 기능의 더 안정적인 구현을 위해 이전 프로젝트의 front를 보수 하지만 최대한 기존의 디자인 살리는 것을 중심으로 사이트에 구성되어있는 모든 기능을 최대한 구현 하는 것을 목표로 프로젝트에 임하였습니다.  




### 🐤 에피소드 및 느낀점  

저희 팀은 이번 프로젝트는 기능을 구현했어야 하는 만큼 모든 팀원이 Backend 기능을 1건이상 맡아 정상적으로 모든 화면에서 구현하고자 노력했던 프로젝트였습니다.  
이전 Java로 구현 후 HTML과 CSS,부트스트랩으로 프로젝트를 진행했던 것과 달리 확실히 모든 기능을 구현하고자 하는 과정에서 힘든 과정을 겪었으나 팀원들과 모르는 부분이 있을 때 서로 코드를 공유하고 도움을 주는 과정으로 이겨낼 수 있어 정말 협업의 중요성을 깊이 느꼈습니다. 또한 의외로 기본적인 Java 문법에 대한 문제가 발생하는 경우도 있어 더 탄탄한 기본기가 좋은 결과물을 만들 수 있다고 생각하게 되어 부족한 점을 보완해 갈 수있는 기회가 되었습니다. 이번 프로젝트로 웹 어플리케이션의 동작 방식을 더 잘 이해할 수 있게는 계기가 되었습니다. 


