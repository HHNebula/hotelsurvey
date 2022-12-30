package com.hotel.survey.hotelsurvey.survlets;

import java.io.IOException;

import com.hotel.survey.hotelsurvey.dao.SurveyWithDB;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/signup")
public class Signup extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 세션을 가져와 로그인 여부 체크
        HttpSession session = request.getSession();

        // 2. 세션의 userId 가져옴
        String userId = (String) session.getAttribute("userId");
        

         // 3. request.getAttribute("login"), false 면 signup.jsp 호출
         // request.getAttribute("login"), true 면 /home 서블릿으로 보냄
         
         String path = null;
         if(userId != null) {
            switch(userId) {
                case "error":
                request.setAttribute("login", false);
                break;
            default:
                request.setAttribute("login", true);
                break;
            }
                response.sendRedirect("/home");
            }else {
                request.setAttribute("login", false);
                 path = "jsp/prod/signup.jsp";
            }
            
    }

}
