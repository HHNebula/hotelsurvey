package com.hotel.survey.hotelsurvey.survlets.admins;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 어드민 로그인 페이지
@WebServlet(urlPatterns = "/admin/login")
public class AdminLogin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/admin/login.jsp");
        requestDispatcher.forward(request, response);

    }

}
