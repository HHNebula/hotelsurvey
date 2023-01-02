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
     <link rel="stylesheet" href="../../CSS/all.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>

<body class="pt-5">
    <!-- HEADER : NAV-->
    <%@ include file = "header.jsp" %>

    <main class="container mt-5 pt-5 py-sm-5 py-md-0 px-5 px-lg-5">
        <div class="pt-5 pt-sm-0 text-center mb-3 border-bottom">
            <div class="">
                <p class="fw-bold fs-1">Welcome to the World of L4 Hotel!</p>
                <img class="" src="../img/hotelimg.png" alt="">
            </div>
        </div>


        
        <form action="/login/attemptlogin" class="mb-5" method="post">

            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-4 my-1">
                    <label for="userEmail">Email</label>
                    <input type="text" name="userEmail" class="form-control" id="userEmail" placeholder="example@example.com" required>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-4 my-1">
                    <label for="userPassword">Password</label>
                    <input type="password" name="userPassword" class="form-control" id="userPassword" required>
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
            
            <%-- 일치하는 정보가 없을때 알럿  --%>
            <% if ((String) session.getAttribute("error") != null) { %>
            
              <div class="row justify-content-center text-center">
            <div class="alert alert-warning alert-dismissible fade show form-group col-12 col-md-4 my-1 " role="alert">
            <i class="bi bi-patch-exclamation-fill"></i>
             일치하는 정보가 없습니다.<br><strong><a href="/forget_id_pw" class="alert-link">ID/Password를</a></strong>확인해주세요 
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            </div>
            
             <% } %>

            <div class="row justify-content-center text-center">
                <div class="form-group col-12 col-md-4 my-1">
                    <a href="/forget_id_pw" class="btn btn-outline-dark w-100">Forget Email or Password?</a>
                </div>
            </div>
            <div class="row justify-content-center text-center">
                <div class="form-group col-12 col-md-4 my-1">
                    <a href="/signup" class="btn btn-outline-dark w-100">Is this your first time at the L4
                        hotel?</a>
                </div>
            </div>
        </form>
    </main>

    <!-- Footer-->
    <%@ include file = "footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
        
</body>

</html>
