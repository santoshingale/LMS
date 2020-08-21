insert into Lab(name,location,address,Status)
values('lab3','pune','pune','Active'),
	('lab1','mumbai','Malhotra Chambers, First Floor, Govandi East, Mumbai, Maharashtra 400088','Active'),
	('lab2','banglore','HSR BDA Complex, behind Kumarakom restaurant, Bengaluru, Karnataka 560102','Active');

INSERT INTO Mentor
(name,mentor_type,lab_id)
VALUES('jotiram','ideation',2),
	('atesham','ideation',2),
	('sunil','lead',2),
	('aniket','lead',2),
	('manoj','lead',1),
	('suraj','lead',3);
	
INSERT INTO Tech_Stack(tech_name)
values('Java'),('PHP'),('Android'),('Node'),('Python');
	
INSERT INTO Tech_Type(type_name)
values('Full_Stack'),('Backend'),('Frontend');
	
INSERT INTO Mentor_Tech_Stack(mentor_id,stack_id)
values(3,1),(4,1),(5,1),(6,1),(1,2),(2,3);
	
INSERT INTO Mentor_Ideation_Map(parent_mentor_id,mentor_id)
VALUES(3,1),(4,2);

INSERT INTO Hired_Candidate
(First_Name,Middle_Name,Last_Name,Email_Id,Hired_City,Degree,Hired_Date,Mobile_Number,Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark,Aggregate_Remark)
VALUES
('Santosh','Dilip','Ingale','santosh@gmail.com','Mumbai','BE','2019-11-11','7977446484',421501,'Mumbai','Good','Good','Good','Good'),
('Kajal','','Waghmare','kajal@gmail.com','Mumbai','BE','2019-11-11','7977440843',420001,'Mumbai','Good','Good','Good','Good'),
('Saurabh','Dilip','Gavali','saurabh@gmail.com','Mumbai','BE','2019-11-11','7977411184',433121,'Mumbai','Good','Good','Good','Good'),
('Prashant','','Bedi','prashant@gmail.com','Mumbai','BE','2019-11-11','7977446111',424401,'Mumbai','Good','Good','Good','Good'),
('Sonam','','Singh','sonam@gmail.com','Mumbai','BE','2019-11-11','9977446484',521501,'Mumbai','Good','Good','Good','Good'),
('Pranali','','Patil','pranali@gmail.com','Mumbai','BE','2019-11-11','7977446384',400001,'Mumbai','Good','Good','Good','Good');

INSERT INTO Fellowship_Candidate
(First_Name,Middle_Name,Last_Name,Email_Id,Hired_City,Degree,Hired_Date,Mobile_Number,Permanent_Pincode,Hired_Lab,Attitude,Communication_Remark,Knowledge_Remark
,Aggregate_Remark,
Birth_Date,Is_Birth_Date_Verified,Parent_Name,Parents_Mobile_Number,Local_Address,Permanent_Address,Joining_Date,Candidate_Status,Document_Status)
VALUES
('Santosh','Dilip','Ingale','santosh@gmail.com','Mumbai','BE','2019-11-11','7977446484',421501,'Mumbai','Good','Good','Good','Good',
'1994-05-21',1,'Dilip',1234567890,'ambernath','ambernath','2019-11-11','Accepted','Verified'),
('Kajal','','Waghmare','kajal@gmail.com','Mumbai','BE','2019-11-11','7977440843',420001,'Mumbai','Good','Good','Good','Good',
'1994-05-21',1,'',1234567890,'Ghatkopar','Ghatkopar','2019-11-11','Accepted','Verified'),
('Saurabh','Dilip','Gavali','saurabh@gmail.com','Mumbai','BE','2019-11-11','7977411184',433121,'Mumbai','Good','Good','Good','Good',
'1995-05-21',1,'Dilip',1234567890,'Jalgaon','Jalgaon','2019-11-11','Accepted','Verified'),
('Prashant','','Bedi','prashant@gmail.com','Mumbai','BE','2019-11-11','7977446111',424401,'Mumbai','Good','Good','Good','Good',
'1997-05-21',1,'',1234567890,'Virar','Virar','2019-11-11','Accepted','Verified'),
('Sonam','','Singh','sonam@gmail.com','Mumbai','BE','2019-11-11','9977446484',521501,'Mumbai','Good','Good','Good','Good',
'1996-05-21',1,'',1234567890,'Uttarpradesh','Uttarpradesh','2019-12-11','Accepted','Verified'),
('Pranali','','Patil','pranali@gmail.com','Mumbai','BE','2019-11-11','7977446384',400001,'Mumbai','Good','Good','Good','Good',
'1997-05-21',1,'',1234567890,'Panvel','Panvel','2019-11-11','Accepted','Verified'),
('Rajat','','Patil','rajat@gmail.com','Mumbai','MCA','2019-02-11','7887446384',400101,'Mumbai','Good','Good','Good','Good',
'1997-05-21',1,'',1234567890,'ambernath','ambernath','2019-02-22','Accepted','Verified'),
('Sharukh','','Shaikh','sharukh@gmail.com','Mumbai','BE','2020-05-11','7977946484',421501,'Mumbai','Good','Good','Good','Good',
'1994-05-21',1,'',1234567890,'ambernath','ambernath','2020-05-11','Accepted','Verified');

