package com.hotel.survey.hotelsurvey.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;

public class SurveyWithDB {

    // [GYEONG]
    public ArrayList<HashMap> getList() {
        Commons commons = new Commons();
        Statement statement = commons.getStatement();
        Statement statementAnswer = commons.getStatement();

        // 설문과 답항 내용 출력
        String query = "SELECT * FROM SELECTIVE_QUESTIONS " +
                "ORDER BY ORDERS";
        ArrayList<HashMap> bundle_list = new ArrayList<>();
        try {
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                // 설문 UID 변수 지정
                String uid = resultSet.getString("QUESTION_ID");
                // 문항 해쉬맵에 담기
                HashMap<String, Object> question = new HashMap<String, Object>();
                question.put("ORDERS", resultSet.getInt("ORDERS"));
                question.put("QUESTION", resultSet.getString("QUESTION"));
                question.put("QUESTION_ID", resultSet.getString("QUESTION_ID"));

                // 설문자 답 받기
                query = "SELECT SELECTIVE_ANSWERS.ANSWER_ID, SELECTIVE_ANSWERS.ANSWER, SELECTIVE_ANSWERS.ORDERS " +
                        " FROM QUESTION_ANSWER inner Join SELECTIVE_ANSWERS " +
                        " on QUESTION_ANSWER.ANSWER_ID = SELECTIVE_ANSWERS.ANSWER_ID " +
                        " WHERE QUESTION_ID = '" + uid + "' " +
                        " ORDER BY ORDERS";
                ResultSet resultSetAnswer = statementAnswer.executeQuery(query);

                // 설문 답항
                ArrayList<HashMap> answer_list = new ArrayList<HashMap>();
                while (resultSetAnswer.next()) {
                    // 해쉬맵에 담기
                    HashMap<String, Object> answer = new HashMap<>();
                    answer.put("ORDERS", resultSetAnswer.getInt("ORDERS"));
                    answer.put("ANSWER", resultSetAnswer.getString("ANSWER"));
                    answer.put("ANSWER_ID", resultSetAnswer.getString("ANSWER_ID"));
                    // 어레이리스트에 담기
                    answer_list.add(answer);
                }
                resultSetAnswer.close();
                HashMap<String, Object> bundle = new HashMap<>();
                bundle.put("question", question);
                bundle.put("answer_list", answer_list);

                bundle_list.add(bundle);

            }
            statementAnswer.close();
            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bundle_list;
    }

    // [GYEONG] 통계
    public ArrayList<HashMap> getStatistics() throws SQLException {

        Commons commons = new Commons();
        Statement statement = commons.getStatement();

        String query = " SELECT COUNT(CASE WHEN ANSWER_ID = 'A1' THEN 1 END ) AS 'VeryStisfied', " +
                " COUNT(CASE WHEN ANSWER_ID = 'A2' THEN 1 END ) AS 'Stisfied', " +
                " COUNT(CASE WHEN ANSWER_ID = 'A3' THEN 1 END ) AS 'Usually', " +
                " COUNT(CASE WHEN ANSWER_ID = 'A4' THEN 1 END ) AS 'Dissatisfied', " +
                " COUNT(CASE WHEN ANSWER_ID = 'A5' THEN 1 END ) AS 'VeryDissatisfied' " +
                " FROM SELECTIVE_SURVEYED INNER JOIN SELECTIVE_QUESTIONS ON SELECTIVE_SURVEYED.QUESTION_ID = SELECTIVE_QUESTIONS.QUESTION_ID GROUP BY SELECTIVE_SURVEYED.QUESTION_ID ";

        ResultSet resultSet = statement.executeQuery(query);
        ArrayList<HashMap> statistic_list = new ArrayList<>();
        while (resultSet.next()) {
            // 컬럼당 해쉬맵에 담기
            HashMap<String, Object> statistics = new HashMap<>();

            statistics.put("VeryStisfied", resultSet.getInt("VeryStisfied"));
            statistics.put("Stisfied", resultSet.getInt("Stisfied"));
            statistics.put("Usually", resultSet.getInt("Usually"));
            statistics.put("Dissatisfied", resultSet.getInt("Dissatisfied"));
            statistics.put("VeryDissatisfied", resultSet.getInt("VeryDissatisfied"));

            statistic_list.add(statistics);

        }

        resultSet.close();
        statement.close();

        return statistic_list;

    }

