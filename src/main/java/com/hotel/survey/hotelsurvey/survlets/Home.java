package com.hotel.survey.hotelsurvey.survlets;

import java.io.IOException;

import com.hotel.survey.hotelsurvey.dao.SurveyWithDB;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/home")
public class Home extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        // 1. 세션을 가져와 로그인 여부를 체크
        HttpSession session = request.getSession();

        // 2. 세션의 유저아이디를 가져옴
        String userId = (String) session.getAttribute("userId");

        // 3. 유효한 로그인 정보인지 검사
        if (userId != null) {
            switch (userId) {
                case "error":
                    request.setAttribute("login", false);
                    break;
                default:
                    request.setAttribute("login", true);
                    break;
            }
        } else {
            request.setAttribute("login", false);
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/prod/index.jsp");
        requestDispatcher.forward(request, response);
    }

}
