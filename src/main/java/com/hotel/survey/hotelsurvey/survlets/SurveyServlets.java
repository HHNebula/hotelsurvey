package com.hotel.survey.hotelsurvey.survlets;

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

@WebServlet(urlPatterns = "/surveyServlets")
public class SurveyServlets extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // 문항과 답항 받아오기
        SurveyWithDB surveyWithDB = new SurveyWithDB();

        ArrayList<HashMap> bundle_list = null;

        bundle_list = surveyWithDB.getList();

        request.setAttribute("bundle_list", bundle_list);

        // jsp로 보내기
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/prod/survey.jsp");
        requestDispatcher.forward(request, response);

    }

}
