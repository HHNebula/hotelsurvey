package com.hotel.survey.hotelsurvey.survlets;

import java.io.IOException;

import com.hotel.survey.hotelsurvey.dao.SurveyWithDB;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "RootServlets", urlPatterns = "")
public class RootServlets extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        // TODO 세션을 가져와서 로그인 여부를 체크
        HttpSession session = request.getSession();

        String email = (String) session.getAttribute("email");
        String password = (String) session.getAttribute("password");
        String path = null;
        SurveyWithDB surveyWithDB = new SurveyWithDB();
        // 로그인 되어있으면 > 로그아웃 버튼
        if (surveyWithDB.isUser(email, password)) {
            path = "";

            // 로그인 안되어있으면 > 로그인 / 사인업 버튼
        } else {
            session.invalidate();
            path = "";
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/prod/index.jsp");
        requestDispatcher.forward(request, response);
    }

}
