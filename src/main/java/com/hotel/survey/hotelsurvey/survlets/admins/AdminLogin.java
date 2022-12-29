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

//  어드민 로그인 페이지에서 로그인 시도 시 실행
@WebServlet(urlPatterns = "/admin/login")
public class AdminLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 입력한 아이디와 비밀번호를 가져옴
        String adminId = request.getParameter("adminId");
        String adminPw = request.getParameter("adminPw");
        String path = null;
        // 2. 입력한 아이디와 비밀번호가 유효한지 검사함
        SurveyWithDB surveyWithDB = new SurveyWithDB();
        if (surveyWithDB.isAdmin(adminId, adminPw)) {
            // 유효한 정보면 세션을 저장하고 어드민 메인으로 이동
            HttpSession session = request.getSession();
            session.setAttribute("adminId", adminId);
            session.setAttribute("adminPw", adminPw);
            path = "/jsp/admin/main.jsp";
        } else {
            // 로그인 안되어있으면 로그인 페이지로 이동
            path = "/jsp/admin/login.jsp";
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/admin/login.jsp");
        requestDispatcher.forward(request, response);

    }

}
