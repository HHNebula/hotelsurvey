package com.hotel.survey.hotelsurvey.survlets;

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

@WebServlet(urlPatterns = "/statisticsServlets")
public class StatisticsServlets extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // 라디오 name 과 value 값 받기
        String reservId = request.getParameter("reservID");
        String q1 = request.getParameter("Q1");
        String q2 = request.getParameter("Q2");
        String q3 = request.getParameter("Q3");
        String q4 = request.getParameter("Q4");
        String q5 = request.getParameter("Q5");

        SurveyWithDB surveyWithDB = new SurveyWithDB();
        ArrayList<HashMap> statistic_list = null;

        try {
            statistic_list = surveyWithDB.getStatistics();
            surveyWithDB.insertAnswer(reservId, q1, q2, q3, q4, q5);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("statistic_list", statistic_list);
        // jsp로 보내기
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/prod/statistics.jsp");
        requestDispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

}
