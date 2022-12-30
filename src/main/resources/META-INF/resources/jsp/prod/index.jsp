<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <li><a href="./index.html" class="nav-link px-2 link-light">Home</a></li>
            <li><a href="./survey.html" class="nav-link px-2 link-secondary">Survey</a></li>
            <li><a href="./statistics.html" class="nav-link px-2 link-secondary">Statistics</a></li>
        </ul>

        <div class="col-md-3 text-end">
        <%
            boolean isLogin = (boolean) request.getAttribute("login");
            if (isLogin) {
        %>
            <a href="/logout/attemptlogin" type="button" class="btn btn-outline-light me-2">Log Out</a>
        <%
            } else {
                session.invalidate();
                //세션 만료 (login 알럿 표출을 위해 )
        %>

            <a href="/login" type="button" class="btn btn-outline-light me-2">Log In</a>
            <a href="./signup.html" type="button" class="btn btn-light">Sign Up</a>
        <% } %>
        </div>
    </header>

    <!-- Main-->
    <main class="container mt-5 pt-5 py-sm-5 py-md-0 px-5 px-lg-5">
        <!-- Hotel info -->
        <div class="row gx-4 gx-lg-5 align-items-center my-5">
            <div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="./img/main.png" alt="" /></div>
            <div class="col-lg-5">
                <p class="fw-bold fs-1">L4 Hotel - Jeju Island</p>
                <p>Baekrokdam, San 15-1, Topyeong-dong, Seogwipo-si, Jeju Special Self-Governing Province</p>
                <p>+82 64-888-9999</p>
                <a class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#modalId" href="">Reservation</a>
            </div>
        </div>

        <!-- Modal Body -->
        <div class="modal fade" id="modalId" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false"
            role="dialog" aria-labelledby="modalTitleId" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalTitleId">Not available!</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Sorry, sir.<br>
                        All rooms are currently reserved.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>


        <!-- Optional: Place to the bottom of scripts -->
        <script>
            const myModal = new bootstrap.Modal(document.getElementById('modalId'), options)

        </script>

        <!-- Content Row-->
        <div class="row gx-4 mb-3 justify-content-center">
            <div class="col-sm-12 col-md-6 mb-5">
                <div class="card h-100">
                    <div class="card-body">
                        <h4 class="card-title">Please leave a review!</h4>
                        <p class="card-text">
                            How was your rest at the L4 Hotel? Let us know your experience. I will try to provide
                            better service. We will send you a Starbucks coffee coupon through a lottery.
                        </p>
                    </div>
                    <div class="card-footer text-end">
                        <a class="btn btn-dark btn-sm" href="./survey.html">View</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 mb-5">
                <div class="card h-100">
                    <div class="card-body">
                        <h4 class="card-title">What is changing?</h4>
                        <p class="card-text">
                            What is the L4 Hotel doing to satisfy its customers? View satisfaction survey statistics
                            and see what's improving!
                        </p>
                    </div>
                    <div class="card-footer text-end">
                        <a class="btn btn-dark btn-sm" href="./statistics.html">View</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row gx-4 mb-3 justify-content-center">
            <div class="col-sm-12 col-md-6 mb-5">
                <div class="card h-100">
                    <div class="card-body">
                        <h4 class="card-title">Where should we travel?</h4>
                        <p class="card-text">
                            Is this your first time in Jeju Island?<br>
                            Don't worry about where and how to travel! I prepared a guidebook for you.
                            Don't miss out on the membership benefits of the L4 Hotel!</p>
                    </div>
                    <div class="card-footer text-end">
                        <a class="btn btn-dark btn-sm" target="_blank"
                            href="https://travel.naver.com/domestic/14/guide/all">View</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 mb-5">
                <div class="card h-100">
                    <div class="card-body">
                        <h4 class="card-title">How is the weather in Jeju Island?</h4>
                        <p class="card-text">
                            The basics of preparing for a trip are checking the weather!<br>
                            Don't worry if the weather isn't good. Jeju is always a fantastic island.
                        </p>
                    </div>
                    <div class="card-footer text-end">
                        <a class="btn btn-dark btn-sm" target="_blank"
                            href="https://weather.naver.com/today/14110630?cpName=KMA">View</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center mb-5">
            <p class="fw-bold fs-1 mb-3">Now, Jeju is...</p>
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                        class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"
                        aria-label="Slide 4"></button>
                </div>
                <div class="carousel-inner rounded-5">
                    <div class="carousel-item active">
                        <img src="./img/jeju1.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="./img/jeju2.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="./img/jeju3.png" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="./img/jeju4.png" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

    </main>

    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container px-4 px-lg-5">
            <p class="m-0 text-center text-white">Copyright &copy; Arendal Group</p>
        </div>
        <div class="d-flex justify-content-center text-center">
            <a target="_blank" class="text-decoration-none text-white p-2" href="https://github.com/HHNebula">
                <i class="fs-1 bi bi-github text-white p-2"></i>
                <br>
                <span>Sungsoo</span>
            </a>
            <a target="_blank" class="text-decoration-none text-white p-2" href="https://github.com/BoGyeong1">
                <i class="fs-1 bi bi-github text-white p-2"></i>
                <br>
                <span>BoGyeong</span>
            </a>
            <a target="_blank" class="text-decoration-none text-white p-2" href="https://github.com/Ryuyeonjoo">
                <i class="fs-1 bi bi-github text-white p-2"></i>
                <br>
                <span>Yeonjoo</span>
            </a>
            <a target="_blank" class="text-decoration-none text-white p-2" href="https://github.com/HyeonTtora">
                <i class="fs-1 bi bi-github text-white p-2"></i>
                <br>
                <span>Hyunjung</span>
            </a>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>