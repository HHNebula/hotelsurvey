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

@WebServlet(urlPatterns = "/surveyServlets")
public class SurveyServlets extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // 문항과 답항 받아오기
        SurveyWithDB surveyWithDB = new SurveyWithDB();
        HttpSession httpSession = request.getSession();

        ArrayList<HashMap> bundle_list = null;
        ArrayList<HashMap> date_list = null;

        // 세션에서 userId 가져오기
        String user_IDs = (String) httpSession.getAttribute("userId");

        try {
            bundle_list = surveyWithDB.getList();
            date_list = surveyWithDB.getDate(user_IDs);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("bundle_list", bundle_list);
        request.setAttribute("date_list", date_list);

        // jsp로 보내기
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/prod/survey.jsp");
        requestDispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

}
