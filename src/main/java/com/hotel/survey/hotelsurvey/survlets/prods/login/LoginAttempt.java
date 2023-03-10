package com.hotel.survey.hotelsurvey.survlets.prods.login;

import java.io.IOException;

import com.hotel.survey.hotelsurvey.dao.SurveyWithDB;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/login/attemptlogin")
public class LoginAttempt extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 사용자가 입력한 로그인 정보를 가져옴
        String email = request.getParameter("userEmail");
        String password = request.getParameter("userPassword");

        // 2. DB 조회
        SurveyWithDB surveyWithDB = new SurveyWithDB();
        HttpSession session = request.getSession();
        String userId = surveyWithDB.isUser(email, password);

        // 3. 받아온 USER_ID 값에 따라 랜딩
        if (userId.equals("error")) {
            // 정보가 틀렸을 경우 - 에러 메세지 받아서 넘김
            session.setAttribute("error", "로그인 정보가 정확하지 않습니다.");
            response.sendRedirect("/login");
        } else {
            // 정보가 일치할 경우 - userId를 받아서 넘김
            session.setAttribute("userId", userId);
            request.setAttribute("login", true);
            response.sendRedirect("/home");
        }

    }

}
