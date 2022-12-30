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
        String eamil = request.getParameter("email");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String titleOfHonor = request.getParameter("titleOfHonor");
        String birthday = request.getParameter("birthday");
        String country = request.getParameter("country");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String addr = request.getParameter("addr");

        // 2. 입력한 이메일이 중복인지 체크
        SurveyWithDB surveyWithDB = new SurveyWithDB();
        try {
            boolean isOverlap = surveyWithDB.isOverlap(eamil);
            // 중복이 아니라면
            if (!isOverlap) {
                // 3. DB에 값 저장
                System.out.println("중복 아님");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 4. 로그인 페이지로 이동
        response.sendRedirect("/login");

    }

}
