package com.hotel.survey.hotelsurvey.survlets;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "RootServlets", urlPatterns = "")
public class RootServlets extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        // TODO 세션을 가져와서 로그인 여부를 체크
        // 로그인 되어있으면 > 로그아웃 버튼
        // 로그인 안되어있으면 > 로그인 / 사인업 버튼

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/prod/index.jsp");
        requestDispatcher.forward(request, response);
    }

}
