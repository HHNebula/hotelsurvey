<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
    <div class="container text-center justify-content-center">
        <div class="fs-2" style="margin-top: 10vw;">Admin System</div>
        <form action="/admin/attemptlogin" method="post">
            <div class="row d-flex justify-content-center m-3">
                <div class="col-12 col-md-3">
                    <input type="text" name="adminId" id="adminId" placeholder="Admin ID" class="form-control" required>
                </div>
            </div>
            <div class="row d-flex justify-content-center m-3">
                <div class="col-12 col-md-3">
                    <input type="password" name="adminPw" id="adminPw" placeholder="Admin PW" class="form-control"
                        required>
                </div>
            </div>
            <div class="row d-flex justify-content-center m-3">
                <div class="col-12 col-md-3">
                    <input type="submit" value="Submit" class="btn btn-dark w-100">
                    <div class="text-danger my-1">
                        <% if ((String) session.getAttribute("error") != null) { %>
                            <%= (String) session.getAttribute("error")%>
                        <% } %>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>