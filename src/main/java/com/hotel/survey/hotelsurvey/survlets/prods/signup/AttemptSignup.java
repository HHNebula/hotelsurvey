package com.hotel.survey.hotelsurvey.survlets.prods.signup;

import java.io.IOException;
import java.sql.SQLException;

import com.hotel.survey.hotelsurvey.dao.SurveyWithDB;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/signup/attempt")
public class AttemptSignup extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 회원가입시 입력한 값을 가져와 저장
        String[] userInfo = new String[10];
        userInfo[0] = request.getParameter("email");
        userInfo[1] = request.getParameter("password");
        userInfo[2] = request.getParameter("firstName");
        userInfo[3] = request.getParameter("lastName");
        userInfo[4] = request.getParameter("titleOfHonor");
        userInfo[5] = request.getParameter("birthday");
        userInfo[6] = request.getParameter("country");
        userInfo[7] = request.getParameter("state");
        userInfo[8] = request.getParameter("city");
        userInfo[9] = request.getParameter("addr");

        // 2. 입력한 이메일이 중복인지 체크
        SurveyWithDB surveyWithDB = new SurveyWithDB();
        try {
            boolean isOverlap = surveyWithDB.isOverlap(userInfo[0]);
            // 중복이 아니라면
            if (!isOverlap) {
                surveyWithDB.insertUser(userInfo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 4. 로그인 페이지로 이동
        response.sendRedirect("/login");

    }

}
