DROP DATABASE IF EXISTS Project_18210705;
CREATE DATABASE Project_18210705;
USE Project_18210705;

CREATE TABLE Student(
	Student_ID VARCHAR(7),
    Student_Name VARCHAR(20),
    GPA DECIMAL(3,2),
    Stream VARCHAR(15),
PRIMARY KEY(Student_ID)
);
INSERT INTO Student values
('3906145','Will VonRueden','2.63','CS+DS'),
('3912076','Cesar Borer','3.12','CS+DS'),
('3973076','Tyson Lueilwitz','3.96','CS'),
('3981423','Eda Armstrong','1.53','CS+DS'),
('4093754','Darien Keebler','3.77','CS+DS'),
('4146664','Omari Harvey','1.93','CS+DS'),
('4150466','Hosea Boyer IV','2.00','CS'),
('4165377','Verlie Kuhlman','2.62','CS'),
('4175826','Janelle Wintheiser','2.83','CS'),
('4239679','Esta Lubowitz','3.80','CS+DS'),
('4244610','Carlos Ortiz','3.81','CS'),
('4498609','Reagan Amore','1.33','CS'),
('4617145','Bradly McLaughlin','1.46','CS'),
('4648219','Torrance Hammes','1.33','CS'),
('4751231','Declan Roob','3.03','CS'),
('4846822','Jeffrey Boyer','1.97','CS+DS'),
('4857721','Titus Effertz','2.69','CS'),
('4877188','Aleen McKenzie','3.73','CS'),
('4924912','Ervin Price','3.59','CS+DS'),
('4958970','Amari Barrows','2.58','CS+DS'),
('4974001','Josefa Veum I','2.71','CS+DS'),
('5025900','Esperanza Yost','2.93','CS'),
('5047013','Will Dare','2.69','CS+DS'),
('5061857','Easter Schiller','3.63','CS'),
('5139874','Janis Roberts','1.51','CS+DS'),
('5154148','Jermey Haag','3.26','CS'),
('5168146','Rozella Brakus','1.73','CS'),
('5186529','Bettye Wunsch S','3.95','CS'),
('5187390','Sandra Schamberger','2.87','CS+DS'),
('5193123','Mike Spendlove','4.0','CS+DS');

CREATE TABLE Project(
	Project_ID VARCHAR(5),
    Project_Name VARCHAR(60),
    Supervisor_Name VARCHAR(20),
    Stream VARCHAR(15),
PRIMARY KEY(Project_ID)
);
INSERT INTO Project values
('CSDS0','Human Resource Management System','Armando Kihn','CS or CS+DS'),
('CSDS1','Student Status Management System','Rashawn Berge','CS or CS+DS'),
('CSDS2','Student Information Management System','Mozell Frami','CS or CS+DS'),
('CSDS3','Student Online Course Selection System','Jany Oberbrunner','CS or CS+DS'),
('CS000','Cthulhu skiing apps,','Rashawn Berge','CS'),
('CS001','Cthulhu Public Transportation Inquiry System','Thad Quigley','CS'),
('CS002','Cthulhu lease Management System of Audio-visual Store','Christy Kris','CS'),
('CS003','Cthulhu office automation system','Vita Cole','CS'),
('CS004','Cthulhu Local monitoring and remote port scanning','Jany Oberbrunner','CS'),
('CS005','Cthulhu Electronic address book','Armando Kihn','CS'),
('CS006','Cthulhu Personal finance system','Bernadette Romag','CS'),
('CS007','Cthulhu Laboratory Resource Management System','Jonathan Altenwerth','CS'),
('CS008','Cthulhu Backgammon game design','Tremayne Ledner','CS'),
('CS009','Cthulhu Bank Account Management System','Rashawn Berge','CS'),
('CS010','Cthulhu Library management system','Thad Quigley','CS'),
('CS011','Cthulhu Community Property Management System','Christy Kris','CS'),
('CS012','Cthulhu CD sales management','Vita Cole','CS'),
('CS013','Cthulhu C language test questions generation and test app','Jany Oberbrunner','CS'),
('DS000','Dagon	marathon apps','Alberto Russel','CS+DS'),
('DS001','Dagon Eldritch fitness monitors','Sheridan Considine','CS+DS'),
('DS002','Dagon Medicine Management System','Eldon Rowe','CS+DS'),
('DS003','Dagon p2p file sharing','Amaya Wuckert','CS+DS'),
('DS004','Dagon Online learning apps','Jackeline Streich','CS+DS'),
('DS005','Dagon Travel website','Mozell Frami','CS+DS'),
('DS006','Dagon Operation Management System','Gretchen Bernhard','CS+DS'),
('DS007','Dagon Drug sales data management System','Nadia Howe','CS+DS'),
('DS008','Dagon Online Exam System','Alberto Russel','CS+DS'),
('DS009','Dagon Online laboratory appointment','Sheridan Considine','CS+DS'),
('DS010','Dagon Online book purchase','Eldon Rowe','CS+DS'),
('DS011','Dagon Mobile phone supermarket','Amaya Wuckert','CS+DS'); 