INSERT INTO Candidate_Documents
(candidate_id,doc_type,status)
VALUES
(2,'Marksheet','Verified'),
(4,'Marksheet','Verified'),
(5,'Marksheet','Verified'),
(6,'Marksheet','Verified'),
(7,'Marksheet','Verified');

INSERT INTO Candidate_Qualification
(candidate_id,degree_name,is_degree_name_verified,passing_year,is_passing_year_verified,aggr_per,final_year_per,is_final_year_per_verified)
VALUES
(3,'BE',1,2020,1,70.32,65.12,1),
(4,'BE',1,2018,1,70.32,65.12,1),
(5,'MCA',1,2017,1,70.32,65.12,1),
(7,'BE',1,2016,1,70.32,65.12,1);

INSERT INTO Candidate_Bank_Details
(candidate_id,name,account_number,is_account_number_verified,ifsc_code,is_ifsc_code_verified,pan_number,is_pan_number_verified,addhar_number,is_addhar_number_verified)
VALUES(1,'HDFC',425241,1,'HDFC43243',1,'AS12131',1,324255324523,1),
(3,'HDFC',425242,1,'HDFC43243',1,'AS12132',1,324255324524,1),
(5,'HDFC',425243,1,'HDFC43243',1,'AS12133',1,324255324525,1),
(4,'HDFC',425244,1,'HDFC43243',1,'AS12134',1,324255324526,1),
(6,'HDFC',425245,1,'HDFC43243',1,'AS12135',1,324255324527,1);

INSERT INTO Company
(name,address,location)
VALUES('ThoughtWorks','Banglore','Banglore'),
('TCS','Mumbai','Mumbai'),
('Cars24','Delhi','Delhi'),
('Facebook','Chenai','Chenai');

INSERT INTO Maker_Program
(program_name,program_type,tech_stack_id,tech_type_id,is_program_approved)
VALUES('November hiring','Standard',1,1,1),
('December hiring','Standard',2,2,1),
('Jan hiring','Standard',3,2,1);

INSERT INTO `lms`.`Company_Requirement`
(company_id,requested_month,city,is_doc_verified,no_of_engg,tech_stack_id,tech_type_id,maker_program_id,lead_id,ideation_engg_id,buddy_engg_id)
VALUES
(1,'NOV19','banglore',1,5,1,1,1,3,1,7),
(2,'NOV19','mumbai',1,3,2,2,2,4,2,7);


INSERT INTO Candidate_Stack_Assignment
(id,requirement_id,candidate_id,assign_date,complete_date)
VALUES
();
	
	
INSERT INTO Candidate_Stack_Assignment
(requirement_id,candidate_id,assign_date,complete_date)
VALUES
(1,7,'2019-02-22','2019-06-22'),
(1,1,'2019-11-11','2020-03-22'),
(2,2,'2019-11-11','2020-03-22'),
(2,3,'2019-11-11','2020-03-22'),
(2,4,'2019-11-11','2020-03-22');
	

