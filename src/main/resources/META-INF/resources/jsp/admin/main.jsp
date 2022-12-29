<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Admin</title>
</head>
<body>
    <div class="container">
        <div class="fs-1 text-center my-5">Admin System</div>
        <div class="row my-5">
            <div class="col-12 col-md-4">
                <div>
                    <a href="/admin/member" class="btn btn-dark w-100">회원관리</a>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div>
                    <a href="/admin/reservation" class="btn btn-dark w-100">예약관리</a>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div>
                    <a href="/admin/survey" class="btn btn-dark w-100">설문관리</a>
                </div>
            </div>
        </div>
        <a href="/admin/attemptlogout" class="btn btn-dark">Log Out</a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
</body>
</html>