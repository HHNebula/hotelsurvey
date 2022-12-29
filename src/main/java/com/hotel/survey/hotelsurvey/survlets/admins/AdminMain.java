package com.hotel.survey.hotelsurvey.survlets.admins;

import java.io.IOException;

import com.hotel.survey.hotelsurvey.dao.SurveyWithDB;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

// 어드민 메인 페이지
@WebServlet(urlPatterns = "/admin/main")
public class AdminMain extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 세션을 가져옴
        HttpSession session = request.getSession();

        // 2. 세션의 어트리뷰트를 가져와 로그인 정보를 저장함
        String adminId = (String) session.getAttribute("adminId");
        String adminPw = (String) session.getAttribute("adminPw");

        // 3. 유효한 로그인 정보인지 검사
        SurveyWithDB surveyWithDB = new SurveyWithDB();
        if (surveyWithDB.isAdmin(adminId, adminPw)) {
            // 로그인 되어있으면 jsp호출
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/admin/main.jsp");
            requestDispatcher.forward(request, response);
        } else {
            // 로그인 안되어있으면 로그인 페이지 서블릿 호출
            session.invalidate();
            response.sendRedirect("/admin/login");
        }

    }

}
