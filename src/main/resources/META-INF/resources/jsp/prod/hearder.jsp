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
        %>
            <a href="/login" type="button" class="btn btn-outline-light me-2">Log In</a>
            <a href="./signup.html" type="button" class="btn btn-light">Sign Up</a>
        <% } %>
        </div>
    </header>