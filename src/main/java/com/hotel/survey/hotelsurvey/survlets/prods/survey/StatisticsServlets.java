package com.hotel.survey.hotelsurvey.survlets.prods.survey;

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

@WebServlet(urlPatterns = "/statisticsServlets")
public class StatisticsServlets extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        SurveyWithDB surveyWithDB = new SurveyWithDB();

        // resevId와 라디오 name 과 value 값 받기
        String reservId = request.getParameter("reservID");
        String q1 = request.getParameter("Q1");
        String q2 = request.getParameter("Q2");
        String q3 = request.getParameter("Q3");
        String q4 = request.getParameter("Q4");
        String q5 = request.getParameter("Q5");
        String answer = request.getParameter("ANSWER");

        ArrayList<HashMap> bundle_list = null;
        ArrayList<HashMap> date_list = null;

        ArrayList<HashMap> statistic_list = null;
        boolean isReservIdDup;
        String path = "";
        path = "/jsp/prod/statistics.jsp";

        try {
            isReservIdDup = surveyWithDB.isReservIdDup(reservId);
            if (reservId != null) {
                if (!isReservIdDup) {
                    surveyWithDB.insertAnswer(reservId, q1, q2, q3, q4, q5);
                    surveyWithDB.insertDesc(reservId, answer);
                } else {

                    String user_IDs = (String) session.getAttribute("userId");
                    request.setAttribute("error", "이미 작성된 설문입니다.");

                    bundle_list = surveyWithDB.getList();
                    date_list = surveyWithDB.getDate(user_IDs);

                    request.setAttribute("bundle_list", bundle_list);
                    request.setAttribute("date_list", date_list);
                    path = "/jsp/prod/survey.jsp";

                }
            }

            statistic_list = surveyWithDB.getStatistics();
            request.setAttribute("statistic_list", statistic_list);

            // jsp로 보내기
            RequestDispatcher requestDispatcher = request
                    .getRequestDispatcher(path);
            requestDispatcher.forward(request, response);
        } catch (

        SQLException e) {
            e.printStackTrace();
        }
    }

}
