CREATE TABLE `User Details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contact_number` int NOT NULL,
  `verified` tinyint DEFAULT NULL,
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `Hired_Candidate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(15) NOT NULL,
  `Middle_Name` varchar(15) DEFAULT NULL,
  `Last_Name` varchar(15) NOT NULL,
  `Email_Id` varchar(30) NOT NULL,
  `Hired_City` varchar(15) DEFAULT NULL,
  `Degree` varchar(15) NOT NULL,
  `Hired_Date` date DEFAULT NULL,
  `Mobile_Number` bigint NOT NULL,
  `Permanent_Pincode` int DEFAULT NULL,
  `Hired_Lab` varchar(15) NOT NULL,
  `Attitude` enum('Ok','Good','Fine') NOT NULL DEFAULT 'Ok',
  `Communication_Remark` enum('Ok','Good','Fine') NOT NULL DEFAULT 'Ok',
  `Knowledge_Remark` enum('Ok','Good','Fine') NOT NULL DEFAULT 'Ok',
  `Aggregate_Remark` enum('Ok','Good','Fine') NOT NULL DEFAULT 'Ok',
  `Status` enum('Pending','Confirm','Rejected') NOT NULL DEFAULT 'Pending',
  `Creator_Stamp` varchar(30) DEFAULT NULL,
  `Creator_User` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Email_Id_UNIQUE` (`Email_Id`),
  UNIQUE KEY `Mobile_Number_UNIQUE` (`Mobile_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `Fellowship_Candidate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(15) NOT NULL,
  `Middle_Name` varchar(15) DEFAULT NULL,
  `Last_Name` varchar(15) NOT NULL,
  `Email_Id` varchar(30) NOT NULL,
  `Hired_City` varchar(15) DEFAULT NULL,
  `Degree` varchar(15) NOT NULL,
  `Hired_Date` date DEFAULT NULL,
  `Mobile_Number` bigint NOT NULL,
  `Permanent_Pincode` bigint DEFAULT NULL,
  `Hired_Lab` varchar(15) NOT NULL,
  `Attitude` enum('Ok','Good','Fine') NOT NULL DEFAULT 'Ok',
  `Communication_Remark` enum('Ok','Good','Fine') NOT NULL DEFAULT 'Ok',
  `Knowledge_Remark` enum('Ok','Good','Fine') NOT NULL DEFAULT 'Ok',
  `Aggregate_Remark` enum('Ok','Good','Fine') NOT NULL DEFAULT 'Ok',
  `Creator_Stamp` varchar(30) DEFAULT NULL,
  `Creator_User` varchar(45) DEFAULT NULL,
  `Birth_Date` date NOT NULL,
  `Is_Birth_Date_Verified` tinyint DEFAULT NULL,
  `Parent_Name` varchar(30) DEFAULT NULL,
  `Parent_Occupation` varchar(30) DEFAULT NULL,
  `Parents_Mobile_Number` bigint DEFAULT NULL,
  `Parents_Annual_Salary` varchar(10) DEFAULT NULL,
  `Local_Address` varchar(45) DEFAULT NULL,
  `Permanent_Address` varchar(45) NOT NULL,
  `Photo_Path` varchar(500) DEFAULT NULL,
  `Joining_Date` date DEFAULT NULL,
  `Candidate_Status` enum('Pending','Accepted','Rejected') DEFAULT 'Pending',
  `Personal_Information` varchar(45) DEFAULT NULL,
  `Bank_Information` varchar(45) DEFAULT NULL,
  `Educational_Information` varchar(45) DEFAULT NULL,
  `Document_Status` enum('Pending','Verified','Rejected') DEFAULT 'Pending',
  `Remark` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Candidate_Bank_Details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `account_number` bigint NOT NULL,
  `is_account_number_verified` tinyint DEFAULT NULL,
  `ifsc_code` varchar(15) NOT NULL,
  `is_ifsc_code_verified` tinyint DEFAULT NULL,
  `pan_number` varchar(15) NOT NULL,
  `is_pan_number_verified` tinyint DEFAULT NULL,
  `addhar_number` bigint NOT NULL,
  `is_addhar_number_verified` tinyint DEFAULT NULL,
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_id_cbd_fkey` (`candidate_id`),
  CONSTRAINT `candidate_id_cbd_fkey` FOREIGN KEY (`candidate_id`) REFERENCES `Fellowship_Candidate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `Candidate_Qualification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `diploma` varchar(15) DEFAULT NULL,
  `degree_name` varchar(15) NOT NULL,
  `is_degree_name_verified` tinyint DEFAULT NULL,
  `employee_decipline` varchar(30) DEFAULT NULL,
  `is_employee_decipline_verified` tinyint DEFAULT NULL,
  `passing_year` int NOT NULL,
  `is_passing_year_verified` tinyint DEFAULT NULL,
  `aggr_per` decimal(4,2) NOT NULL,
  `final_year_per` decimal(4,2) NOT NULL,
  `is_final_year_per_verified` tinyint DEFAULT NULL,
  `training_institude` varchar(45) DEFAULT NULL,
  `is_training_institude_verified` tinyint DEFAULT NULL,
  `training_duration_month` int DEFAULT NULL,
  `is_training_duration_month_verified` tinyint DEFAULT NULL,
  `other_training` varchar(45) DEFAULT NULL,
  `is_other_training_verified` tinyint DEFAULT NULL,
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `candidate_id_CQ_fkey` FOREIGN KEY (`id`) REFERENCES `Fellowship_Candidate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Candidate_Documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int NOT NULL,
  `doc_type` varchar(15) NOT NULL,
  `doc_path` varchar(500) DEFAULT NULL,
  `status` enum('Pending','Verified') DEFAULT 'Pending',
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `candidate_id_CD_fkey` (`candidate_id`),
  CONSTRAINT `candidate_id_CD_fkey` FOREIGN KEY (`candidate_id`) REFERENCES `Fellowship_Candidate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `status` enum('Pending','Confirm') NOT NULL DEFAULT 'Pending',
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Maker_Program` (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_name` varchar(45) NOT NULL,
  `program_type` enum('Standard','Custom') NOT NULL DEFAULT 'Standard',
  `program_link` varchar(200) DEFAULT NULL,
  `tech_stack_id` int NOT NULL,
  `tech_type_id` int NOT NULL,
  `is_program_approved` tinyint DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tech_stack_id_MP_fkey` (`tech_stack_id`),
  KEY `tech_type_id_MP_fkey` (`tech_type_id`),
  CONSTRAINT `tech_stack_id_MP_fkey` FOREIGN KEY (`tech_stack_id`) REFERENCES `Tech_Stack` (`id`),
  CONSTRAINT `tech_type_id_MP_fkey` FOREIGN KEY (`tech_type_id`) REFERENCES `Tech_Type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Mentor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mentor_type` enum('lead','ideation','buddy') DEFAULT NULL,
  `lab_id` int DEFAULT NULL,
  `Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mentor_lab_fkey_idx` (`lab_id`),
  CONSTRAINT `mentor_lab_fkey` FOREIGN KEY (`lab_id`) REFERENCES `Lab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Mentor_Ideation_Map` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_mentor_id` int NOT NULL,
  `mentor_id` int NOT NULL,
  `status` enum('Inactive','Active') DEFAULT 'Active',
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mentor_fKey_idx` (`parent_mentor_id`,`mentor_id`),
  KEY `mentor_mim_fkey_idx` (`mentor_id`),
  CONSTRAINT `mentor_mim_fkey` FOREIGN KEY (`mentor_id`) REFERENCES `Mentor` (`id`),
  CONSTRAINT `mentor_mim_parent_fkey` FOREIGN KEY (`parent_mentor_id`) REFERENCES `Mentor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Mentor_Tech_Stack` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mentor_id` int NOT NULL,
  `stack_id` int NOT NULL,
  `Status` enum('Incative','Active') DEFAULT 'Active',
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mentor_id_MTS_fkey` (`mentor_id`),
  KEY `tech_stack_id` (`stack_id`),
  CONSTRAINT `mentor_id_MTS_fkey` FOREIGN KEY (`mentor_id`) REFERENCES `Mentor` (`id`),
  CONSTRAINT `tech_stack_id` FOREIGN KEY (`stack_id`) REFERENCES `Tech_Stack` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Tech_Stack` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tech_name` varchar(30) NOT NULL,
  `image_path` varchar(45) DEFAULT NULL,
  `framework` varchar(30) DEFAULT NULL,
  `cur_status` enum('Inactive','Active') DEFAULT 'Active',
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Tech_Type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) NOT NULL,
  `cur_status` varchar(30) DEFAULT 'Active',
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Lab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `location` varchar(15) NOT NULL,
  `address` varchar(150) NOT NULL,
  `Status` enum('Active','Inactive') DEFAULT 'Inactive',
  `creator_stamp` varchar(15) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Lab_Threshold` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lab_id` int DEFAULT NULL,
  `lab_capacity` int DEFAULT NULL,
  `lead_threshold` int DEFAULT NULL,
  `ideation_engg_threshold` int DEFAULT NULL,
  `buddy_engg_threshold` int DEFAULT NULL,
  `Status` enum('Pending','Confirm') DEFAULT 'Pending',
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Lab_ForeignKey_idx` (`lab_id`),
  CONSTRAINT `Lab_ForeignKey` FOREIGN KEY (`lab_id`) REFERENCES `Lab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Company_Requirement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `requested_month` varchar(10) NOT NULL,
  `city` varchar(15) NOT NULL,
  `is_doc_verified` tinyint DEFAULT NULL,
  `requirement_doc_path` varchar(500) DEFAULT NULL,
  `no_of_engg` int DEFAULT NULL,
  `tech_stack_id` int NOT NULL,
  `tech_type_id` int NOT NULL,
  `maker_program_id` int NOT NULL,
  `lead_id` int NOT NULL,
  `ideation_engg_id` int NOT NULL,
  `buddy_engg_id` int NOT NULL,
  `special_remark` varchar(45) DEFAULT NULL,
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id_CR_fkey` (`company_id`),
  KEY `tech_stack_id_CR_fkey` (`tech_stack_id`),
  KEY `tech_type_id_CR_fkey` (`tech_type_id`),
  KEY `lead_id_CR_fkey` (`lead_id`),
  KEY `ideation_engg_id_CR_fkey` (`ideation_engg_id`),
  KEY `buddy_engg_id_CR_fkey` (`buddy_engg_id`),
  KEY `meker_program_id_CR_fkey_idx` (`maker_program_id`),
  CONSTRAINT `buddy_engg_id_CR_fkey` FOREIGN KEY (`buddy_engg_id`) REFERENCES `Mentor` (`id`),
  CONSTRAINT `company_id_CR_fkey` FOREIGN KEY (`company_id`) REFERENCES `Company` (`id`),
  CONSTRAINT `ideation_engg_id_CR_fkey` FOREIGN KEY (`ideation_engg_id`) REFERENCES `Mentor` (`id`),
  CONSTRAINT `lead_id_CR_fkey` FOREIGN KEY (`lead_id`) REFERENCES `Mentor` (`id`),
  CONSTRAINT `meker_program_id_CR_fkey` FOREIGN KEY (`maker_program_id`) REFERENCES `Maker_Program` (`id`),
  CONSTRAINT `tech_stack_id_CR_fkey` FOREIGN KEY (`tech_stack_id`) REFERENCES `Tech_Stack` (`id`),
  CONSTRAINT `tech_type_id_CR_fkey` FOREIGN KEY (`tech_type_id`) REFERENCES `Tech_Type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Candidate_Stack_Assignment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `requirement_id` int NOT NULL,
  `candidate_id` int NOT NULL,
  `assign_date` date NOT NULL,
  `complete_date` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `creator_stamp` varchar(30) DEFAULT NULL,
  `creator_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requirement_id_CSA_fkey` (`requirement_id`),
  KEY `candidate_id_CSA_fkey` (`candidate_id`),
  CONSTRAINT `candidate_id_CSA_fkey` FOREIGN KEY (`candidate_id`) REFERENCES `Fellowship_Candidate` (`id`),
  CONSTRAINT `requirement_id_CSA_fkey` FOREIGN KEY (`requirement_id`) REFERENCES `Company_Requirement` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