CREATE TABLE Staff(
	Staff_ID VARCHAR(7),
    Staff_Name VARCHAR(20),
    Research_Stream VARCHAR(15),
PRIMARY KEY(Staff_ID)
);
INSERT INTO Staff values
('CS80000','Rashawn Berge','CS'),
('CS80001','Thad Quigley','CS'),
('CS80002','Christy Kris','CS'),
('CS80003','Vita Cole','CS'),
('CS80004','Jany Oberbrunner','CS'),
('CS80005','Armando Kihn','CS'),
('CS80006','Bernadette Romag','CS'),
('CS80007','Jonathan Altenwerth','CS'),
('CS80008','Tremayne Ledner','CS'),
('DS91110','Alberto Russel','CS+DS'),
('DS91111','Sheridan Considine','CS+DS'),
('DS91112','Eldon Rowe','CS+DS'),
('DS91113','Amaya Wuckert','CS+DS'),
('DS91114','Jackeline Streich','CS+DS'),
('DS91115','Mozell Frami','CS+DS'),
('DS91116','Gretchen Bernhard','CS+DS'),
('DS91117','Nadia Howe','CS+DS');


CREATE TABLE Matrix(
	Student_ID VARCHAR(7),
    Project1 VARCHAR(5),
    Project2 VARCHAR(5),
    Project3 VARCHAR(5),
    Project4 VARCHAR(5),
    Project5 VARCHAR(5),
    Project6 VARCHAR(5),
    Project7 VARCHAR(5),
    Project8 VARCHAR(5),
    Project9 VARCHAR(5),
    Project10 VARCHAR(5),
    Project11 VARCHAR(5),
    Project12 VARCHAR(5),
    Project13 VARCHAR(5),
    Project14 VARCHAR(5),
    Project15 VARCHAR(5),
    Project16 VARCHAR(5),
    Project17 VARCHAR(5),
    Project18 VARCHAR(5),
    Project19 VARCHAR(5),
    Project20 VARCHAR(5),
PRIMARY KEY(Student_ID)
);
INSERT INTO Matrix(Student_ID) SELECT Student_ID FROM student;

CREATE TABLE Allocation(
	Student_Name VARCHAR(20),
    Project_ID VARCHAR(5),
PRIMARY KEY(Student_Name)
);
INSERT INTO Allocation values
('Tyson Lueilwitz','CS000'),
('Hosea Boyer IV','CS001'),
('Verlie Kuhlman','CS002'),
('Janelle Wintheiser','CS003'),
('Carlos Ortiz','CS004'),
('Reagan Amore','CS005'),
('Bradly McLaughlin','CS006'),
('Torrance Hammes','CS007'),
('Declan Roob','CS008'),
('Titus Effertz','CS009'),
('Aleen McKenzie','CS010'),
('Esperanza Yost','CS011'),
('Easter Schiller','CS012'),
('Jermey Haag','CS013'),
('Will VonRueden','DS000'),
('Cesar Borer','DS001'),
('Eda Armstrong','DS002'),
('Darien Keebler','DS003'),
('Omari Harvey','DS004'),
('Esta Lubowitz','DS005'),
('Jeffrey Boyer','DS006'),
('Ervin Price','DS007'),
('Amari Barrows','DS008'),
('Josefa Veum I','DS009'),
('Will Dare','DS010'),
('Janis Roberts','DS011'),
('Sandra Schamberger','CSDS0'),
('Mike Spendlove','CSDS1'),
('Rozella Brakus','CSDS2'),
('Bettye Wunsch S','CSDS3');

alter table Allocation add Student_ID varchar(7);
UPDATE Allocation a,Student b
SET a.Student_ID=b.Student_ID
WHERE a.Student_Name=b.Student_Name;
alter table Allocation modify Student_ID varchar(7) first;

alter table Project add Raised_Student varchar(20);
UPDATE Project
SET Raised_Student=(
SELECT Allocation.Student_ID
FROM Allocation
WHERE Allocation.Project_ID=Project.Project_ID)
WHERE Project.Project_ID in ('CS002','DS011');

CREATE TABLE Mentorship(
	Student_ID VARCHAR(7),
    Staff_ID VARCHAR(7),
PRIMARY KEY(Student_ID)
);
INSERT INTO Mentorship(Student_ID) SELECT Student_ID FROM student;