    // [SOO] 사용자 정보의 집합을 반환
    public ArrayList getUsersInfo() throws SQLException {

        Commons commons = new Commons();
        Statement statement = commons.getStatement();
        String query = "SELECT * FROM USERS";
        ResultSet resultSet = statement.executeQuery(query);
        ArrayList<HashMap> usersInfo = new ArrayList<>();

        while (resultSet.next()) {
            HashMap<String, String> user = new HashMap<>();
            user.put("USER_ID", resultSet.getString("USER_ID"));
            user.put("EMAIL", resultSet.getString("EMAIL"));
            user.put("PASSWORD", resultSet.getString("PASSWORD"));
            user.put("FRIST_NAME", resultSet.getString("FRIST_NAME"));
            user.put("LAST_NAME", resultSet.getString("LAST_NAME"));
            user.put("TITLE_OF_HONOR", resultSet.getString("TITLE_OF_HONOR"));
            user.put("BIRTHDAY", resultSet.getString("BIRTHDAY"));
            user.put("COUNTRY", resultSet.getString("COUNTRY"));
            user.put("STATE", resultSet.getString("STATE"));
            user.put("CITY", resultSet.getString("CITY"));
            user.put("ADDRESS", resultSet.getString("ADDRESS"));
            usersInfo.add(user);
        }

        return usersInfo;

    }

    // [SOO] 예약 정보의 집합을 반환
    public ArrayList getReservInfo() throws SQLException {

        Commons commons = new Commons();
        Statement statement = commons.getStatement();
        String query = "SELECT * FROM RESERVATIONS ORDER BY CHECK_IN_DATE";
        ResultSet resultSet = statement.executeQuery(query);
        ArrayList<HashMap> reservsInfo = new ArrayList<>();

        while (resultSet.next()) {
            HashMap<String, String> reserv = new HashMap<>();
            reserv.put("RESERV_ID", resultSet.getString("RESERV_ID"));
            String userId = resultSet.getString("USER_ID");
            String userName = this.getName(userId);
            reserv.put("USER_NAME", userName);
            reserv.put("CHECK_IN_DATE", resultSet.getString("CHECK_IN_DATE"));
            reserv.put("CHECK_OUT_DATE", resultSet.getString("CHECK_OUT_DATE"));
            reservsInfo.add(reserv);
        }

        return reservsInfo;

    }

    public String getName(String userId) throws SQLException {
        Commons commons = new Commons();
        Statement statement = commons.getStatement();
        String query = "SELECT TITLE_OF_HONOR, FRIST_NAME, LAST_NAME FROM USERS WHERE USER_ID = '" + userId + "'";
        ResultSet resultSet = statement.executeQuery(query);
        String userName = null;

        while (resultSet.next()) {
            HashMap<String, String> reserv = new HashMap<>();
            userName = resultSet.getString("TITLE_OF_HONOR") + " " + resultSet.getString("FRIST_NAME") + " "
                    + resultSet.getString("LAST_NAME");
        }
        return userName;
    }

