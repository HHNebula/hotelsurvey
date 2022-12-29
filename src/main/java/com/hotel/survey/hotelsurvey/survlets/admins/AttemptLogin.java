package com.hotel.survey.hotelsurvey.survlets.admins;

import java.io.IOException;

import com.hotel.survey.hotelsurvey.dao.SurveyWithDB;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

// 로그인 시도 시 실행
@WebServlet(urlPatterns = "/admin/attemptlogin")
public class AttemptLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 입력한 아이디와 비밀번호를 가져옴
        String adminId = request.getParameter("adminId");
        String adminPw = request.getParameter("adminPw");
        String path = null;
        HttpSession session = request.getSession();
        // 2. 입력한 아이디와 비밀번호가 유효한지 검사함
        SurveyWithDB surveyWithDB = new SurveyWithDB();
        if (surveyWithDB.isAdmin(adminId, adminPw)) {
            // 유효한 정보면 세션을 저장하고 어드민 메인으로 경로 저장
            session.setAttribute("adminId", adminId);
            session.setAttribute("adminPw", adminPw);
            response.sendRedirect("/admin/main");
        } else {
            // 유효한 정보가 아니면 로그인 페이지 유지
            // 에러 메세지를 담아 출력함
            session.setAttribute("error", "로그인 정보가 정확하지 않습니다.");
            response.sendRedirect("/admin/login");
        }

    }
}