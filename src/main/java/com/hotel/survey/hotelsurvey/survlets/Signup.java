package com.hotel.survey.hotelsurvey.survlets;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
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

        // 최초 사이트 접속 시 /home 서블릿 (Home.java) 에서
        // login 값을 false로 저장함 (이후 로그인 로그아웃 서블릿에서 true / false 변환)
        // login 값이 true 라면 로그인이 되어있는 상태임 > 회원가입 불필요(이미 회원) > /home 으로 랜딩
        // login 값이 false 라면 로그아웃이 되어있는 상태입 > 회원가입 가능 상태 > 회원가입 jsp 호출

        // 1. 세션을 가져옴
        HttpSession session = request.getSession();

        // 2. 세션에 저장된 boolean login 값을 가져옴
        boolean login = (Boolean) session.getAttribute("login");

        // 3. login 값을 바탕으로 서블릿 or jsp 호출
        if (login) { // 로그인이 되어있다면
            // 서블릿 호출
            response.sendRedirect("/home");
            // 이 방식은 주소창의 url 자체를 바꿔버립니다.
        } else { // 로그인이 안되어있다면
            // jsp 파일을 호출
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/jsp/prod/signup.jsp");
            requestDispatcher.forward(request, response);
            // 이방식은 주소창의 url은 유지하되 화면에 jsp파일을 뿌립니다.
        }

    }

}
