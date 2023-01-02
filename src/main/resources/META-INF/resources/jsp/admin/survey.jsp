<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import=" java.util.HashMap, java.util.ArrayList " %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
                crossorigin="anonymous">
            <title>Admin</title>
        </head>

        <body>
            <div class="container">
                <%@ include file="adminheader.jsp" %>
                    <div class="my-5">
                        <a href="/admin/survey?target=Q1" class="btn btn-outline-dark text-center">접근 편의성</a>
                        <a href="/admin/survey?target=Q2" class="btn btn-outline-dark text-center">직원 친절도</a>
                        <a href="/admin/survey?target=Q3" class="btn btn-outline-dark text-center">호텔 청결도</a>
                        <a href="/admin/survey?target=Q4" class="btn btn-outline-dark text-center">음식 만족도</a>
                        <a href="/admin/survey?target=Q5" class="btn btn-outline-dark text-center">시설 편리성</a>
                        <a href="/admin/survey?target=descriptive" class="btn btn-outline-dark text-center">주관식 응답</a>
                    </div>
                    <div class="row my-5">
                        <% String target=request.getParameter("target"); %>
                            <div class="col-12">
                                <div class="fs-3">
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
                                                    <% ArrayList<String> result = (ArrayList<String>)
                                                            request.getAttribute("result");
                                                            if (target.equals("descriptive")) {
                                                            for (int i = 0; i < result.size(); i++ ) { %>
                                                                <tr>
                                                                    <td>
                                                                        <%= result.get(i) %>
                                                                    </td>
                                                                </tr>
                                                                <% } } else { for (int i=0; i < result.size(); i++ ) {
                                                                    %>
                                                                    <td>
                                                                        <%= result.get(i) %>
                                                                    </td>
                                                                    <% } %>
                                                                        </tr>
                                                                        <% } %>
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