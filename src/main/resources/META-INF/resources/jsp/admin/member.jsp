<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import=" java.util.HashMap, java.util.ArrayList " %>
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
                    <a href="/admin/member" class="btn btn-dark w-100">회원현황</a>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div>
                    <a href="/admin/reservation" class="btn btn-dark w-100">예약현황</a>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div>
                    <a href="/admin/survey" class="btn btn-dark w-100">설문현황</a>
                </div>
            </div>
        </div>
        <div class="text-center">
        <a href="/admin/attemptlogout" class="btn btn-outline-dark text-center">Log Out</a>
        </div>
        <div class="row my-5">
            <div class="col-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">UID</th>
                            <th scope="col">Email</th>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Title of Honor</th>
                            <th scope="col">Birthday</th>
                            <th scope="col">Country</th>
                            <th scope="col">State</th>
                            <th scope="col">City</th>
                            <th scope="col">Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ArrayList<HashMap> usersInfo = (ArrayList<HashMap>) request.getAttribute("usersInfo");
                            for (int i = 0; i < usersInfo.size(); i++ ) {
                                HashMap<String, String> userInfo = (HashMap<String, String>) usersInfo.get(i);
                        %>
                        <tr>
                            <td><%= userInfo.get("USER_ID") %></td>
                            <td><%= userInfo.get("EMAIL") %></td>
                            <td><%= userInfo.get("FRIST_NAME") %></td>
                            <td><%= userInfo.get("LAST_NAME") %></td>
                            <td><%= userInfo.get("TITLE_OF_HONOR") %></td>
                            <td><%= userInfo.get("BIRTHDAY") %></td>
                            <td><%= userInfo.get("COUNTRY") %></td>
                            <td><%= userInfo.get("STATE") %></td>
                            <td><%= userInfo.get("CITY") %></td>
                            <td><%= userInfo.get("ADDRESS") %></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
</body>
</html>