SET SQL_SAFE_UPDATES=0;
UPDATE Mentorship
SET Mentorship.Staff_ID= (
SELECT Staff.Staff_ID FROM Staff
INNER JOIN Project a ON Staff.Staff_Name=a.Supervisor_Name
INNER JOIN Allocation b ON a.Project_ID=b.Project_ID
WHERE Mentorship.Student_ID=b.Student_ID);

CREATE TABLE Proposal(
	Project_ID VARCHAR(5),
    Staff_ID VARCHAR(7),
PRIMARY KEY(Project_ID)
);
INSERT INTO Proposal(Project_ID) SELECT Project_ID FROM Project;

SET SQL_SAFE_UPDATES=0;

UPDATE Proposal
SET Proposal.Staff_ID= (
SELECT a.Staff_ID FROM Staff a
INNER JOIN Project b ON a.Staff_Name=b.Supervisor_Name
WHERE Proposal.project_ID=b.Project_ID);

-- CONSTRAINS
ALTER TABLE `project_18210705`.`student` 
CHANGE COLUMN `Student_Name` `Student_Name` VARCHAR(20) NOT NULL ,
CHANGE COLUMN `GPA` `GPA` DECIMAL(3,2) NOT NULL ,
CHANGE COLUMN `Stream` `Stream` VARCHAR(15) NOT NULL ;

ALTER TABLE `project_18210705`.`staff` 
CHANGE COLUMN `Staff_Name` `Staff_Name` VARCHAR(20) NOT NULL ,
CHANGE COLUMN `Research_Stream` `Research_Stream` VARCHAR(15) NOT NULL ;

ALTER TABLE `project_18210705`.`project` 
CHANGE COLUMN `Project_Name` `Project_Name` VARCHAR(60) NOT NULL ,
CHANGE COLUMN `Supervisor_Name` `Supervisor_Name` VARCHAR(20) NOT NULL ,
CHANGE COLUMN `Stream` `Stream` VARCHAR(15) NOT NULL ;


