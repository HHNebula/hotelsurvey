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
                // 3. DB에 값 저장
                // dao > SurveyWithDB.java 파일에 위 값들을 담아 USER 테이블에 인서트하는 메서드를 생성한 뒤
                // 파라메터에 담아 호출해주면 됩니당
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 4. 로그인 페이지로 이동
        response.sendRedirect("/login");

    }

}
