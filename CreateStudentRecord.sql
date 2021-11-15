use college;
CREATE TABLE IF NOT EXISTS StudentRecord (
	FirstName varchar(255),
    Surname varchar(255),
    SubjectMarks json,
    AverageScore float,
    Grade char
);