ALTER TABLE `project_18210705`.`matrix` 
ADD CONSTRAINT `matrix_fk0`
  FOREIGN KEY (`Student_ID`)
  REFERENCES `project_18210705`.`student` (`Student_ID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `project_18210705`.`allocation` 
CHANGE COLUMN `Student_ID` `Student_ID` VARCHAR(7) NOT NULL ,
CHANGE COLUMN `Project_ID` `Project_ID` VARCHAR(5) NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`Student_ID`),
ADD INDEX `allocation_fk1_idx` (`Project_ID` ASC) VISIBLE;
;
ALTER TABLE `project_18210705`.`allocation` 
ADD CONSTRAINT `allocation_fk0`
  FOREIGN KEY (`Student_ID`)
  REFERENCES `project_18210705`.`student` (`Student_ID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `allocation_fk1`
  FOREIGN KEY (`Project_ID`)
  REFERENCES `project_18210705`.`project` (`Project_ID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `project_18210705`.`mentorship` 
CHANGE COLUMN `Staff_ID` `Staff_ID` VARCHAR(7) NOT NULL ,
ADD INDEX `mentorship_fk1_idx` (`Staff_ID` ASC) VISIBLE;
;
ALTER TABLE `project_18210705`.`mentorship` 
ADD CONSTRAINT `mentorship_fk0`
  FOREIGN KEY (`Student_ID`)
  REFERENCES `project_18210705`.`student` (`Student_ID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `mentorship_fk1`
  FOREIGN KEY (`Staff_ID`)
  REFERENCES `project_18210705`.`staff` (`Staff_ID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `project_18210705`.`proposal` 
CHANGE COLUMN `Staff_ID` `Staff_ID` VARCHAR(7) NOT NULL ,
ADD INDEX `Proposal_fk1_idx` (`Staff_ID` ASC) VISIBLE;
;
ALTER TABLE `project_18210705`.`proposal` 
ADD CONSTRAINT `Proposal_fk0`
  FOREIGN KEY (`Project_ID`)
  REFERENCES `project_18210705`.`project` (`Project_ID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `Proposal_fk1`
  FOREIGN KEY (`Staff_ID`)
  REFERENCES `project_18210705`.`staff` (`Staff_ID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

-- VIEWS
CREATE VIEW Student_CSRanking AS(
SELECT * FROM Student 
WHERE Student.Stream='CS'
ORDER BY Student.GPA DESC);

CREATE VIEW Student_DSRanking AS(
SELECT * FROM Student 
WHERE Student.Stream='CS+DS'
ORDER BY Student.GPA DESC);

CREATE VIEW SPS AS(
SELECT Allocation.Student_ID, Allocation.Student_Name, Project.Project_Name, Project.Supervisor_Name
FROM Allocation
INNER JOIN Project on Allocation.Project_ID=Project.Project_ID);

CREATE VIEW Project_CS AS(
SELECT * FROM Project 
WHERE Project.Stream='CS');

CREATE VIEW Project_DS AS(
SELECT * FROM Project
WHERE Project.Stream='CS+DS');

CREATE VIEW Project_CSDS AS(
SELECT * FROM Project
WHERE Project.Stream='CS or CS+DS');

-- triggers on student table
DROP TRIGGER IF EXISTS `project_18210705`.`student_BEFORE_INSERT`;

DELIMITER $$
USE `project_18210705`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `student_BEFORE_INSERT`
BEFORE INSERT ON `student` FOR EACH ROW BEGIN
	IF NEW.GPA < 0 THEN
		SET NEW.GPA = 0;
	ELSEIF NEW.GPA > 4.2 THEN
		SET NEW.GPA = 4.2;
	END IF;
    IF New.Stream='DS' THEN
		SET NEW.Stream='CS+DS';
	END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `project_18210705`.`student_BEFORE_UPDATE`;

DELIMITER $$
USE `project_18210705`$$
CREATE DEFINER = CURRENT_USER TRIGGER `project_18210705`.`student_BEFORE_UPDATE` 
BEFORE UPDATE ON `student` FOR EACH ROW
BEGIN
	IF NEW.GPA < 0 THEN
		SET NEW.GPA = 0;
	ELSEIF NEW.GPA > 4.2 THEN
		SET NEW.GPA = 4.2;
	END IF;
    IF New.Stream='DS' THEN
		SET NEW.Stream='CS+DS';
	END IF;
END$$
DELIMITER ;



-- after update trigger on Student table
DROP TRIGGER IF EXISTS `project_18210705`.`student_AFTER_UPDATE`;

DELIMITER $$
USE `project_18210705`$$
CREATE DEFINER = CURRENT_USER TRIGGER `project_18210705`.`student_AFTER_UPDATE` 
AFTER UPDATE ON `student` FOR EACH ROW
BEGIN
	IF OLD.Student_Name <> NEW.Student_Name THEN
		UPDATE Allocation
        SET Allocation.Student_Name=NEW.Student_Name
        WHERE Allocation.Student_Name=OLD.Student_Name;
	END IF;
END$$
DELIMITER ;


-- triggers on staff table
DROP TRIGGER IF EXISTS `project_18210705`.`staff_BEFORE_INSERT`;
DELIMITER $$
USE `project_18210705`$$
CREATE DEFINER = CURRENT_USER TRIGGER `project_18210705`.`staff_BEFORE_INSERT` 
BEFORE INSERT ON `staff` FOR EACH ROW
BEGIN
	IF NEW.Research_Stream='DS' THEN 
		SET NEW.Research_Stream='CS+DS';
	END IF;
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `project_18210705`.`staff_BEFORE_UPDATE`;
DELIMITER $$
USE `project_18210705`$$
CREATE DEFINER = CURRENT_USER TRIGGER `project_18210705`.`staff_BEFORE_UPDATE`
BEFORE UPDATE ON `staff` FOR EACH ROW
BEGIN
	IF NEW.Research_Stream='DS' THEN 
		SET NEW.Research_Stream='CS+DS';
	END IF;
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS `project_18210705`.`staff_AFTER_UPDATE`;
DELIMITER $$
USE `project_18210705`$$
CREATE DEFINER = CURRENT_USER TRIGGER `project_18210705`.`staff_AFTER_UPDATE`
AFTER UPDATE ON `staff` FOR EACH ROW
BEGIN
	IF OLD.Staff_Name<>NEW.Staff_Name THEN
		UPDATE Project
        SET Project.Supervisor_Name=NEW.Staff_Name
        WHERE Project.Supervisor_Name=OLD.Staff_Name;
	END IF;
END$$
DELIMITER ;

-- Students information mentored by a certain supervisor
SELECT a.Student_ID,a.Student_Name,a.GPA,a.Stream
FROM Student a
INNER JOIN Mentorship b ON a.Student_ID=b.Student_ID
INNER JOIN Staff c ON b.Staff_ID=c.Staff_ID
WHERE Staff_Name='Rashawn Berge';

-- Preference Matrix of a certain stream by GPA ranking
SELECT a.Student_ID,a.Student_Name,a.GPA,a.Stream
FROM Student a
INNER JOIN Project b ON a.Student_ID=b.Raised_Student
WHERE b.Raised_Student is not null;

-- Self-proposed Student information 
SELECT *
FROM Matrix
INNER JOIN Student a ON Matrix.Student_ID=a.Student_ID
WHERE a.Stream='CS'
ORDER BY a.GPA DESC;