    // [SOO] 어드민 정보가 정확한지 확인하여 반환
    public boolean isAdmin(String id, String pw) {
        try {
            Commons commons = new Commons();
            Statement statement = commons.getStatement();
            String query = "SELECT * FROM ADMIN WHERE ID = '" + id + "' AND PW = '" + pw + "'";
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // [SOO] 사용자 로그인 정보가 정확한지 확인하여 리턴
    public String isUser(String email, String password) {

        try {
            Commons commons = new Commons();
            Statement statement = commons.getStatement();
            String query = "SELECT USER_ID FROM USERS WHERE EMAIL = '" + email + "' AND PASSWORD = '" + password + "'";
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                String userId = resultSet.getString("USER_ID");
                return userId;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "error";
    }

    // [GYEONG]체크인아웃 날짜 arrayList에 담기
    public ArrayList<HashMap> getDate(String userIDs) throws SQLException {

        Commons commons = new Commons();
        Statement statement = commons.getStatement();

        String query = "SELECT RESERVATIONS.RESERV_ID, RESERVATIONS.CHECK_IN_DATE, RESERVATIONS.CHECK_OUT_DATE, USERS.EMAIL, USERS.USER_ID"
                + " FROM RESERVATIONS INNER JOIN USERS " +
                " ON RESERVATIONS.USER_ID = USERS.USER_ID " +
                " WHERE USERS.USER_ID = '" + userIDs + "'" +
                " ORDER BY CHECK_IN_DATE ";

        ResultSet resultSet = statement.executeQuery(query);

        ArrayList<HashMap> date_list = new ArrayList<>();
        while (resultSet.next()) {
            HashMap<String, Object> dates = new HashMap<>();
            String reserv_ID = resultSet.getString("RESERV_ID");
            String user_ID = resultSet.getString("USER_ID");
            Timestamp checkIn = resultSet.getTimestamp("CHECK_IN_DATE");
            Timestamp checkOut = resultSet.getTimestamp("CHECK_OUT_DATE");
            String email = resultSet.getString("EMAIL");

            dates.put("RESERV_ID", reserv_ID);
            dates.put("USER_ID", user_ID);
            dates.put("CHECK_IN_DATE", checkIn);
            dates.put("CHECK_OUT_DATE", checkOut);
            dates.put("EMAIL", email);

            date_list.add(dates);

        }
        resultSet.close();
        statement.close();

        return date_list;

    }

    // [GYEONG] 답받은 값 DB에 넣기
    public void insertAnswer(String reservId, String q1, String q2, String q3, String q4, String q5)
            throws SQLException {

        Commons commons = new Commons();
        Statement statement = commons.getStatement();

        String query = " INSERT INTO SELECTIVE_SURVEYED " +
                " VALUES ('" + reservId + "', 'Q1', '" + q1 + "')," +
                " ('" + reservId + "', 'Q2', '" + q2 + "'), " +
                " ('" + reservId + "', 'Q3', '" + q3 + "'), " +
                " ('" + reservId + "', 'Q4', '" + q4 + "'), " +
                " ('" + reservId + "', 'Q5', '" + q5 + "') ";

        statement.execute(query);

        statement.close();

    }

    // [GYEONG] 주관식 답 DB에 넣기
    public void insertDesc(String reservId, String answer) throws SQLException {
        Commons commons = new Commons();
        Statement statement = commons.getStatement();

        String query = " INSERT INTO descriptive_surveyed VALUES ('" + reservId + "', 'DQ1', '" + answer + "')";

        statement.execute(query);

        statement.close();

    }

    public boolean isOverlap(String email) throws SQLException {

        Commons commons = new Commons();
        Statement statement = commons.getStatement();
        String query = "SELECT EMAIL FROM USERS WHERE EMAIL = '" + email + "'";
        ResultSet resultSet = statement.executeQuery(query);
        if (resultSet.next()) {
            return true;
        } else {
            return false;
        }

    }

    // [GYEONG] 이미 등록되어있는 숙박날짜의 설문인지 알기위해 테이블에서 RESERV_ID 추출
    public boolean isReservIdDup(String reservId) throws SQLException {
        Commons commons = new Commons();
        Statement statement = commons.getStatement();
        String query = "SELECT RESERV_ID FROM SELECTIVE_SURVEYED WHERE RESERV_ID = '" + reservId + "'";
        ResultSet resultSet = statement.executeQuery(query);
        if (resultSet.next()) {
            return true;
        } else {
            return false;
        }

    }

    // [SOO] admin 전용 설문 출력
    public ArrayList adminStatistics(String target) {
        ArrayList<String> result = new ArrayList<>();
        Commons commons = new Commons();
        Statement statement = commons.getStatement();
        String query;
        ResultSet resultSet;
        try {
            if (target.equals("descriptive")) {
                query = "SELECT ANSWER FROM DESCRIPTIVE_SURVEYED";
                resultSet = statement.executeQuery(query);
                while (resultSet.next()) {
                    result.add(resultSet.getString("ANSWER"));
                }
            } else {
                query = "SELECT COUNT(CASE WHEN ANSWER_ID = 'A1' THEN 1 END ) AS 'A1', "
                        + "COUNT(CASE WHEN ANSWER_ID = 'A2' THEN 1 END ) AS 'A2', "
                        + "COUNT(CASE WHEN ANSWER_ID = 'A3' THEN 1 END ) AS 'A3', "
                        + "COUNT(CASE WHEN ANSWER_ID = 'A4' THEN 1 END ) AS 'A4', "
                        + "COUNT(CASE WHEN ANSWER_ID = 'A5' THEN 1 END ) AS 'A5' "
                        + "FROM SELECTIVE_SURVEYED WHERE QUESTION_ID ='" + target + "'";
                resultSet = statement.executeQuery(query);
                while (resultSet.next()) {
                    result.add(resultSet.getString("A1"));
                    result.add(resultSet.getString("A2"));
                    result.add(resultSet.getString("A3"));
                    result.add(resultSet.getString("A4"));
                    result.add(resultSet.getString("A5"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    // 받아온 회원가입 정보를 전달
    public void insertUser(String[] userInfo) {
        Commons commons = new Commons();
        Statement statement = commons.getStatement();
        // 이번에 가입될 회원의 UID를 가져옴
        String userId = getInsertUserId();
        String query = "INSERT INTO USERS VALUES ('" + userId + "', '" + userInfo[0] + "', '" + userInfo[1] + "', '"
                + userInfo[2]
                + "', '" + userInfo[3] + "', '" + userInfo[4] + "', '" + userInfo[5] + "', '" + userInfo[6] + "', '"
                + userInfo[7] + "', '" + userInfo[8] + "', '" + userInfo[9] + "')";

        try {
            statement.execute(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 현재 회원의 수를 참고하여 새로운 회원번호를 전달
    public String getInsertUserId() {
        Commons commons = new Commons();
        Statement statement = commons.getStatement();
        String query = "SELECT COUNT(USER_ID) AS COUNT FROM USERS";
        String result = null;
        try {
            ResultSet resultSet = statement.executeQuery(query);
            resultSet.next();
            int count = resultSet.getInt("COUNT");
            result = "U" + (count + 1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

}
