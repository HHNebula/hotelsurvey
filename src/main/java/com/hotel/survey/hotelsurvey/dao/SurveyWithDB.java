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
                // 설문 문항에 맞는 설문 답항 출력
                System.out.print(resultSet.getInt("ORDERS") + ". ");
                System.out.println(resultSet.getString("QUESTION"));
                String uid = resultSet.getString("QUESTION_ID");
                // 해쉬맵에 담기
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
                // 설문 답항 출력
                ArrayList<HashMap> answer_list = new ArrayList<HashMap>();
                while (resultSetAnswer.next()) {
                    System.out.print(resultSetAnswer.getInt("ORDERS") + ". ");
                    System.out.println(resultSetAnswer.getString("ANSWER"));
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
}
