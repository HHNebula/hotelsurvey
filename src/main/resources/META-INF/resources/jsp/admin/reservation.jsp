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
                    <div class="row my-5">
                        <div class="col-12">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">Reservation ID</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Check in</th>
                                        <th scope="col">Check out</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% ArrayList<HashMap> reservsInfo = (ArrayList<HashMap>)
                                            request.getAttribute("reservsInfo");
                                            for (int i = 0; i < reservsInfo.size(); i++ ) { HashMap<String, String>
                                                reservInfo = (HashMap<String, String>) reservsInfo.get(i);
                                                    %>
                                                    <tr>
                                                        <td>
                                                            <%= reservInfo.get("RESERV_ID") %>
                                                        </td>
                                                        <td>
                                                            <%= reservInfo.get("USER_NAME") %>
                                                        </td>
                                                        <td>
                                                            <%= reservInfo.get("CHECK_IN_DATE") %>
                                                        </td>
                                                        <td>
                                                            <%= reservInfo.get("CHECK_OUT_DATE") %>
                                                        </td>
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