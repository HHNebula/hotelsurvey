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
            <li><a href="./survey.html" class="nav-link px-2 link-secondary">Survey</a></li>
            <li><a href="./statistics.html" class="nav-link px-2 link-light">Statistics</a></li>
        </ul>

        <div class="col-md-3 text-end">
            <a href="./login.html" type="button" class="btn btn-outline-light me-2">Log In</a>
            <a href="./signup.html" type="button" class="btn btn-light">Sign Up</a>
        </div>
    </header>

    <!-- Main-->
    <main class="container mt-5 pt-5 py-sm-5 py-md-0 px-5 px-lg-5">
        <div class="pt-5 pt-sm-0 text-center pb-5">
            <div class="">
                <p class="fw-bold fs-1">Satisfaction statistics</p>
                <p>
                    This is the overall satisfaction of our hotel.<br>
                    We promise to work hard to improve service satisfaction continuously.
                </p>
                <table class="table table-striped table-responsive">
                    <thead>
                        <tr>
                            <th class="w-25" scope="col">
                                <span class="material-symbols-outlined">sort</span>
                            </th>
                            <th scope="col">
                                <span class="material-symbols-outlined">sentiment_very_satisfied</span>
                            </th>
                            <th scope="col">
                                <span class="material-symbols-outlined">sentiment_satisfied</span>
                            </th>
                            <th scope="col">
                                <span class="material-symbols-outlined">sentiment_neutral</span>
                            </th>
                            <th scope="col">
                                <span class="material-symbols-outlined">sentiment_dissatisfied</span>
                            </th>
                            <th scope="col">
                                <span class="material-symbols-outlined">sentiment_very_dissatisfied</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                    <%  ArrayList<HashMap> statistic_list = (ArrayList<HashMap>)request.getAttribute("statistic_list"); %>
                    <% 
                         HashMap<String, Object> statistics0 = (HashMap<String, Object> )statistic_list.get(0);
                         int veryStisfied = (int)statistics0.get("VeryStisfied");
                         int stisfied = (int)statistics0.get("Stisfied");
                         int usually = (int)statistics0.get("Usually");
                         int dissatisfied = (int)statistics0.get("Dissatisfied");
                         int veryDissatisfied = (int)statistics0.get("VeryDissatisfied"); %>
                         <tr>
                            <th scope="row">Accessibility</th>
                            <td><%= veryStisfied %></td>
                            <td><%= stisfied %></td>
                            <td><%= usually %></td>
                            <td><%= dissatisfied %></td>
                            <td><%= veryDissatisfied %></td>
                        </tr>
                    <% 
                         HashMap<String, Object> statistics1 = (HashMap<String, Object> )statistic_list.get(1);
                         int veryStisfied1 = (int)statistics1.get("VeryStisfied");
                         int stisfied1 = (int)statistics1.get("Stisfied");
                         int usually1 = (int)statistics1.get("Usually");
                         int dissatisfied1 = (int)statistics1.get("Dissatisfied");
                         int veryDissatisfied1 = (int)statistics1.get("VeryDissatisfied"); %>
                         <tr>
                            <th scope="row">Kindness of the staff</th>
                            <td><%= veryStisfied1 %></td>
                            <td><%= stisfied1 %></td>
                            <td><%= usually1 %></td>
                            <td><%= dissatisfied1 %></td>
                            <td><%= veryDissatisfied1 %></td>
                        </tr>
                                            <% 
                         HashMap<String, Object> statistics2 = (HashMap<String, Object> )statistic_list.get(2);
                         int veryStisfied2 = (int)statistics2.get("VeryStisfied");
                         int stisfied2 = (int)statistics2.get("Stisfied");
                         int usually2 = (int)statistics2.get("Usually");
                         int dissatisfied2 = (int)statistics2.get("Dissatisfied");
                         int veryDissatisfied2 = (int)statistics2.get("VeryDissatisfied"); %>
                         <tr>
                            <th scope="row">Hotel cleanliness</th>
                            <td><%= veryStisfied2 %></td>
                            <td><%= stisfied2 %></td>
                            <td><%= usually2 %></td>
                            <td><%= dissatisfied2 %></td>
                            <td><%= veryDissatisfied2 %></td>
                        </tr>
                                                                    <% 
                         HashMap<String, Object> statistics3 = (HashMap<String, Object> )statistic_list.get(3);
                         int veryStisfied3 = (int)statistics3.get("VeryStisfied");
                         int stisfied3 = (int)statistics3.get("Stisfied");
                         int usually3 = (int)statistics3.get("Usually");
                         int dissatisfied3 = (int)statistics3.get("Dissatisfied");
                         int veryDissatisfied3 = (int)statistics3.get("VeryDissatisfied"); %>
                         <tr>
                            <th scope="row">Food quality</th>
                            <td><%= veryStisfied3 %></td>
                            <td><%= stisfied3 %></td>
                            <td><%= usually3 %></td>
                            <td><%= dissatisfied3 %></td>
                            <td><%= veryDissatisfied3 %></td>
                        </tr>
                                                                    <% 
                         HashMap<String, Object> statistics4 = (HashMap<String, Object> )statistic_list.get(4);
                         int veryStisfied4 = (int)statistics4.get("VeryStisfied");
                         int stisfied4 = (int)statistics4.get("Stisfied");
                         int usually4 = (int)statistics4.get("Usually");
                         int dissatisfied4 = (int)statistics4.get("Dissatisfied");
                         int veryDissatisfied4 = (int)statistics4.get("VeryDissatisfied"); %>
                         <tr>
                            <th scope="row">Facilities Convenience</th>
                            <td><%= veryStisfied4 %></td>
                            <td><%= stisfied4 %></td>
                            <td><%= usually4 %></td>
                            <td><%= dissatisfied4 %></td>
                            <td><%= veryDissatisfied4 %></td>
                        </tr>

                    </tbody>
                </table>
            </div>
            <hr class="hr">
            <div class="">
                <p class="fw-bold fs-1">What is changing?</p>
                <p>
                    The L4 hotel is changing based on the opinions you left.
                </p>
            </div>
            <div class="row gx-4 mb-3 justify-content-center text-start">
                <div class="col-sm-12 col-md-10 mb-5">
                    <div class="card h-100">
                        <div class="card-header">
                            <h4 class="card-title">The dining bar has been completely reorganized.</h4>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                                In order to improve the quality of food, we improved the overall part from the
                                distribution process of ingredients to storage and cooking.
                            </p>
                            <p class="card-text">
                                From now on, we will provide the best taste through strict quality control, and we
                                will
                                provide more diverse and rich flavors through collaboration with famous overseas
                                chefs.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-10 mb-5">
                    <div class="card h-100">
                        <div class="card-header">
                            <h4 class="card-title">Changed the cycle so that hotel rooms can be cleaned more often.
                            </h4>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                                We know that we need to maintain high cleanliness due to COVID-19.
                            </p>
                            <p class="card-text">
                                The frequency of cleaning has increased by 20% compared to before, and quarantine
                                supplies can be replaced more often.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-10 mb-5">
                    <div class="card h-100">
                        <div class="card-header">
                            <h4 class="card-title">We've expanded our hotel partnership.</h4>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                                We offer partnership services to provide more benefits to our customers.
                            </p>
                            <p class="card-text">
                                If you show your L4 hotel stay card to all museums and cafes in Jeju Island, you can
                                get
                                a 50% discount.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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