-- 1 find all candidate having java technology
SELECT Fellowship_Candidate.id,Fellowship_Candidate.First_Name,Fellowship_Candidate.Last_Name
FROM Fellowship_Candidate
LEFT JOIN Candidate_Qualification
ON Fellowship_Candidate.id = Candidate_Qualification.candidate_id
LEFT JOIN Candidate_Stack_Assignment
ON Fellowship_Candidate.id = Candidate_Stack_Assignment.candidate_id
LEFT JOIN Company_Requirement
ON Candidate_Stack_Assignment.requirement_id = Company_Requirement.id
LEFT JOIN Company
ON Company.id = Company_Requirement.company_id
LEFT JOIN Tech_Stack
ON Tech_Stack.id = Company_Requirement.tech_stack_id
WHERE Tech_Stack.tech_name='Java';

-- 2- find all mentors and ideations have java technology
SELECT * FROM Mentor
LEFT JOIN Mentor_Tech_Stack
ON Mentor_Tech_Stack.mentor_id=Mentor.id
LEFT JOIN Tech_Stack
ON Mentor_Tech_Stack.stack_id=Tech_Stack.id
WHERE Tech_Stack.tech_name='Java';

-- 7- find name of candidate which did not assign technology
SELECT Fellowship_Candidate.First_Name,Fellowship_Candidate.Last_Name
FROM Fellowship_Candidate
LEFT JOIN Candidate_Stack_Assignment
ON Fellowship_Candidate.id = Candidate_Stack_Assignment.candidate_id
WHERE Candidate_Stack_Assignment.id IS NULL;

-- - find name of cnadidate which is not submit documents
SELECT Fellowship_Candidate.First_Name,Fellowship_Candidate.Last_Name
FROM Fellowship_Candidate
LEFT JOIN Candidate_Documents
ON Fellowship_Candidate.id = Candidate_Documents.candidate_id
WHERE Candidate_Documents.id IS NULL;

-- 9- find name of candidate which is not submit bank details
SELECT Fellowship_Candidate.First_Name,Fellowship_Candidate.Last_Name
FROM Fellowship_Candidate
LEFT JOIN Candidate_Bank_Details
ON Fellowship_Candidate.id = Candidate_Bank_Details.candidate_id
WHERE Candidate_Bank_Details.id IS NULL;

-- 10-find name of candidates which is joined in dec month
SELECT First_Name,Last_Name
FROM Fellowship_Candidate
WHERE DATE_FORMAT(Joining_Date,'%M') = 'December';

-- 11-find name of candidates which is end of couse in feb
SELECT Fellowship_Candidate.First_Name,Fellowship_Candidate.Last_Name
FROM Fellowship_Candidate
LEFT JOIN Candidate_Stack_Assignment
ON Fellowship_Candidate.id = Candidate_Stack_Assignment.candidate_id
WHERE DATE_FORMAT(Candidate_Stack_Assignment.complete_date,'%M')='February';

-- 13-find all candidates which is passed out in 2019 year
SELECT Fellowship_Candidate.First_Name,Fellowship_Candidate.Last_Name
FROM Fellowship_Candidate
LEFT JOIN Candidate_Qualification
ON Fellowship_Candidate.id = Candidate_Qualification.candidate_id
WHERE Candidate_Qualification.passing_year = 2019;

-- 14-which technology assign to whom candidates which is having MCA background
SELECT Fellowship_Candidate.First_Name,Fellowship_Candidate.Last_Name,Tech_Stack.tech_name
FROM Fellowship_Candidate
LEFT JOIN Candidate_Qualification
ON Fellowship_Candidate.id = Candidate_Qualification.candidate_id
LEFT JOIN Candidate_Stack_Assignment
ON Fellowship_Candidate.id = Candidate_Stack_Assignment.candidate_id
LEFT JOIN Company_Requirement
ON Candidate_Stack_Assignment.requirement_id = Company_Requirement.id
LEFT JOIN Tech_Stack
ON Tech_Stack.id = Company_Requirement.tech_stack_id
WHERE Candidate_Qualification.degree_name = 'MCA';

