<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import=" java.util.HashMap, java.util.ArrayList " %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>World of L4 - Jeju</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
    <link rel="stylesheet" href="./css/refactoring.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>

<body class="pt-5">
    <!-- HEADER : NAV-->
    <header
        class="container-fluid bg-dark d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 fixed-top">
        <a href="./index.html"
            class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-white text-decoration-none fs-4">
            <img src="./img/logo.png" alt="" style="height: 30px;">
            <span class="ms-2">World of L4 Hotel</span>
        </a>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="./index.html" class="nav-link px-2 link-secondary">Home</a></li>
            <li><a href="./survey.html" class="nav-link px-2 link-light">Survey</a></li>
            <li><a href="./statistics.html" class="nav-link px-2 link-secondary">Statistics</a></li>
        </ul>

        <div class="col-md-3 text-end">
            <a href="./login.html" type="button" class="btn btn-outline-light me-2">Log In</a>
            <a href="./signup.html" type="button" class="btn btn-light">Sign Up</a>
        </div>
    </header>

    <!-- main -->
    <main class="mt-5 pt-5 py-sm-5 py-md-0 px-5 px-lg-5">
        <form action="./statistics.html">
            <!-- 호텔로고 & 설문안내 -->
            <div class="card text-center align-items-center text-secondary">
                <img class="card-img-top" src="../img/hotelimg.png" alt="Card image cap" style="width: 400px;">
                <div class="card-body">
                    <div class="mb-5">
                        <h4 class="card-title m-3 ">고객 만족 설문조사 <br> Customer Satisfaction Survey</h4>
                        <div>저희 JEJU L4 HOTEL 은 서비스 품질 향상을 위해 고객 만족도 설문을 운영하고 있습니다.
                            <br>객실의 Check-In이력 1건당 1개의 설문이 가능합니다.
                            <br>설문을 완료해주시면 '스타벅스 기프티콘'을 추첨을 통해 매월 10분에게 제공합니다.
                        </div>
                        <br>
                        <div>We, JEJUL4 HOTEL, are conducting a customer satisfaction survey to improve service quality.
                            <br>One questionnaire is provided for each check-in record in the room.
                            <br>After completing the survey, 10 people will be given Starbucks gifticons through a
                            lottery every
                            month.
                        </div>
                    </div>
                    <div>
                        <!-- 체크인 선택 -->
                        <div class="card mb-3 bg-opacity-50" style="width: 100%;">
                            <div class="card-header">Check-In List</div>
                            <div class="card-body">
                                <h5 class="card-title">체크인 리스트 선택 후 설문을 진행해주세요</h5>
                                <p class="card-text"> Select your check-in list and proceed with the survey</p>
                                <div class="dropdown open">
                                    <button class="btn btn-dark dropdown-toggle btn-lg" type="button" id="triggerId"
                                        data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" required>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="25"
                                            fill="currentColor" class="bi bi-calendar2-week-fill" viewBox="0 0 16 16">
                                            <path
                                                d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zm9.954 3H2.545c-.3 0-.545.224-.545.5v1c0 .276.244.5.545.5h10.91c.3 0 .545-.224.545-.5v-1c0-.276-.244-.5-.546-.5zM8.5 7a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zM3 10.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1z" />
                                        </svg> Check In LIist
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="triggerId" required>
                                        <button class="dropdown-item" href="#" required>22-10-10 / 14:30:11 / JEJU L4
                                            HOTEL /
                                            Suite room
                                        </button>
                                        <button class="dropdown-item" href="#">23-11-11 /12:10:11 / JEJU L4 HOTEL /
                                            Family Room
                                        </button>
                                        <button class="dropdown-item" href="#">23-11-7 / 18:55:00 / JEJU L4 HOTEL /
                                            Suite room
                                        </button>
                                        <button class="dropdown-item disabled" href="#">Check-Out을 완료한 투숙건만
                                            보여집니다.</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 설문지&답항 -->
                        <div class="card mb-3 bg-opacity-50" style="width: 100%;">
                            <div class="card-header">Customer Satisfaction Survey</div>
                            <div class="list-group list-group-flush text-dark fs-5">
                            <div class ="mb-3"></div>
    <%-- ArrayList 설문 답항 불러오기 --%>
<% ArrayList<HashMap> bundle_list = request.getAttribute("bundle_list"); %>

                                    <p class="card-text">1. 호텔을 찾아오시는 길은 편리하셨습니까?</p>
                                <li class="list-group-item mb-4 pb-4">
                                    <div class="btn-group">
                                        <label class="btn btn-dark " for="traffic_Very_satisfied">
                                            <input type="radio" name="traffic" id="traffic_Very_satisfied"
                                                value="Very_satisfied" autocomplete="off" required> 매우만족 <br>
                                        </label>
                                        <label class="btn btn-dark" for="traffic_Satisfied">
                                            <input type="radio" name="traffic" id="traffic_Satisfied" value="Satisfied"
                                                autocomplete="off" required>
                                            만족
                                        </label>
                                        <label class="btn btn-dark" for="traffic_normal">
                                            <input type="radio" name="traffic" id="traffic_normal" value="normal"
                                                autocomplete="off" required> 보통
                                        </label>
                                        <label class="btn btn-dark" for="traffic_Complained">
                                            <input type="radio" name="traffic" id="traffic_Complained"
                                                value="Complained" autocomplete="off" required> 불만
                                        </label>
                                        <label class="btn btn-dark" for="traffic_Dissatisfied">
                                            <input type="radio" name="traffic" id="traffic_Dissatisfied"
                                                value="Dissatisfied" autocomplete="off" required> 매우불만
                                        </label>
                                    </div>
                                </li>
                              
                                <!-- 주관식문항(선택) -->
                                <li class="list-group-item">
                                    <p class="card-text">6. 고객님의 소중한 의견을 자유롭게 남겨주세요 (선택사항) <br> Please feel free to
                                        leave your
                                        valuable comments </p>
                                    <div class="form-floating">
                                        <textarea class="form-control" placeholder="Leave a comment here"
                                            id="floatingTextarea2" style="height: 200px"></textarea>
                                        <label for="floatingTextarea2"
                                            class="text-secondary opacity-25">Comments</label>
                                    </div>
                                    <!-- Submit Button trigger modal -->
                                    <button type="button" class="btn btn-dark btn-lg m-5" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal">
                                        submit
                                    </button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal" tabindex="-1"
                                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <p class="modal-title" id="exampleModalLabel">Survey Close
                                                    </p>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    설문에 참여해주셔서 감사합니다.<br>
                                                    더 좋은 서비스로 보답하겠습니다.<br>
                                                    <hr>
                                                    Thank you for participating in the survey.<br>
                                                    I'll repay you with better service<br>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Rewriting</button>
                                                    <button type="submit" class="btn btn-dark">Save</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </div>
                        </div>
                    </div>
                </div>
        </form>
    </main>
    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container px-4 px-lg-5">
            <p class="m-0 text-center text-white">Copyright &copy; Arendal Group</p>
        </div>
        <div class="d-flex justify-content-center text-center">
            <a target="_blank" class="text-decoration-none text-white" href="https://github.com/HHNebula">
                <i class="fs-1 bi bi-github text-white p-2"></i>
                <br>
                <span>SOO</span>
            </a>
            <a target="_blank" class="text-decoration-none text-white" href="https://github.com/HyeonTtora">
                <i class="fs-1 bi bi-github text-white p-2"></i>
                <br>
                <span>JUNG</span>
            </a>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>

