CREATE DATABASE hotelsurvey DEFAULT CHARACTER SET UTF8 COLLATE UTF8_GENERAL_CI;

use hotelsurvey;

SET sql_mode='';


CREATE TABLE ADMIN
(
ADMIN_ID VARCHAR(255) NOT NULL COMMENT '관리자 고유 아이디',
ID       VARCHAR(255) NULL     COMMENT '로그인 아이디',
PW       VARCHAR(255) NULL     COMMENT '로그인 비밀번호',
PRIMARY KEY (ADMIN_ID)
) COMMENT '관리자';

CREATE TABLE DESCRIPTIVE_QUESTIONS
(
QUESTION_ID VARCHAR(255) NOT NULL COMMENT '질문 고유 아이디',
QUESTION    VARCHAR(255) NOT NULL COMMENT '질문 내용',
PRIMARY KEY (QUESTION_ID)
) COMMENT '서술형 문항';

CREATE TABLE DESCRIPTIVE_SURVEYED
(
RESERV_ID   VARCHAR(255) NOT NULL COMMENT '예약 번호',
QUESTION_ID VARCHAR(255) NOT NULL COMMENT '질문 고유 아이디',
ANSWER      VARCHAR(255) NOT NULL COMMENT '응답 내용'
) COMMENT '서술형 설문 완료 항목';

CREATE TABLE QUESTION_ANSWER
(
QUESTION_ID VARCHAR(255) NOT NULL COMMENT '질문 고유 아이디',
ANSWER_ID   VARCHAR(255) NOT NULL COMMENT '응답 고유 아이디'
) COMMENT '문항별 답항';

CREATE TABLE RESERVATIONS
(
RESERV_ID      VARCHAR(255) NOT NULL COMMENT '예약 번호',
USER_ID        VARCHAR(255) NOT NULL COMMENT '사용자 고유 아이디',
CHECK_IN_DATE  TIMESTAMP    NOT NULL COMMENT '체크인 날짜',
CHECK_OUT_DATE TIMESTAMP    NOT NULL COMMENT '체크아웃 날짜',
PRIMARY KEY (RESERV_ID)
) COMMENT '예약 내역';

CREATE TABLE SELECTIVE_ANSWERS
(
ANSWER_ID VARCHAR(255) NOT NULL COMMENT '응답 고유 아이디',
ANSWER    VARCHAR(255) NOT NULL COMMENT '응답 내용',
ORDERS     VARCHAR(255) NOT NULL COMMENT '응답 순번',
PRIMARY KEY (ANSWER_ID)
) COMMENT '선택형 응답';

CREATE TABLE SELECTIVE_QUESTIONS
(
QUESTION_ID VARCHAR(255) NOT NULL COMMENT '질문 고유 아이디',
QUESTION    VARCHAR(255) NOT NULL COMMENT '질문 내용',
ORDERS       VARCHAR(255) NOT NULL COMMENT '질문 순서',
PRIMARY KEY (QUESTION_ID)
) COMMENT '선택형 문항';

CREATE TABLE SELECTIVE_SURVEYED
(
RESERV_ID   VARCHAR(255) NOT NULL COMMENT '예약 번호',
QUESTION_ID VARCHAR(255) NOT NULL COMMENT '질문 고유 아이디',
ANSWER_ID   VARCHAR(255) NOT NULL COMMENT '응답 고유 아이디'
) COMMENT '선택형 설문 완료 항목';

CREATE TABLE USERS
(
USER_ID        VARCHAR(255) NOT NULL COMMENT '사용자 고유 아이디',
EMAIL          VARCHAR(255) NOT NULL COMMENT '이메일 주소',
PASSWORD       VARCHAR(255) NOT NULL COMMENT '비밀번호',
FRIST_NAME     VARCHAR(255) NOT NULL COMMENT '이름',
LAST_NAME      VARCHAR(255) NOT NULL COMMENT '성',
TITLE_OF_HONOR VARCHAR(255) NOT NULL COMMENT '경칭',
BIRTHDAY       TIMESTAMP    NOT NULL COMMENT '생일',
COUNTRY        VARCHAR(255) NOT NULL COMMENT '국가',
STATE          VARCHAR(255) NOT NULL COMMENT '주,도',
CITY           VARCHAR(255) NOT NULL COMMENT '시',
ADDRESS        VARCHAR(255) NOT NULL COMMENT '상세주소',
PRIMARY KEY (USER_ID)
) COMMENT '사용자 정보';

ALTER TABLE RESERVATIONS
ADD CONSTRAINT FK_USERS_TO_RESERVATIONS
FOREIGN KEY (USER_ID)
REFERENCES USERS (USER_ID);

ALTER TABLE SELECTIVE_SURVEYED
ADD CONSTRAINT FK_RESERVATIONS_TO_SELECTIVE_SURVEYED
FOREIGN KEY (RESERV_ID)
REFERENCES RESERVATIONS (RESERV_ID);

ALTER TABLE SELECTIVE_SURVEYED
ADD CONSTRAINT FK_SELECTIVE_QUESTIONS_TO_SELECTIVE_SURVEYED
FOREIGN KEY (QUESTION_ID)
REFERENCES SELECTIVE_QUESTIONS (QUESTION_ID);

ALTER TABLE SELECTIVE_SURVEYED
ADD CONSTRAINT FK_SELECTIVE_ANSWERS_TO_SELECTIVE_SURVEYED
FOREIGN KEY (ANSWER_ID)
REFERENCES SELECTIVE_ANSWERS (ANSWER_ID);

ALTER TABLE DESCRIPTIVE_SURVEYED
ADD CONSTRAINT FK_RESERVATIONS_TO_DESCRIPTIVE_SURVEYED
FOREIGN KEY (RESERV_ID)
REFERENCES RESERVATIONS (RESERV_ID);

ALTER TABLE DESCRIPTIVE_SURVEYED
ADD CONSTRAINT FK_DESCRIPTIVE_QUESTIONS_TO_DESCRIPTIVE_SURVEYED
FOREIGN KEY (QUESTION_ID)
REFERENCES DESCRIPTIVE_QUESTIONS (QUESTION_ID);

ALTER TABLE QUESTION_ANSWER
ADD CONSTRAINT FK_SELECTIVE_QUESTIONS_TO_QUESTION_ANSWER
FOREIGN KEY (QUESTION_ID)
REFERENCES SELECTIVE_QUESTIONS (QUESTION_ID);

ALTER TABLE QUESTION_ANSWER
ADD CONSTRAINT FK_SELECTIVE_ANSWERS_TO_QUESTION_ANSWER
FOREIGN KEY (ANSWER_ID)
REFERENCES SELECTIVE_ANSWERS (ANSWER_ID);
