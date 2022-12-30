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
    <%@ include file = "header.jsp" %>

    <main class="container mt-5 pt-5 py-sm-5 py-md-0 px-5 px-lg-5">
        <div class="pt-5 pt-sm-0 text-center mb-3 border-bottom">
            <div class="">
                <p class="fw-bold fs-1">Find ID / PW</p>
                <img class="" src="../img/hotelimg.png" alt="">
            </div>
        </div>
        <div class="text-center m-3">
            Please enter the email and last name you entered when you signed up.<br>
            A temporary password will be sent by email.
        </div>
       
        <!-- FORM -->
        <form action="/home" class="mb-5">
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-4 my-1">
                    <label for="input-login-email">Email</label>
                    <input type="text" class="form-control" id="input-login-email" placeholder="example@example.com"
                        name="input-login-email" required>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-4 mb-3">
                    <label for="input-first-email">Name</label>
                    <input type="text" class="form-control" id="input-name" placeholder="Jason Mraz" name="input-name"
                        required>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-4 mb-3">
                    <button type="button" class="btn btn-dark w-100" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop">
                        submit
                    </button>
                </div>
            </div>
            <!-- Submit Button modal-->
            <div class=" d-flex justify-content-center">
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Forget E-Mail</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <!--Submit modal Text-->
                            <div class="modal-body text-lg-start">
                                입력된 정보가 일치하는 경우 이메일로 임시 비밀번호가 발급됩니다.
                                <hr>
                                If the information entered matches,<br>
                                a temporary password will be issued by email.
                            </div>
                            <!-- modal Agree & close Button -->
                            <div class="modal-footer d-flex justify-content-center">
                                <button type="submit" class="btn btn-dark w-50" data-bs-dismiss="modal">OK</button>
                            </div>
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