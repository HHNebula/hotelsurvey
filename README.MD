## 🏨 L4 Hotel JEJU 🏨  
![Generic badge](https://img.shields.io/badge/Java-yellow.svg)  ![Generic badge](https://img.shields.io/badge/Survlet-blue.svg)  ![Generic badge](https://img.shields.io/badge/JSP-red.svg)  ![Generic badge](https://img.shields.io/badge/JDBC-skyblue.svg)  ![Generic badge](https://img.shields.io/badge/Bootstrap-purple.svg) ![Generic badge](https://img.shields.io/badge/CSS-yellowgreen.svg) ![Generic badge](https://img.shields.io/badge/HTML-green.svg) 
![Generic badge](https://img.shields.io/badge/VisualStudioCode-orange.svg)
![Generic badge](https://img.shields.io/badge/MySQL-skyblue.svg)
![Generic badge](https://img.shields.io/badge/Tomecat-gree.svg)  
###  Project Team NAME : 개발팀 🐾
-----------------------  

### ⚙️ 구현 화면  


### ✈️ 소개  
JEJU L4 Hotel Survey 은 호텔의 서비스 품질향상을 위해 설문조사 및 통계 기능을 가지고 있습니다.  
UserPage와 AdminPage가 나누어 제작되어 ID 권한에 따라 이용할 수 있습니다.  
Survey 제출 중복방지를 위해 UserPage 가입 회원 대상으로 ID,PW,CheckIN의 유효성 검사를 진행 하며 CheckIN 기록 건당 1개의 Survey를 제공합니다.  
Survey 필수 입력란 미입력 시 사용자에게 알람을 주어 설문/회원가입/로그인/ID,PW찾기 등의 필수 입력란을 놓치지 않고 오타와 미입력을 방지합니다.  
호텔 staff는 admin Page에 인증된 ID&PW 로 Login 후 회원조회/예약조회/설문조회 권한을 확인 할 수 있습니다. 이를 통해 staff는 호텔 회원의 정보 및 예약 관리와 설문 통계확인이 가능합니다.  

### 🛠 기능 요약  
UserPage와 AdminPage가 나누어 제작되어 ID 권한에 따라 이용할 수 있습니다.  

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
[1차]2022년 12월 27일 ~ 2023년 1월 1일  

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


### 👨‍💻 진보경 

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
- [L4 Hotel Survey JEJU (UserPage)_Live](https://www.youtube.com/watch?v=Rg0f_bUsdBU)  
  
### 💻 ERD
- [ERD](./docs/img/ERD.png)  

### ⚙️ 구현 화면  

### [User Page]



### [Admin Page]
- [Home (메인 홈화면 이미지)](./docs/refactoring/img/home.png)
- [Signup (회원가입 화면 이미지)](./docs/refactoring/img/signup.png)
- [Log in (로그인 화면 이미지)](./docs/refactoring/img/login.png)
- [Find_id_pw (ID/PW 찾기 화면 이미지)](./docs/refactoring/img/forgetidpw.png)
- [Survey (설문지 작성 화면 이미지)](./docs/refactoring/img/survey.png)
- [Review (설문지 통계 화면 이미지)](./docs/refactoring/img/stisfaction.png)


-----------------------

### 📝 주요 코드

#### 드롭다운 메뉴 클릭시 투숙 기록 UID 출력

![Sign Up](./docs/refactoring/img/cap_img2.png)

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

![Sign Up](./docs/refactoring/img/cap_img1.png)

```JSP
 <%@ include file = "header.jsp" %>
 <%@ include file = "footer.jsp" %>
    <!-- 생략 -->
```

#### 어드민 설문 조회 페이지에서 현재 어떤 항목을 표시하고 있는지를 나타내는 코드  
![Sign Up](./docs/refactoring/img/surveybutton.png)
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
![Sign Up](./docs/refactoring/img/surveybutton.png)
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
### 화면 정의서
- [화면정의서](./docs/Storyboard/StoryBoard.pdf)  

### 요구사항 정의서
- [요구사항 정의서](./docs/Storyboard/Requirements.pdf)  
  
### [1차]  

### HTML  
- [index](/docs/html/index.html)  
- [signup](/docs/html/signup.html)  
- [login](/docs/html/login.html)  
- [find_id_pw](/docs/html/find_id_pw.html)  
- [review](/docs/html/review.html)  
- [survey](/docs/html/survey.html)  
- [survey_done](/docs/html/survey_done.html)  

### CSS
- [index](/docs/css/index.css)  
- [login](/docs/css/login.css)  
- [review](/docs/css/review.css)  
- [signup](/docs/css/signup.css)  
- [survey](/docs/css/survey.css)  

### [2차]  

### HTML  
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
저희팀은 요구하는 기능의 더 안정적인 구현을 위해 이전 프로젝트의 front를 보수 하지만 최대한 기존의 퍼블리싱을 살리는 것을 중심으로 사이트에있는 모든 기능을 최대한 구현 하는 것을 목표로 프로젝트에 임하였습니다.

해당 프로젝트는 1차적으로 Java로 구현 하였던 프로젝트입니다 (이전 프로젝트 [L4 Hotel Survey_Java ver](https://github.com/HyeonTtora/KH_SemiProject/blob/master/README.md) ) 저희 팀은 이전 프로젝트를 2차로 front로 구현하다보니 프로젝트 기간이 더 짧게 진행된 만큼 front에서의 강점을 최대한 명확하게 보이게 구현할 수 있는 부분 위주로 고민 해보았습니다. 화면으로 보여지는 것은 사용자가 콘솔창보다 더 직관적으로 확인을 할 수 있는 점이 대표적인 장점이라고 생각이 되었습니다. 직관적으로 확인할 수 있는 부분을 활용해 설문 대상자가 설문 또는 회원가입 등 필수 입력값을 입력 시 오타, 공란 등으로 놓칠 수 있는 부분을 더 직관적이게 표현한다면 오답,정보미입력 등을 줄이고, 사용자 또한 어떤 것이 오입력,미입력 되었는지 더 쉽게 확인할 수 있지 않을까? 라는 생각을 가지고 접근하게 되었습니다. 


### 🐤 에피소드 및 느낀점  

이번 프로젝트는 백엔드와 프론트의 장.단점을 깊이 느낄 수 있는 프로젝트였습니다.  
이전 Java로 구현 후 HTML과 CSS로 2차 프로젝트를 진행하니 확실히 이전 프로젝트에서 부족했던 점과 Java에서는 꽤 쉽게 구현했던 것이 오히려 잘 안돼거나 반대로 HTML나 CSS 에서는 쉽게 구현되는 것이 Java에서 되지 않거나 하는 상황을 맞이하며 많은 고민을 하게 되었습니다. 성격이 매우다른 개발환경이였지만 조금더 깊이 프로그래밍의 이해도를 쌓아간 것 같습니다. 더 많은 프로젝트를 경험하고, 공부하고 느끼고싶은 값진 경험이였습니다.


