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
            <li><a href="./statistics.html" class="nav-link px-2 link-secondary">Statistics</a></li>
        </ul>

        <div class="col-md-3 text-end">
            <a href="./login.html" type="button" class="btn btn-outline-light me-2">Log In</a>
            <a href="./signup.html" type="button" class="btn btn-light">Sign Up</a>
        </div>
    </header>

    <main class="container mt-5 pt-5 py-sm-5 py-md-0 px-5 px-lg-5">
        <div class="pt-5 pt-sm-0 text-center mb-3 border-bottom">
            <div class="">
                <p class="fw-bold fs-1">Welcome to the World of L4 Hotel!</p>
                <img class="" src="../img/hotelimg.png" alt="">
            </div>
        </div>

        <form action="./index.html" class="mb-5">
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-4 my-1">
                    <label for="input-login-email">Email</label>
                    <input type="text" name="input-login-email" class="form-control" id="input-login-email"
                        placeholder="example@example.com" required>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-4 my-1">
                    <label for="input-first-email">Password</label>
                    <input type="password" name="input-first-email" class="form-control" id="input-first-email"
                        required>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-4 mb-3">
                    <input type="checkbox" name="remember" id="remember">
                    <label for="remember">remember me</label>
                </div>
            </div>
            <div class="row justify-content-center text-center">
                <div class="form-group col-12 col-md-4 my-1">
                    <input class="btn btn-dark w-100" type="submit" value="Log in">
                </div>
            </div>
            <div class="row justify-content-center text-center">
                <div class="form-group col-12 col-md-4 my-1">
                    <a href="./forget_id_pw.html" class="btn btn-outline-dark w-100">Forget Email or Password?</a>
                </div>
            </div>
            <div class="row justify-content-center text-center">
                <div class="form-group col-12 col-md-4 my-1">
                    <a href="./signup.html" class="btn btn-outline-dark w-100">Is this your first time at the L4
                        hotel?</a>
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
