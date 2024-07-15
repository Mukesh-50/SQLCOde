use testDB;

CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(50)
);

select * from Students;

INSERT INTO Students (StudentID, Name)
VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');


CREATE TABLE Scores (
    StudentID INT,
    Score INT
);

INSERT INTO Students (StudentID, Name)
VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

INSERT INTO Scores (StudentID, Score)
VALUES
(2, 85),
(3, 90),
(4, 95);

select * from Scores;
select * from Students;

delete from Students;

INSERT INTO Scores (StudentID, Score)
VALUES
(2, 85),
(3, 90),
(4, 95);

INSERT INTO Students (StudentID, Name)
VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

SELECT Students.StudentID, Students.Name, Scores.Score
FROM Students
LEFT JOIN Scores ON Students.StudentID = Scores.StudentID;

SELECT Students.StudentID, Students.Name, Scores.Score
FROM Students
RIGHT JOIN Scores ON Students.StudentID = Scores.StudentID;

SELECT Students.StudentID, Students.Name, Scores.Score
FROM Students
LEFT JOIN Scores ON Students.StudentID = Scores.StudentID
UNION
SELECT Scores.StudentID, Students.Name, Scores.Score
FROM Students
RIGHT JOIN Scores ON Students.StudentID = Scores.StudentID;
