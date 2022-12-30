package com.hotel.survey.hotelsurvey.survlets.admins;

import java.io.IOException;
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

@WebServlet(urlPatterns = "/admin/member")
public class Member extends HttpServlet {

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
            // 로그인 되어있으면 데이터를 받아 jsp로 넘김
            try {
                ArrayList<HashMap> usersInfo = surveyWithDB.getUsersInfo();
                request.setAttribute("usersInfo", usersInfo);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/admin/member.jsp");
                requestDispatcher.forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            // 로그인 안되어있으면 로그인 서블릿 호출
            session.invalidate();
            response.sendRedirect("/admin/login");
        }

    }

}
