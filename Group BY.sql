show databases;

use testDB;

CREATE TABLE ExamScores (
    StudentID INT,
    Class VARCHAR(50),
    Score INT
);

desc ExamScores;

INSERT INTO ExamScores (StudentID, Class, Score) VALUES
(1, 'Math', 85),
(2, 'Math', 90),
(3, 'Science', 78),
(4, 'Science', 88),
(5, 'Math', 95),
(6, 'Science', 82);

select * from ExamScores;

SELECT Class, AVG(Score) AS AverageScore
FROM ExamScores
GROUP BY Class;

-- this is invalid
SELECT Class, AVG(Score) AS AverageScore
FROM ExamScores
GROUP BY Class;

-- this is also invalid
select * from ExamScores group by class;

