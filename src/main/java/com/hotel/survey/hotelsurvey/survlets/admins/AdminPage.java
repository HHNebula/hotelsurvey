package com.hotel.survey.hotelsurvey.survlets.admins;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import com.hotel.survey.hotelsurvey.dao.SurveyWithDB;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/admin")
public class AdminPage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 세션을 가져옴
        HttpSession session = request.getSession();

        // 2. 세션의 어트리뷰트를 가져와 로그인 정보를 저장함
        String adminId = (String) session.getAttribute("adminId");
        String adminPw = (String) session.getAttribute("adminPw");
        String path = null;

        // 3. 유효한 로그인 정보인지 검사
        SurveyWithDB surveyWithDB = new SurveyWithDB();
        try {
            // DB에 저장된 Admin 정보를 가져옴
            ArrayList<HashMap> adminInfo = surveyWithDB.getAdminInfo();

            // 세션에 저장된 정보와 DB에 저장된 로그인 정보를 비교함
            for (int i = 0; i < adminInfo.size(); i++) {

                // 어드민 정보를 하나 가져와서
                HashMap<String, String> admin = adminInfo.get(i);

                // 일치하는지 비교
                if (admin.get("ID").equals(adminId) && admin.get("PW").equals(adminPw)) {

                    // 일치하는 정보를 찾으면 로그인을 건너뛰고 반복문 종료
                    path = "jsp/admin/main.jsp";
                    break;
                }
                // 불일치한다면 로그인 페이지로 이동
                path = "jsp/admin/login.jsp";
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 4. 저장된 경로로 랜딩
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);

    }

}
