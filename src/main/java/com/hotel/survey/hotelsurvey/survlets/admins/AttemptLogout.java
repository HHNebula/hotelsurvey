package com.hotel.survey.hotelsurvey.survlets.admins;

import java.io.IOException;

import com.hotel.survey.hotelsurvey.dao.SurveyWithDB;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

// 로그아웃 시도시 실행
@WebServlet(urlPatterns = "/admin/attemptlogout")
public class AttemptLogout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 로그인 세션을 가져와 만료시킴
        HttpSession session = request.getSession();
        session.invalidate();

        // 2. 어드민 로그인 페이지로 랜딩
        response.sendRedirect("/admin/login");

    }
}