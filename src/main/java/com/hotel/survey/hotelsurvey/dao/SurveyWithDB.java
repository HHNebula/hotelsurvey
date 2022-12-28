package com.hotel.survey.hotelsurvey.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

public class SurveyWithDB {

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
                    answer.put("ANSWER_ID ", resultSetAnswer.getString("ANSWER_ID"));
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

    public ArrayList<HashMap> getStatistics() throws SQLException {

        Commons commons = new Commons();
        Statement statement = commons.getStatement();

        String query = " SELECT COUNT(CASE WHEN ANSWER_ID = 'A1' THEN 1 END ) AS '매우 만족', " +
                " COUNT(CASE WHEN ANSWER_ID = 'A2' THEN 1 END ) AS '만족', " +
                " COUNT(CASE WHEN ANSWER_ID = 'A3' THEN 1 END ) AS '보통', " +
                " COUNT(CASE WHEN ANSWER_ID = 'A4' THEN 1 END ) AS '불만', " +
                " COUNT(CASE WHEN ANSWER_ID = 'A5' THEN 1 END ) AS '매우 불만' " +
                " FROM SELECTIVE_SURVEYED INNER JOIN SELECTIVE_QUESTIONS ON SELECTIVE_SURVEYED.QUESTION_ID = SELECTIVE_QUESTIONS.QUESTION_ID GROUP BY SELECTIVE_SURVEYED.QUESTION_ID ";

        ResultSet resultSet = statement.executeQuery(query);
        ArrayList<HashMap> statistic_list = null;
        while (resultSet.next()) {
            // 컬럼당 해쉬맵에 담기
            HashMap<String, Object> statistics = new HashMap<>();
            int as1 = resultSet.getInt("매우 만족");
            int as2 = resultSet.getInt("만족");
            int as3 = resultSet.getInt("보통");
            int as4 = resultSet.getInt("불만");
            int as5 = resultSet.getInt("매우 불만");

            statistics.put("VeryStisfied", as1);
            statistics.put("Stisfied", as2);
            statistics.put("Usually", as3);
            statistics.put("Dissatisfied", as4);
            statistics.put("VeryDissatisfied", as5);

            // 다시 어레이리스트에 담기
            statistic_list = new ArrayList<>();
            statistic_list.add(statistics);

        }
        return statistic_list;
    }

    /**
     * 유저정보를 HashMap에 담아
     * ArrayList로 리턴
     * 
     * @throws SQLException
     */
    public ArrayList getUsersInfo() throws SQLException {

        Commons commons = new Commons();
        Statement statement = commons.getStatement();
        String query = "SELECT * FROM USERS";
        ResultSet resultSet = statement.executeQuery(query);

        ArrayList<HashMap> usersInfo = new ArrayList<>();
        while (resultSet.next()) {
            HashMap<String, String> user = new HashMap<>();
            user.put("USER_ID", resultSet.getString("USER_ID"));
            user.put("EMAIL ", resultSet.getString("EMAIL"));
            user.put("PASSWORD ", resultSet.getString("PASSWORD"));
            user.put("FRIST_NAME ", resultSet.getString("FRIST_NAME"));
            user.put("LAST_NAME ", resultSet.getString("LAST_NAME"));
            user.put("TITLE_OF_HONOR ", resultSet.getString("TITLE_OF_HONOR"));
            user.put("BIRTHDAY ", resultSet.getString("BIRTHDAY"));
            user.put("COUNTRY ", resultSet.getString("COUNTRY"));
            user.put("STATE ", resultSet.getString("STATE"));
            user.put("CITY ", resultSet.getString("CITY"));
            user.put("ADDRESS ", resultSet.getString("ADDRESS"));
            usersInfo.add(user);
        }

        return usersInfo;

    }

}
