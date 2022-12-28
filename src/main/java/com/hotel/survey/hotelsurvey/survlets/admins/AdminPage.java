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
        if (surveyWithDB.isAdmin(adminId, adminPw)) {
            path = "jsp/admin/main.jsp";
        } else {
            path = "jsp/admin/login.jsp";
        }

        // 4. 저장된 경로로 랜딩
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
        requestDispatcher.forward(request, response);

    }

}
