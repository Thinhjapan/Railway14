DROP DATABASE IF EXISTS Testing_System;
CREATE DATABASE Testing_System;
USE Testing_System;

-- Create table 1: Department
-- them note
CREATE TABLE Department (
	DepartmentID   			INT,
	DepartmentName 			VARCHAR(50)
);

-- Create table 2: Position
CREATE TABLE `Position` (
	PositionID   			INT,
	PositionName 			VARCHAR(50)
);

-- Create table 3: Account
CREATE TABLE `Account` (
	AccountID 				INT,
	Email        			VARCHAR(50),
	Username     			VARCHAR(50),
	FullName     			VARCHAR(50),
	DepartmentID 			INT,
	PositionID   			INT,
	CreateDate   			DATE
);

-- Create table 4: Group
CREATE TABLE `Group` (
	GroupID    				INT,
	GroupName  				VARCHAR(50),
	CreatorID 				INT,
	CreateDate   			DATE
);

-- Create table 5:  GroupAccount
CREATE TABLE GroupAccount (
	GroupID  				INT,
	AccountID				INT,
	JoinDate 				DATE
	);
    
-- Create table 6: TypeQuestion
CREATE TABLE TypeQuestion (
	TypeID   				INT,
	TypeName 				VARCHAR(50)
);

-- Create table 7: CategoryQuestion
CREATE TABLE CategoryQuestion (
	CategoryID  			INT,
	CategoryName			VARCHAR(50)
);

-- Create table 8: Question
CREATE TABLE Question (
	QuestionID				INT,
	Content   				VARCHAR(50),
	CategoryID				INT,
	TypeID    				INT,
	CreatorID 				INT,
	CreateDate				DATE
);

-- Create table 9: Answer
CREATE TABLE Answer (
	AnswerID  				INT,
	Content   				VARCHAR(50),
	QuestionID				INT,
	isCorrect 				VARCHAR(50)
);

-- Create table 10: Exam
CREATE TABLE Exam (
	ExamID   				INT,
    `Code` 					VARCHAR(50),
    Title			 		VARCHAR(50),
    CategoryID			 	INT,
    Duration 				VARCHAR(50),
    CreatorID				INT,
    CreateDate 				DATE
);

-- Create table 11: ExamQuestion
CREATE TABLE ExamQuestion (
	ExamID     				INT,
	QuestionID				INT
);