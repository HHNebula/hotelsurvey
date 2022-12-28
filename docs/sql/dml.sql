INSERT INTO USERS
VALUES ('U1', 'user1@gmail.com','password1','Jason','Mraz','Mr','1977-06-23','USA','Virginia','Mechanicsville','14F'),
('U2', 'user2@gmail.com','password2','Colin','Firth','Mr','1977-06-23','USA','Virginia','Mechanicsville','14F'),
('U3', 'user3@gmail.com','password3','Jude','Law','Mr','1977-06-23','USA','Virginia','Mechanicsville','14F'),
('U4', 'user4@gmail.com','password4','Michael','Gambon','Sir','1977-06-23','USA','Virginia','Mechanicsville','14F'),
('U5', 'user5@gmail.com','password5','Hugh','Grant','Mr','1977-06-23','USA','Virginia','Mechanicsville','14F');

INSERT INTO RESERVATIONS
VALUES ('R1', 'U1', '2022-12-01', '2022-12-02'),
('R2', 'U1', '2022-12-01', '2022-12-02'),
('R3', 'U1', '2022-12-12', '2022-12-18'),
('R4', 'U1', '2023-01-09', '2022-01-23'),
('R5', 'U2', '2022-12-01', '2022-12-04'),
('R6', 'U2', '2022-12-14', '2022-12-18'),
('R7', 'U2', '2022-12-23', '2022-12-28'),
('R8', 'U2', '2023-01-01', '2023-01-12'),
('R9', 'U2', '2023-01-17', '2022-01-18'),
('R10', 'U3', '2022-12-01', '2022-12-02'),
('R11', 'U3', '2022-12-10', '2022-12-12'),
('R12', 'U3', '2022-12-24', '2022-12-26'),
('R13', 'U4', '2022-12-01', '2022-12-05'),
('R14', 'U4', '2022-12-10', '2022-12-15'),
('R15', 'U4', '2022-12-20', '2022-12-25'),
('R16', 'U4', '2023-01-01', '2023-01-06'),
('R17', 'U5', '2022-12-04', '2022-12-06'),
('R18', 'U5', '2022-12-24', '2022-12-29'),
('R19', 'U5', '2023-01-01', '2023-01-04'),
('R20', 'U5', '2023-01-10', '2023-01-15');

INSERT INTO SELECTIVE_QUESTIONS
VALUES ('Q1', '호텔을 찾아오시는 길은 편리하셨습니까?', '1'),
('Q2', '호텔을 찾아오시는 길은 편리하셨습니까?', '2'),
('Q3', '호텔을 찾아오시는 길은 편리하셨습니까?', '3'),
('Q4', '호텔을 찾아오시는 길은 편리하셨습니까?', '4'),
('Q5', '호텔을 찾아오시는 길은 편리하셨습니까?', '5');

INSERT INTO DESCRIPTIVE_QUESTIONS
VALUES ('DQ1', '고객님의 소중한 의견을 자유롭게 남겨주세요.');

INSERT INTO SELECTIVE_ANSWERS
VALUES ('A1', '매우만족', '1'),
('A2', '만족', '2'),
('A3', '보통', '3'),
('A4', '불만', '4'),
('A5', '매우불만', '5');

INSERT INTO QUESTION_ANSWER
VALUES ('Q1', 'A1'),
('Q1', 'A2'),
('Q1', 'A3'),
('Q1', 'A4'),
('Q1', 'A5'),
('Q2', 'A1'),
('Q2', 'A2'),
('Q2', 'A3'),
('Q2', 'A4'),
('Q2', 'A5'),
('Q3', 'A1'),
('Q3', 'A2'),
('Q3', 'A3'),
('Q3', 'A4'),
('Q3', 'A5'),
('Q4', 'A1'),
('Q4', 'A2'),
('Q4', 'A3'),
('Q4', 'A4'),
('Q4', 'A5'),
('Q5', 'A1'),
('Q5', 'A2'),
('Q5', 'A3'),
('Q5', 'A4'),
('Q5', 'A5');

INSERT INTO SELECTIVE_SURVEYED
VALUES ('R1', 'Q1', 'A1'),
('R1', 'Q2', 'A2'),
('R1', 'Q3', 'A2'),
('R1', 'Q4', 'A3'),
('R1', 'Q5', 'A4'),
('R5', 'Q1', 'A2'),
('R5', 'Q2', 'A1'),
('R5', 'Q3', 'A1'),
('R5', 'Q4', 'A4'),
('R5', 'Q5', 'A2'),
('R10', 'Q1', 'A1'),
('R10', 'Q2', 'A3'),
('R10', 'Q3', 'A3'),
('R10', 'Q4', 'A1'),
('R10', 'Q5', 'A5'),
('R13', 'Q1', 'A5'),
('R13', 'Q2', 'A5'),
('R13', 'Q3', 'A1'),
('R13', 'Q4', 'A1'),
('R13', 'Q5', 'A1'),
('R17', 'Q1', 'A1'),
('R17', 'Q2', 'A1'),
('R17', 'Q3', 'A4'),
('R17', 'Q4', 'A1'),
('R17', 'Q5', 'A1');

INSERT INTO DESCRIPTIVE_SURVEYED
VALUES ('R1', 'DQ1', '좋았어요!'),
('R5', 'DQ1', '푹 쉬다 갑니다!'),
('R10', 'DQ1', '화장실 청소에 신경써주세요.'),
('R13', 'DQ1', '음식이 별로에요!'),
('R17', 'DQ1', '직원들이 참 친절해요!');

INSERT INTO ADMIN
VALUES ('ADM1', 'admin', 'admin01');