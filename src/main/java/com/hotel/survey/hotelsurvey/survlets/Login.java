package com.hotel.survey.hotelsurvey.survlets;

import java.io.IOException;

import com.hotel.survey.hotelsurvey.dao.SurveyWithDB;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        SurveyWithDB surveyWithDB = new SurveyWithDB();
        HttpSession session = request.getSession();

        if (surveyWithDB.isUser(email, password)) {


            session.setAttribute("email", email);
            session.setAttribute("password", password);
            response.sendRedirect("/jsp/prod/index.jsp");

        } else {
            session.setAttribute("error", "로그인 정보가 정확하지 않습니다.");
            response.sendRedirect("/jsp/prod/login.jsp");
        }

    }

}