-- 15-how many candiates which is having last month
SELECT count(Fellowship_Candidate.First_Name) as Candidate_Having_Last_Month
FROM Fellowship_Candidate
LEFT JOIN Candidate_Qualification
ON Fellowship_Candidate.id = Candidate_Qualification.candidate_id
LEFT JOIN Candidate_Stack_Assignment
ON Fellowship_Candidate.id = Candidate_Stack_Assignment.candidate_id
WHERE DATEDIFF(Candidate_Stack_Assignment.complete_date,CURDATE()) BETWEEN 1 AND 30;

-- 16-how many week candidate completed in the bridgelabz since joining date candidate id is 2
SELECT ROUND(DATEDIFF(CURDATE(),Hired_Date)/7) as weeks_candidate_completed
FROM Fellowship_Candidate
WHERE id = 2;

-- find joining date of candidate if candidate id is 4
SELECT Joining_Date
FROM Fellowship_Candidate
WHERE id = 4;

-- 18-how many week remaining of candidate in the bridglabz from today if candidate id is 5
SELECT DATEDIFF(Candidate_Stack_Assignment.complete_date,CURDATE()) AS Days_Remaining_In_bridgeLabz
FROM Fellowship_Candidate
LEFT JOIN Candidate_Stack_Assignment
ON Fellowship_Candidate.id = Candidate_Stack_Assignment.candidate_id
WHERE Fellowship_Candidate.id=5;

-- 19-how many week remaining of candidate in the bridglabz from today if candidate id is 6
SELECT DATEDIFF(Candidate_Stack_Assignment.complete_date,CURDATE()) AS Days_Remaining_In_bridgeLabz
FROM Fellowship_Candidate
LEFT JOIN Candidate_Stack_Assignment
ON Fellowship_Candidate.id = Candidate_Stack_Assignment.candidate_id
WHERE Fellowship_Candidate.id=6;

-- 20-find candidates which is deployed
SELECT * FROM Fellowship_Candidate 
LEFT JOIN Candidate_Stack_Assignment 
ON Fellowship_Candidate.id = Candidate_Stack_Assignment.candidate_id 
WHERE DATEDIFF(CURDATE(),Candidate_Stack_Assignment.complete_date) > 0;

-- 21-find name and other details and name of company which is assign to condidate.
SELECT Fellowship_Candidate.First_Name,Fellowship_Candidate.Last_Name,Company.name as Company_Name
FROM Fellowship_Candidate
LEFT JOIN Candidate_Qualification
ON Fellowship_Candidate.id = Candidate_Qualification.candidate_id
LEFT JOIN Candidate_Stack_Assignment
ON Fellowship_Candidate.id = Candidate_Stack_Assignment.candidate_id
LEFT JOIN Company_Requirement
ON Candidate_Stack_Assignment.requirement_id = Company_Requirement.id
LEFT JOIN Company
ON Company.id = Company_Requirement.company_id
WHERE Company.id IS NOT NULL;

-- 22-find all condidate and mentors which is related to lab= banglore/mumbai/pune.
SELECT First_Name FROM Fellowship_Candidate
WHERE Hired_Lab IN ('Mumbai','Pune','Banglore')
union
	SELECT Mentor.name FROM Mentor
	LEFT JOIN Lab
	ON Mentor.lab_id = Lab.id
	WHERE Lab.location IN ('Mumbai','Pune','Banglore');
	
	
-- 23-find buddy mententors and ideation mentor and which technology assign to perticular candidate if candidate id is 7
SELECT Fellowship_Candidate.id,Fellowship_Candidate.First_Name,Fellowship_Candidate.Last_Name,Tech_Stack.tech_name, Mentor.name as Indeation_Engg_Name
FROM Fellowship_Candidate
LEFT JOIN Candidate_Qualification
ON Fellowship_Candidate.id = Candidate_Qualification.candidate_id
LEFT JOIN Candidate_Stack_Assignment
ON Fellowship_Candidate.id = Candidate_Stack_Assignment.candidate_id
LEFT JOIN Company_Requirement
ON Candidate_Stack_Assignment.requirement_id = Company_Requirement.id
LEFT JOIN Company
ON Company.id = Company_Requirement.company_id
LEFT JOIN Tech_Stack
ON Tech_Stack.id = Company_Requirement.tech_stack_id
LEFT JOIN Mentor
ON Mentor.id = Company_Requirement.ideation_engg_id
WHERE Fellowship_Candidate.id='7';
