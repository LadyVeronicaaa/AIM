/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.31 : Database - barangay
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`barangay` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `barangay`;

/*Table structure for table `awards` */

DROP TABLE IF EXISTS `awards`;

CREATE TABLE `awards` (
  `award_id` int NOT NULL AUTO_INCREMENT,
  `award_lvl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `award_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Prepared_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `certified_correct` tinyint(1) DEFAULT NULL,
  `Validated_by` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Brgy_ID` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `awards` */

insert  into `awards`(`award_id`,`award_lvl`,`award_title`,`Prepared_by`,`certified_correct`,`Validated_by`,`Brgy_ID`) values 
(1,'Local','Outstanding Citizen Award','John Smith',1,'Jane Doe',1),
(2,'National','Exemplary Volunteer Award','Emily Williams',1,'Michael Johnson',2),
(3,'Regional','Community Service Recognition','Matthew Brown',0,'Olivia Martinez',3),
(4,'Local','Environmental Stewardship Award','Sophia Lopez',1,'Ethan Garcia',4),
(5,'National','Leadership Excellence Award','William Perez',1,'Emma Rodriguez',5),
(6,'Regional','Youth Advocacy Award','Madison Adams',0,'Daniel Martinez',6),
(7,'Local','Cultural Preservation Award','Noah Gonzalez',1,'Harper Lopez',7),
(8,'National','Humanitarian Achievement Award','Logan Hernandez',1,'Lily Rodriguez',8),
(9,'Regional','Educational Innovation Award','Jackson Garcia',0,'Ryan Taylor',9),
(10,'Local','Sportsmanship Award','Avery Adams',1,'Mia Lopez',10),
(11,'National','Healthcare Excellence Award','Benjamin Evans',1,'Natalie Lopez',11),
(12,'Regional','Arts and Culture Appreciation Award','Isabella Hernandez',0,'Lucas Garcia',12),
(13,'Local','Safety Advocacy Award','Gabriel Flores',1,'Penelope Washington',13),
(14,'National','Innovation in Technology Award','Ava Washington',1,'Joseph Taylor',14),
(15,'Regional','Economic Development Award','Alexander Taylor',0,'Mia Adams',15),
(16,'Local','Community Development Award','Sebastian Washington',1,'Jackson Garcia',16),
(17,'National','Diversity and Inclusion Award','Olivia Adams',1,'Avery Lopez',17),
(18,'Regional','Sustainability Achievement Award','Ethan Taylor',0,'Ava Washington',18),
(19,'Local','Tourism Promotion Award','Charlotte Green',1,'Benjamin Evans',19),
(20,'National','Public Service Excellence Award','Daniel Taylor',1,'Chloe Rodriguez',20),
(21,'Regional','Disaster Response Heroism Award','Emily Brown',0,'Alexander Perez',21),
(22,'Local','Entrepreneurship Innovation Award','Mia Taylor',1,'Zoe Hernandez',22),
(23,'National','Scientific Advancement Award','James Flores',1,'Gabriel Adams',23),
(24,'Regional','Digital Literacy Advocacy Award','Ryan Perez',0,'Penelope Washington',24),
(25,'Local','Senior Citizen Service Award','Zoe Brown',1,'Joseph Taylor',25),
(26,'National','Philanthropy Leadership Award','Alexander Adams',1,'Sofia Lopez',26),
(27,'Regional','Gender Equality Advocacy Award','Lucas Perez',0,'Emma Rodriguez',27),
(28,'Local','Child Welfare Champion Award','Natalie Brown',1,'William Perez',28),
(29,'National','Financial Literacy Promotion Award','Daniel Taylor',1,'Chloe Rodriguez',29),
(30,'Regional','Inclusive Education Advocacy Award','Madison Hernandez',0,'Harper Lopez',30),
(31,'Local','Peace and Reconciliation Award','Jack Gonzalez',1,'Noah Evans',31),
(32,'National','Climate Action Leadership Award','Lily Flores',1,'Jackson Garcia',32),
(33,'Regional','Community Resilience Award','Ethan Martinez',0,'Avery Adams',33),
(34,'Local','Animal Welfare Advocacy Award','Olivia Lopez',1,'Gabriel Hernandez',34),
(35,'National','Environmental Conservation Award','Logan Rodriguez',1,'Isabella Adams',35),
(36,'Regional','Civic Engagement Excellence Award','Jackson Perez',0,'Lucas Garcia',36),
(37,'Local','Youth Empowerment Award','Sophia Hernandez',1,'Zoe Adams',37),
(38,'National','Human Rights Defender Award','Ethan Adams',1,'Mia Lopez',38),
(39,'Regional','Health and Wellness Promotion Award','Benjamin Perez',0,'Natalie Hernandez',39),
(40,'Local','Cultural Diversity Advocacy Award','Ava Brown',1,'Daniel Taylor',40),
(41,'National','Innovation in Education Award','William Hernandez',1,'Chloe Lopez',41),
(42,'Regional','Economic Empowerment Champion Award','Daniel Brown',0,'Alexander Perez',42),
(43,'Local','Community Volunteerism Award','Emily Adams',1,'Olivia Hernandez',43),
(44,'National','Youth Leadership Excellence Award','Matthew Perez',1,'James Flores',44),
(45,'Regional','Healthcare Innovation Award','Emma Hernandez',0,'Emily Adams',45),
(46,'Local','Sustainable Development Award','Michael Brown',1,'Sophia Perez',46),
(47,'National','Entrepreneurship Development Award','John Hernandez',1,'Ava Brown',47),
(48,'Regional','Social Justice Advocate Award','Sophia Adams',0,'Benjamin Perez',48),
(49,'Local','Sports Development Achievement Award','Noah Perez',1,'Chloe Hernandez',49),
(50,'National','Innovation in Governance Award','Emily Hernandez',1,'William Brown',50);

/*Table structure for table `barangay_admin` */

DROP TABLE IF EXISTS `barangay_admin`;

CREATE TABLE `barangay_admin` (
  `Admin_ID` int NOT NULL AUTO_INCREMENT,
  `TermDuration` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Designation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `barangay_admin` */

insert  into `barangay_admin`(`Admin_ID`,`TermDuration`,`Designation`) values 
(1,'2019-2022','Barangay Chairman'),
(2,'2022-2025','Barangay Kagawad'),
(3,'2020-2023','Barangay Treasurer'),
(4,'2023-2026','Barangay Secretary'),
(5,'2021-2024','Barangay Captain'),
(6,'2024-2027','Barangay Councilor'),
(7,'2022-2025','Barangay Auditor'),
(8,'2025-2028','Barangay Vice Chairman'),
(9,'2023-2026','Barangay Clerk'),
(10,'2026-2029','Barangay Officer-in-Charge'),
(11,'2024-2027','Barangay Treasurer'),
(12,'2027-2030','Barangay Secretary'),
(13,'2025-2028','Barangay Chairman'),
(14,'2028-2031','Barangay Kagawad'),
(15,'2026-2029','Barangay Treasurer'),
(16,'2029-2032','Barangay Secretary'),
(17,'2027-2030','Barangay Captain'),
(18,'2030-2033','Barangay Councilor'),
(19,'2028-2031','Barangay Auditor'),
(20,'2031-2034','Barangay Vice Chairman'),
(21,'2029-2032','Barangay Clerk'),
(22,'2032-2035','Barangay Officer-in-Charge'),
(23,'2030-2033','Barangay Treasurer'),
(24,'2033-2036','Barangay Secretary'),
(25,'2031-2034','Barangay Chairman'),
(26,'2034-2037','Barangay Kagawad'),
(27,'2032-2035','Barangay Treasurer'),
(28,'2035-2038','Barangay Secretary'),
(29,'2033-2036','Barangay Captain'),
(30,'2036-2039','Barangay Councilor'),
(31,'2034-2037','Barangay Auditor'),
(32,'2037-2040','Barangay Vice Chairman'),
(33,'2035-2038','Barangay Clerk'),
(34,'2038-2041','Barangay Officer-in-Charge'),
(35,'2036-2039','Barangay Treasurer'),
(36,'2039-2042','Barangay Secretary'),
(37,'2037-2040','Barangay Chairman'),
(38,'2040-2043','Barangay Kagawad'),
(39,'2038-2041','Barangay Treasurer'),
(40,'2041-2044','Barangay Secretary'),
(41,'2039-2042','Barangay Captain'),
(42,'2042-2045','Barangay Councilor'),
(43,'2040-2043','Barangay Auditor'),
(44,'2043-2046','Barangay Vice Chairman'),
(45,'2041-2044','Barangay Clerk'),
(46,'2044-2047','Barangay Officer-in-Charge'),
(47,'2042-2045','Barangay Treasurer'),
(48,'2045-2048','Barangay Secretary'),
(49,'2043-2046','Barangay Chairman'),
(50,'2046-2049','Barangay Kagawad');

/*Table structure for table `barangay_archives` */

DROP TABLE IF EXISTS `barangay_archives`;

CREATE TABLE `barangay_archives` (
  `Archive_ID` int NOT NULL AUTO_INCREMENT,
  `Admin_ID` int NOT NULL,
  `Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Date_Added` date NOT NULL,
  `Archive_File` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Archive_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `barangay_archives` */

insert  into `barangay_archives`(`Archive_ID`,`Admin_ID`,`Description`,`Date_Added`,`Archive_File`) values 
(1,1,'Minutes of Barangay Assembly Meeting','2023-05-15','/archives/minutes_assembly_meeting.pdf'),
(2,2,'Barangay Budget Report','2022-12-31','/archives/budget_report_2022.xlsx'),
(3,3,'Barangay Census Data','2024-02-28','/archives/census_data_2024.csv'),
(4,4,'Barangay Development Plan','2023-09-30','/archives/development_plan.docx'),
(5,5,'Barangay Health Program Evaluation','2021-06-30','/archives/health_program_evaluation.pdf'),
(6,6,'Barangay Disaster Risk Reduction Plan','2024-03-15','/archives/drr_plan.doc'),
(7,7,'Barangay Election Results','2023-05-10','/archives/election_results_2023.pdf'),
(8,8,'Barangay Ordinances','2022-08-20','/archives/barangay_ordinances.zip'),
(9,9,'Barangay Project Proposals','2021-11-25','/archives/project_proposals.docx'),
(10,10,'Barangay Resolutions','2024-04-30','/archives/barangay_resolutions_2024.pdf'),
(11,11,'Barangay Financial Statements','2023-02-28','/archives/financial_statements_2023.xlsx'),
(12,12,'Barangay Annual Report','2022-04-15','/archives/annual_report_2022.doc'),
(13,13,'Barangay Land Use Plan','2024-01-31','/archives/land_use_plan.pdf'),
(14,14,'Barangay Zoning Map','2023-08-15','/archives/zoning_map.jpg'),
(15,15,'Barangay Population Survey','2021-10-31','/archives/population_survey.xlsx'),
(16,16,'Barangay Infrastructure Assessment','2024-07-30','/archives/infrastructure_assessment.pdf'),
(17,17,'Barangay Educational Programs Report','2023-03-31','/archives/educational_programs_report.docx'),
(18,18,'Barangay Waste Management Plan','2022-11-30','/archives/waste_management_plan.pdf'),
(19,19,'Barangay Road Improvement Project Proposal','2021-12-31','/archives/road_improvement_proposal.doc'),
(20,20,'Barangay Social Services Inventory','2024-05-31','/archives/social_services_inventory.xlsx'),
(21,21,'Barangay Water Supply Analysis','2023-04-30','/archives/water_supply_analysis.pdf'),
(22,22,'Barangay Energy Conservation Plan','2022-01-31','/archives/energy_conservation_plan.docx'),
(23,23,'Barangay Housing Program Status Report','2021-07-31','/archives/housing_program_report.pdf'),
(24,24,'Barangay Livelihood Program Evaluation','2024-02-29','/archives/livelihood_program_evaluation.doc'),
(25,25,'Barangay Cultural Heritage Inventory','2023-09-30','/archives/cultural_heritage_inventory.xlsx'),
(26,26,'Barangay Traffic Management Plan','2022-06-30','/archives/traffic_management_plan.pdf'),
(27,27,'Barangay Youth Development Program Assessment','2021-12-31','/archives/youth_development_assessment.docx'),
(28,28,'Barangay Environmental Impact Assessment','2024-07-31','/archives/environmental_impact_assessment.pdf'),
(29,29,'Barangay Disaster Response Manual','2023-03-31','/archives/disaster_response_manual.doc'),
(30,30,'Barangay Economic Development Strategy','2022-08-31','/archives/economic_development_strategy.pdf'),
(31,31,'Barangay Fire Prevention Plan','2021-04-30','/archives/fire_prevention_plan.docx'),
(32,32,'Barangay Health Center Inventory','2024-09-30','/archives/health_center_inventory.xlsx'),
(33,33,'Barangay Security Assessment','2023-02-28','/archives/security_assessment.pdf'),
(34,34,'Barangay Transportation Infrastructure Plan','2022-05-31','/archives/transportation_infrastructure_plan.doc'),
(35,35,'Barangay Sports Development Program Evaluation','2021-11-30','/archives/sports_program_evaluation.docx'),
(36,36,'Barangay Disaster Recovery Strategy','2024-07-31','/archives/disaster_recovery_strategy.pdf'),
(37,37,'Barangay Tourism Promotion Plan','2023-04-30','/archives/tourism_promotion_plan.docx'),
(38,38,'Barangay Waste Recycling Program Report','2022-09-30','/archives/waste_recycling_report.pdf'),
(39,39,'Barangay Humanitarian Aid Distribution Record','2021-05-31','/archives/humanitarian_aid_record.xlsx'),
(40,40,'Barangay Crime Statistics Analysis','2024-08-31','/archives/crime_statistics_analysis.pdf'),
(41,41,'Barangay Educational Scholarship Program Guidelines','2023-03-31','/archives/educational_scholarship_guidelines.doc'),
(42,42,'Barangay Public Library Inventory','2022-06-30','/archives/library_inventory.xlsx'),
(43,43,'Barangay Water Quality Assessment','2021-12-31','/archives/water_quality_assessment.doc'),
(44,44,'Barangay Livelihood Training Program Evaluation','2024-09-30','/archives/livelihood_training_evaluation.pdf'),
(45,45,'Barangay Cultural Festival Event Plan','2023-05-31','/archives/cultural_festival_event_plan.docx'),
(46,46,'Barangay Health Awareness Campaign Report','2022-10-31','/archives/health_awareness_campaign_report.pdf'),
(47,47,'Barangay Road Maintenance Schedule','2022-02-28','/archives/road_maintenance_schedule.xlsx'),
(48,48,'Barangay Agricultural Development Plan','2021-07-31','/archives/agricultural_development_plan.doc'),
(49,49,'Barangay Family Planning Program Evaluation','2024-03-31','/archives/family_planning_evaluation.pdf'),
(50,50,'Barangay Tree Planting Initiative Report','2023-08-31','/archives/tree_planting_report.docx');

/*Table structure for table `barangay_facilities` */

DROP TABLE IF EXISTS `barangay_facilities`;

CREATE TABLE `barangay_facilities` (
  `Facility_ID` int NOT NULL AUTO_INCREMENT,
  `Facility_Type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Facility_Access_Lvl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Brgy_ID` int DEFAULT NULL,
  PRIMARY KEY (`Facility_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `barangay_facilities` */

insert  into `barangay_facilities`(`Facility_ID`,`Facility_Type`,`Facility_Access_Lvl`,`Brgy_ID`) values 
(1,'Community Center','Public',1),
(2,'Health Center','Public',2),
(3,'Sports Complex','Public',3),
(4,'Public Market','Public',4),
(5,'Barangay Hall','Public',5),
(6,'Park','Public',6),
(7,'Library','Public',7),
(8,'Police Station','Public',8),
(9,'Fire Station','Public',9),
(10,'Public School','Public',10),
(11,'Daycare Center','Public',11),
(12,'Playground','Public',12),
(13,'Multi-purpose Hall','Public',13),
(14,'Water Refilling Station','Public',14),
(15,'Barangay Plaza','Public',15),
(16,'Gymnasium','Public',16),
(17,'Senior Citizen Center','Public',17),
(18,'Youth Center','Public',18),
(19,'Veterinary Clinic','Public',19),
(20,'Dumpsite','Restricted',20),
(21,'Recycling Center','Restricted',21),
(22,'Cemetery','Restricted',22),
(23,'Residential Care Facility','Restricted',23),
(24,'Halfway House','Restricted',24),
(25,'Rehabilitation Center','Restricted',25),
(26,'Animal Shelter','Restricted',26),
(27,'Drop-in Center','Restricted',27),
(28,'Community Kitchen','Restricted',28),
(29,'Sheltered Workshop','Restricted',29),
(30,'Training Center','Restricted',30),
(31,'Crisis Intervention Center','Restricted',31),
(32,'Social Center','Restricted',32),
(33,'Family Resource Center','Restricted',33),
(34,'Food Bank','Restricted',34),
(35,'Soup Kitchen','Restricted',35),
(36,'Clothing Bank','Restricted',36),
(37,'Free Clinic','Restricted',37),
(38,'Emergency Shelter','Restricted',38),
(39,'Homeless Shelter','Restricted',39),
(40,'Substance Abuse Treatment Center','Restricted',40),
(41,'Halfway House','Restricted',41),
(42,'Recovery House','Restricted',42),
(43,'Detox Center','Restricted',43),
(44,'Family Shelter','Restricted',44),
(45,'Domestic Violence Shelter','Restricted',45),
(46,'Womens Shelter','Restricted',46),
(47,'Transitional Housing','Restricted',47),
(48,'Youth Shelter','Restricted',48),
(49,'Crisis Nursery','Restricted',49),
(50,'Group Home','Restricted',50);

/*Table structure for table `barangay_profile` */

DROP TABLE IF EXISTS `barangay_profile`;

CREATE TABLE `barangay_profile` (
  `Brgy_ID` int NOT NULL,
  `Brgy_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Brgy_Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Brgy_telefax` int DEFAULT NULL,
  `Brgy_Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Brgy_website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Brgy_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `barangay_profile` */

insert  into `barangay_profile`(`Brgy_ID`,`Brgy_Name`,`Brgy_Address`,`Brgy_telefax`,`Brgy_Email`,`Brgy_website`,`Brgy_logo`) values 
(1,'Barangay 1','123 Main Street, Barangay 1',1234567,'barangay1@example.com','http://www.barangay1.com','/logos/barangay1_logo.png'),
(2,'Barangay 2','456 Elm Street, Barangay 2',9876543,'barangay2@example.com','http://www.barangay2.com','/logos/barangay2_logo.png'),
(3,'Barangay 3','789 Oak Street, Barangay 3',2468101,'barangay3@example.com','http://www.barangay3.com','/logos/barangay3_logo.png'),
(4,'Barangay 4','321 Pine Street, Barangay 4',1357924,'barangay4@example.com','http://www.barangay4.com','/logos/barangay4_logo.png'),
(5,'Barangay 5','654 Maple Street, Barangay 5',5678901,'barangay5@example.com','http://www.barangay5.com','/logos/barangay5_logo.png'),
(6,'Barangay 6','987 Cedar Street, Barangay 6',1098765,'barangay6@example.com','http://www.barangay6.com','/logos/barangay6_logo.png'),
(7,'Barangay 7','147 Birch Street, Barangay 7',5432109,'barangay7@example.com','http://www.barangay7.com','/logos/barangay7_logo.png'),
(8,'Barangay 8','258 Walnut Street, Barangay 8',2109876,'barangay8@example.com','http://www.barangay8.com','/logos/barangay8_logo.png'),
(9,'Barangay 9','369 Spruce Street, Barangay 9',8765432,'barangay9@example.com','http://www.barangay9.com','/logos/barangay9_logo.png'),
(10,'Barangay 10','159 Fir Street, Barangay 10',3210987,'barangay10@example.com','http://www.barangay10.com','/logos/barangay10_logo.png'),
(11,'Barangay 11','741 Cedar Street, Barangay 11',7654321,'barangay11@example.com','http://www.barangay11.com','/logos/barangay11_logo.png'),
(12,'Barangay 12','852 Birch Street, Barangay 12',1092837,'barangay12@example.com','http://www.barangay12.com','/logos/barangay12_logo.png'),
(13,'Barangay 13','963 Spruce Street, Barangay 13',2837465,'barangay13@example.com','http://www.barangay13.com','/logos/barangay13_logo.png'),
(14,'Barangay 14','753 Pine Street, Barangay 14',4958673,'barangay14@example.com','http://www.barangay14.com','/logos/barangay14_logo.png'),
(15,'Barangay 15','963 Elm Street, Barangay 15',7392846,'barangay15@example.com','http://www.barangay15.com','/logos/barangay15_logo.png'),
(16,'Barangay 16','147 Oak Street, Barangay 16',6283749,'barangay16@example.com','http://www.barangay16.com','/logos/barangay16_logo.png'),
(17,'Barangay 17','258 Maple Street, Barangay 17',3847569,'barangay17@example.com','http://www.barangay17.com','/logos/barangay17_logo.png'),
(18,'Barangay 18','369 Cedar Street, Barangay 18',4857392,'barangay18@example.com','http://www.barangay18.com','/logos/barangay18_logo.png'),
(19,'Barangay 19','741 Birch Street, Barangay 19',9273648,'barangay19@example.com','http://www.barangay19.com','/logos/barangay19_logo.png'),
(20,'Barangay 20','852 Pine Street, Barangay 20',1837492,'barangay20@example.com','http://www.barangay20.com','/logos/barangay20_logo.png'),
(21,'Barangay 21','963 Elm Street, Barangay 21',3748592,'barangay21@example.com','http://www.barangay21.com','/logos/barangay21_logo.png'),
(22,'Barangay 22','147 Oak Street, Barangay 22',2837465,'barangay22@example.com','http://www.barangay22.com','/logos/barangay22_logo.png'),
(23,'Barangay 23','258 Maple Street, Barangay 23',1928374,'barangay23@example.com','http://www.barangay23.com','/logos/barangay23_logo.png'),
(24,'Barangay 24','369 Cedar Street, Barangay 24',3748592,'barangay24@example.com','http://www.barangay24.com','/logos/barangay24_logo.png'),
(25,'Barangay 25','741 Birch Street, Barangay 25',2837465,'barangay25@example.com','http://www.barangay25.com','/logos/barangay25_logo.png'),
(26,'Barangay 26','852 Pine Street, Barangay 26',1928374,'barangay26@example.com','http://www.barangay26.com','/logos/barangay26_logo.png'),
(27,'Barangay 27','963 Elm Street, Barangay 27',3748592,'barangay27@example.com','http://www.barangay27.com','/logos/barangay27_logo.png'),
(28,'Barangay 28','147 Oak Street, Barangay 28',2837465,'barangay28@example.com','http://www.barangay28.com','/logos/barangay28_logo.png'),
(29,'Barangay 29','258 Maple Street, Barangay 29',1928374,'barangay29@example.com','http://www.barangay29.com','/logos/barangay29_logo.png'),
(30,'Barangay 30','369 Cedar Street, Barangay 30',3748592,'barangay30@example.com','http://www.barangay30.com','/logos/barangay30_logo.png'),
(31,'Barangay 31','741 Birch Street, Barangay 31',2837465,'barangay31@example.com','http://www.barangay31.com','/logos/barangay31_logo.png'),
(32,'Barangay 32','852 Pine Street, Barangay 32',1928374,'barangay32@example.com','http://www.barangay32.com','/logos/barangay32_logo.png'),
(33,'Barangay 33','963 Elm Street, Barangay 33',3748592,'barangay33@example.com','http://www.barangay33.com','/logos/barangay33_logo.png'),
(34,'Barangay 34','147 Oak Street, Barangay 34',2837465,'barangay34@example.com','http://www.barangay34.com','/logos/barangay34_logo.png'),
(35,'Barangay 35','258 Maple Street, Barangay 35',1928374,'barangay35@example.com','http://www.barangay35.com','/logos/barangay35_logo.png'),
(36,'Barangay 36','369 Cedar Street, Barangay 36',3748592,'barangay36@example.com','http://www.barangay36.com','/logos/barangay36_logo.png'),
(37,'Barangay 37','741 Birch Street, Barangay 37',2837465,'barangay37@example.com','http://www.barangay37.com','/logos/barangay37_logo.png'),
(38,'Barangay 38','852 Pine Street, Barangay 38',1928374,'barangay38@example.com','http://www.barangay38.com','/logos/barangay38_logo.png'),
(39,'Barangay 39','963 Elm Street, Barangay 39',3748592,'barangay39@example.com','http://www.barangay39.com','/logos/barangay39_logo.png'),
(40,'Barangay 40','147 Oak Street, Barangay 40',2837465,'barangay40@example.com','http://www.barangay40.com','/logos/barangay40_logo.png'),
(41,'Barangay 41','258 Maple Street, Barangay 41',1928374,'barangay41@example.com','http://www.barangay41.com','/logos/barangay41_logo.png'),
(42,'Barangay 42','369 Cedar Street, Barangay 42',3748592,'barangay42@example.com','http://www.barangay42.com','/logos/barangay42_logo.png'),
(43,'Barangay 43','741 Birch Street, Barangay 43',2837465,'barangay43@example.com','http://www.barangay43.com','/logos/barangay43_logo.png'),
(44,'Barangay 44','852 Pine Street, Barangay 44',1928374,'barangay44@example.com','http://www.barangay44.com','/logos/barangay44_logo.png'),
(45,'Barangay 45','963 Elm Street, Barangay 45',3748592,'barangay45@example.com','http://www.barangay45.com','/logos/barangay45_logo.png'),
(46,'Barangay 46','147 Oak Street, Barangay 46',2837465,'barangay46@example.com','http://www.barangay46.com','/logos/barangay46_logo.png'),
(47,'Barangay 47','258 Maple Street, Barangay 47',1928374,'barangay47@example.com','http://www.barangay47.com','/logos/barangay47_logo.png'),
(48,'Barangay 48','369 Cedar Street, Barangay 48',3748592,'barangay48@example.com','http://www.barangay48.com','/logos/barangay48_logo.png'),
(49,'Barangay 49','741 Birch Street, Barangay 49',2837465,'barangay49@example.com','http://www.barangay49.com','/logos/barangay49_logo.png'),
(50,'Barangay 50','852 Pine Street, Barangay 50',1928374,'barangay50@example.com','http://www.barangay50.com','/logos/barangay50_logo.png');

/*Table structure for table `barangay_properties` */

DROP TABLE IF EXISTS `barangay_properties`;

CREATE TABLE `barangay_properties` (
  `Property_ID` int NOT NULL AUTO_INCREMENT,
  `Property_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Property_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Property_quantity` decimal(10,0) DEFAULT NULL,
  `Property_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Brgy_ID` int NOT NULL,
  PRIMARY KEY (`Property_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `barangay_properties` */

insert  into `barangay_properties`(`Property_ID`,`Property_type`,`Property_description`,`Property_quantity`,`Property_remark`,`Brgy_ID`) values 
(1,'Land','Vacant lot for community events',1,'Adjacent to the barangay hall',1),
(2,'Building','Health center',1,'Two-story building with medical facilities',2),
(3,'Vehicle','Ambulance',1,'Equipped with medical supplies',3),
(4,'Equipment','Playground equipment',5,'Swings, slides, and jungle gym',4),
(5,'Furniture','Tables and chairs',20,'For community gatherings and events',5),
(6,'Office Supplies','Computers',10,'Desktop computers for administrative use',6),
(7,'Infrastructure','Streetlights',50,'LED streetlights installed along main roads',7),
(8,'Landscaping','Trees',100,'Variety of fruit and ornamental trees planted',8),
(9,'Vehicle','Fire truck',1,'Equipped with firefighting tools',9),
(10,'Equipment','Basketball hoops',3,'Installed in the barangay covered court',10),
(11,'Building','Barangay hall',1,'Main administrative building for barangay affairs',11),
(12,'Vehicle','Dump truck',1,'Used for waste management activities',12),
(13,'Equipment','Computer printer',5,'For printing official documents',13),
(14,'Furniture','Benches',30,'Placed in public parks for seating',14),
(15,'Infrastructure','Water pump',1,'Provides water supply to the community',15),
(16,'Landscaping','Flower beds',10,'Decorative flowers planted in public areas',16),
(17,'Equipment','Public address system',1,'Used for announcements during events',17),
(18,'Building','Daycare center',1,'Facility for early childhood education',18),
(19,'Vehicle','Patrol car',1,'Used by barangay tanods for security patrols',19),
(20,'Infrastructure','Footbridge',2,'Connects two parts of the barangay over a stream',20),
(21,'Landscaping','Park benches',15,'Installed in barangay parks for seating',21),
(22,'Equipment','Generator',2,'Provides backup power during outages',22),
(23,'Building','Multipurpose hall',1,'Used for various community events',23),
(24,'Infrastructure','Street signage',20,'For clear navigation within the barangay',24),
(25,'Land','Public park',1,'Open green space for recreational activities',25),
(26,'Equipment','Laptop computers',10,'For mobile administrative tasks',26),
(27,'Building','Community library',1,'Provides reading and study space',27),
(28,'Infrastructure','Trash bins',30,'Placed along roads for waste disposal',28),
(29,'Equipment','Projector',1,'Used for presentations during meetings',29),
(30,'Landscaping','Garden plots',20,'Available for community gardening projects',30),
(31,'Furniture','Cabinets',5,'For storage of barangay documents',31),
(32,'Building','Community gym',1,'Facility for sports and fitness activities',32),
(33,'Equipment','Public address system',1,'Used for announcements during events',33),
(34,'Infrastructure','Public restroom',2,'For public use in barangay facilities',34),
(35,'Land','Empty lot',1,'Reserved for future community development',35),
(36,'Equipment','Security cameras',10,'Installed for surveillance in public areas',36),
(37,'Building','Barangay outpost',1,'Provides security presence in the community',37),
(38,'Infrastructure','Water reservoir',1,'Stores water for emergency use',38),
(39,'Landscaping','Ornamental plants',50,'Beautifies public spaces in the barangay',39),
(40,'Equipment','Public computer terminals',5,'Available for internet access',40),
(41,'Furniture','Picnic tables',10,'For public use in parks and recreation areas',41),
(42,'Building','Multipurpose covered court',1,'Used for sports and community events',42),
(43,'Infrastructure','Public Wi-Fi hotspot',1,'Provides free internet access in public areas',43),
(44,'Equipment','Mobile stage',1,'For outdoor performances and events',44),
(45,'Furniture','Park benches',20,'Placed in public parks for seating',45),
(46,'Building','Barangay tanod outpost',1,'Provides security presence in the community',46),
(47,'Infrastructure','Street drainage system',1,'Manages rainwater runoff in the barangay',47),
(48,'Equipment','Public bicycle racks',5,'For secure bicycle parking',48),
(49,'Furniture','Outdoor seating',15,'Placed in public areas for relaxation',49),
(50,'Building','Community hall',1,'Used for barangay meetings and events',50);

/*Table structure for table `barangay_staff` */

DROP TABLE IF EXISTS `barangay_staff`;

CREATE TABLE `barangay_staff` (
  `Staff_ID` int NOT NULL AUTO_INCREMENT,
  `DateEmployed` date NOT NULL,
  `Staff_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `barangay_staff` */

insert  into `barangay_staff`(`Staff_ID`,`DateEmployed`,`Staff_position`) values 
(1,'2020-01-15','Administrative Assistant'),
(2,'2019-05-20','Community Organizer'),
(3,'2021-03-10','Finance Officer'),
(4,'2018-11-28','Public Relations Officer'),
(5,'2022-02-05','Health Educator'),
(6,'2017-09-12','Social Worker'),
(7,'2023-04-30','Environmental Officer'),
(8,'2016-07-18','Youth Coordinator'),
(9,'2024-01-25','Human Resources Manager'),
(10,'2015-04-03','Infrastructure Specialist'),
(11,'2025-06-08','Education Coordinator'),
(12,'2014-08-21','Events Coordinator'),
(13,'2026-10-17','Community Development Officer'),
(14,'2013-02-14','Health Officer'),
(15,'2027-12-09','Public Safety Officer'),
(16,'2012-10-30','Economic Development Specialist'),
(17,'2028-08-05','Welfare Officer'),
(18,'2011-06-27','Agricultural Specialist'),
(19,'2029-04-11','Information Technology Officer'),
(20,'2010-01-07','Tourism Officer'),
(21,'2030-03-22','Disaster Risk Reduction Officer'),
(22,'2009-07-19','Gender and Development Officer'),
(23,'2031-09-14','Land Use Planner'),
(24,'2008-05-25','Transportation Coordinator'),
(25,'2032-11-02','Housing Officer'),
(26,'2007-03-16','Senior Citizen Affairs Officer'),
(27,'2033-01-18','Legal Officer'),
(28,'2006-09-05','Culture and Arts Officer'),
(29,'2034-07-07','Livelihood Officer'),
(30,'2005-11-11','Water and Sanitation Officer'),
(31,'2035-05-29','Barangay Captain Assistant'),
(32,'2004-04-23','Child Protection Officer'),
(33,'2036-08-13','Labor and Employment Officer'),
(34,'2003-12-01','Youth Affairs Officer'),
(35,'2037-10-26','Procurement Officer'),
(36,'2002-02-09','Community Health Nurse'),
(37,'2038-03-04','Cultural Heritage Officer'),
(38,'2001-01-14','Veterinary Officer'),
(39,'2039-06-20','Sports and Recreation Officer'),
(40,'2000-07-30','Social Welfare Officer'),
(41,'2040-09-08','Population Officer'),
(42,'1999-05-16','Disability Affairs Officer'),
(43,'2041-11-19','Peace and Order Officer'),
(44,'1998-04-05','Disaster Management Officer'),
(45,'2042-12-27','Civil Registrar'),
(46,'1997-08-22','Community Affairs Officer'),
(47,'2043-02-03','Budget Officer'),
(48,'1996-06-10','Sangguniang Kabataan Coordinator'),
(49,'2044-07-15','Barangay Treasurer'),
(50,'1995-03-28','Barangay Secretary');

/*Table structure for table `barangay_workers` */

DROP TABLE IF EXISTS `barangay_workers`;

CREATE TABLE `barangay_workers` (
  `Worker_ID` int NOT NULL AUTO_INCREMENT,
  `Worker_fname` varchar(100) DEFAULT NULL,
  `Worker_mname` varchar(100) DEFAULT NULL,
  `Worker_lname` varchar(100) DEFAULT NULL,
  `Accesslvl` int DEFAULT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Pass_registers` varchar(255) DEFAULT NULL,
  `Profile_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Worker_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `barangay_workers` */

insert  into `barangay_workers`(`Worker_ID`,`Worker_fname`,`Worker_mname`,`Worker_lname`,`Accesslvl`,`Username`,`Pass_registers`,`Profile_pic`) values 
(1,'John','Doe','Smith',1,'johnsmith','482c811da5d5b4bc6d497ffa98491e38','profile_pic_1.jpg'),
(2,'Jane','Mary','Doe',2,'janedoe','482c811da5d5b4bc6d497ffa98491e38','profile_pic_2.jpg'),
(3,'Michael','James','Johnson',1,'michaeljohnson','482c811da5d5b4bc6d497ffa98491e38','profile_pic_3.jpg'),
(4,'Emily','Grace','Williams',3,'emilywilliams','482c811da5d5b4bc6d497ffa98491e38','profile_pic_4.jpg'),
(5,'Matthew','David','Brown',1,'matthewbrown','482c811da5d5b4bc6d497ffa98491e38','profile_pic_5.jpg'),
(6,'Olivia','Rose','Martinez',2,'oliviamartinez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_6.jpg'),
(7,'Ethan','Daniel','Garcia',1,'ethangarcia','482c811da5d5b4bc6d497ffa98491e38','profile_pic_7.jpg'),
(8,'Sophia','Madison','Lopez',3,'sophialopez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_8.jpg'),
(9,'Noah','Anthony','Gonzalez',1,'noahgonzalez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_9.jpg'),
(10,'Emma','Chloe','Rodriguez',2,'emmarodriguez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_10.jpg'),
(11,'William','Alexander','Perez',1,'williamperez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_11.jpg'),
(12,'Isabella','Zoe','Hernandez',3,'isabellahernandez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_12.jpg'),
(13,'James','Gabriel','Flores',1,'jamesflores','482c811da5d5b4bc6d497ffa98491e38','profile_pic_13.jpg'),
(14,'Ava','Penelope','Washington',2,'avawashington','482c811da5d5b4bc6d497ffa98491e38','profile_pic_14.jpg'),
(15,'Alexander','Ryan','Taylor',1,'alexandertaylor','482c811da5d5b4bc6d497ffa98491e38','profile_pic_15.jpg'),
(16,'Mia','Avery','Adams',3,'miaadams','482c811da5d5b4bc6d497ffa98491e38','profile_pic_16.jpg'),
(17,'Liam','Nathaniel','Campbell',1,'liamcampbell','482c811da5d5b4bc6d497ffa98491e38','profile_pic_17.jpg'),
(18,'Charlotte','Hannah','Green',2,'charlottegreen','482c811da5d5b4bc6d497ffa98491e38','profile_pic_18.jpg'),
(19,'Benjamin','Christopher','Evans',1,'benjaminevans','482c811da5d5b4bc6d497ffa98491e38','profile_pic_19.jpg'),
(20,'Amelia','Lily','Harris',3,'ameliaharris','482c811da5d5b4bc6d497ffa98491e38','profile_pic_20.jpg'),
(21,'Daniel','Christian','Martinez',1,'danielmartinez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_21.jpg'),
(22,'Harper','Natalie','Lopez',2,'harperlopez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_22.jpg'),
(23,'Logan','Dylan','Gonzalez',1,'logangonzalez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_23.jpg'),
(24,'Evelyn','Sofia','Flores',3,'evelynflores','482c811da5d5b4bc6d497ffa98491e38','profile_pic_24.jpg'),
(25,'Sebastian','Joseph','Washington',1,'sebastianwashington','482c811da5d5b4bc6d497ffa98491e38','profile_pic_25.jpg'),
(26,'Madison','Ava','Adams',2,'madisonadams','482c811da5d5b4bc6d497ffa98491e38','profile_pic_26.jpg'),
(27,'Jackson','Lucas','Garcia',1,'jacksongarcia','482c811da5d5b4bc6d497ffa98491e38','profile_pic_27.jpg'),
(28,'Avery','Mia','Lopez',3,'averylopez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_28.jpg'),
(29,'Jack','Noah','Gonzalez',1,'jackgonzalez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_29.jpg'),
(30,'Lily','Amelia','Rodriguez',2,'lilyrodriguez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_30.jpg'),
(31,'Ryan','Alexander','Perez',1,'ryanperez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_31.jpg'),
(32,'Zoe','Isabella','Hernandez',3,'zoehernandez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_32.jpg'),
(33,'Gabriel','James','Flores',1,'gabrielflores','482c811da5d5b4bc6d497ffa98491e38','profile_pic_33.jpg'),
(34,'Penelope','Ava','Washington',2,'penelopewashington','482c811da5d5b4bc6d497ffa98491e38','profile_pic_34.jpg'),
(35,'Joseph','Sebastian','Taylor',1,'josephtaylor','482c811da5d5b4bc6d497ffa98491e38','profile_pic_35.jpg'),
(36,'Avery','Mia','Adams',3,'averyadams','482c811da5d5b4bc6d497ffa98491e38','profile_pic_36.jpg'),
(37,'Lucas','Jackson','Garcia',1,'lucasgarcia','482c811da5d5b4bc6d497ffa98491e38','profile_pic_37.jpg'),
(38,'Natalie','Harper','Lopez',2,'natalielopez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_38.jpg'),
(39,'Noah','Benjamin','Gonzalez',1,'noahgonzalez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_39.jpg'),
(40,'Chloe','Emma','Rodriguez',3,'chloerodriguez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_40.jpg'),
(41,'Alexander','William','Perez',1,'alexanderperez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_41.jpg'),
(42,'Zoe','Isabella','Hernandez',2,'zoehernandez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_42.jpg'),
(43,'Gabriel','James','Flores',1,'gabrielflores','482c811da5d5b4bc6d497ffa98491e38','profile_pic_43.jpg'),
(44,'Penelope','Ava','Washington',3,'penelopewashington','482c811da5d5b4bc6d497ffa98491e38','profile_pic_44.jpg'),
(45,'Joseph','Sebastian','Taylor',1,'josephtaylor','482c811da5d5b4bc6d497ffa98491e38','profile_pic_45.jpg'),
(46,'Avery','Mia','Adams',2,'averyadams','482c811da5d5b4bc6d497ffa98491e38','profile_pic_46.jpg'),
(47,'Lucas','Jackson','Garcia',1,'lucasgarcia','482c811da5d5b4bc6d497ffa98491e38','profile_pic_47.jpg'),
(48,'Natalie','Harper','Lopez',3,'natalielopez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_48.jpg'),
(49,'Noah','Benjamin','Gonzalez',1,'noahgonzalez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_49.jpg'),
(50,'Chloe','Emma','Rodriguez',2,'chloerodriguez','482c811da5d5b4bc6d497ffa98491e38','profile_pic_50.jpg');

/*Table structure for table `brgy_geography` */

DROP TABLE IF EXISTS `brgy_geography`;

CREATE TABLE `brgy_geography` (
  `Brgy_ID` int NOT NULL,
  `Province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `City` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Region` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TLA` decimal(10,0) DEFAULT NULL,
  `Brgy_category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Land_class` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Brgy_location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MES` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `brgy_geography` */

insert  into `brgy_geography`(`Brgy_ID`,`Province`,`City`,`Region`,`TLA`,`Brgy_category`,`Land_class`,`Brgy_location`,`MES`) values 
(1,'Metro Manila','Manila','NCR',15,'Urban','Residential','Downtown','Commercial'),
(2,'Metro Manila','Quezon City','NCR',21,'Urban','Residential','Suburban','Commercial'),
(3,'Metro Manila','Makati','NCR',10,'Urban','Commercial','CBD','Commercial'),
(4,'Metro Manila','Taguig','NCR',19,'Urban','Residential','Suburban','Industrial'),
(5,'Metro Manila','Pasig','NCR',22,'Urban','Residential','Suburban','Commercial'),
(6,'Metro Manila','Mandaluyong','NCR',15,'Urban','Commercial','Downtown','Commercial'),
(7,'Metro Manila','Parañaque','NCR',26,'Urban','Residential','Suburban','Commercial'),
(8,'Metro Manila','Las Piñas','NCR',19,'Urban','Residential','Suburban','Commercial'),
(9,'Metro Manila','Pasay','NCR',17,'Urban','Commercial','CBD','Commercial'),
(10,'Metro Manila','Valenzuela','NCR',24,'Urban','Residential','Suburban','Industrial'),
(11,'Metro Manila','Caloocan','NCR',21,'Urban','Residential','Suburban','Commercial'),
(12,'Metro Manila','Malabon','NCR',13,'Urban','Residential','Suburban','Commercial'),
(13,'Metro Manila','Navotas','NCR',16,'Urban','Residential','Suburban','Commercial'),
(14,'Metro Manila','Marikina','NCR',18,'Urban','Residential','Suburban','Commercial'),
(15,'Metro Manila','San Juan','NCR',13,'Urban','Residential','Suburban','Commercial'),
(16,'Metro Manila','Pateros','NCR',8,'Urban','Residential','Suburban','Commercial'),
(17,'Metro Manila','Antipolo','CALABARZON',36,'Urban','Residential','Suburban','Commercial'),
(18,'Metro Manila','Rodriguez','CALABARZON',28,'Urban','Residential','Suburban','Commercial'),
(19,'Metro Manila','Cainta','CALABARZON',25,'Urban','Residential','Suburban','Commercial'),
(20,'Metro Manila','Taytay','CALABARZON',27,'Urban','Residential','Suburban','Commercial'),
(21,'Metro Manila','Angono','CALABARZON',19,'Urban','Residential','Suburban','Commercial'),
(22,'Metro Manila','Binangonan','CALABARZON',30,'Urban','Residential','Suburban','Commercial'),
(23,'Metro Manila','Tanay','CALABARZON',45,'Urban','Residential','Rural','Agricultural'),
(24,'Metro Manila','Cardona','CALABARZON',21,'Urban','Residential','Suburban','Commercial'),
(25,'Metro Manila','Jalajala','CALABARZON',34,'Urban','Residential','Suburban','Commercial'),
(26,'Metro Manila','Teresa','CALABARZON',27,'Urban','Residential','Suburban','Commercial'),
(27,'Metro Manila','Morong','CALABARZON',41,'Urban','Residential','Suburban','Commercial'),
(28,'Metro Manila','Baras','CALABARZON',30,'Urban','Residential','Suburban','Commercial'),
(29,'Metro Manila','Binangonan','CALABARZON',30,'Urban','Residential','Suburban','Commercial'),
(30,'Metro Manila','Pililla','CALABARZON',37,'Urban','Residential','Suburban','Commercial'),
(31,'Metro Manila','Cardona','CALABARZON',21,'Urban','Residential','Suburban','Commercial'),
(32,'Metro Manila','Jalajala','CALABARZON',34,'Urban','Residential','Suburban','Commercial'),
(33,'Metro Manila','Teresa','CALABARZON',27,'Urban','Residential','Suburban','Commercial'),
(34,'Metro Manila','Morong','CALABARZON',41,'Urban','Residential','Suburban','Commercial'),
(35,'Metro Manila','Baras','CALABARZON',30,'Urban','Residential','Suburban','Commercial'),
(36,'Metro Manila','Teresa','CALABARZON',27,'Urban','Residential','Suburban','Commercial'),
(37,'Metro Manila','Morong','CALABARZON',41,'Urban','Residential','Suburban','Commercial'),
(38,'Metro Manila','Baras','CALABARZON',30,'Urban','Residential','Suburban','Commercial'),
(39,'Metro Manila','Morong','CALABARZON',41,'Urban','Residential','Suburban','Commercial'),
(40,'Metro Manila','Baras','CALABARZON',30,'Urban','Residential','Suburban','Commercial'),
(41,'Metro Manila','Pililla','CALABARZON',37,'Urban','Residential','Suburban','Commercial'),
(42,'Metro Manila','Cardona','CALABARZON',21,'Urban','Residential','Suburban','Commercial'),
(43,'Metro Manila','Jalajala','CALABARZON',34,'Urban','Residential','Suburban','Commercial'),
(44,'Metro Manila','Teresa','CALABARZON',27,'Urban','Residential','Suburban','Commercial'),
(45,'Metro Manila','Morong','CALABARZON',41,'Urban','Residential','Suburban','Commercial'),
(46,'Metro Manila','Baras','CALABARZON',30,'Urban','Residential','Suburban','Commercial'),
(47,'Metro Manila','Teresa','CALABARZON',27,'Urban','Residential','Suburban','Commercial'),
(48,'Metro Manila','Morong','CALABARZON',41,'Urban','Residential','Suburban','Commercial'),
(49,'Metro Manila','Baras','CALABARZON',30,'Urban','Residential','Suburban','Commercial'),
(50,'Metro Manila','Pililla','CALABARZON',37,'Urban','Residential','Suburban','Commercial');

/*Table structure for table `business` */

DROP TABLE IF EXISTS `business`;

CREATE TABLE `business` (
  `Business_ID` int NOT NULL AUTO_INCREMENT,
  `Business_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Date_established` date DEFAULT NULL,
  `Business_Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Business_Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Business_purok` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Business_permit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Contact_NO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BOF` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Business_Type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Business_permit_copy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Business_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `business` */

insert  into `business`(`Business_ID`,`Business_name`,`Owner_name`,`Date_established`,`Business_Status`,`Business_Address`,`Business_purok`,`Business_permit`,`Contact_NO`,`BOF`,`Business_Type`,`Business_permit_copy`) values 
(1,'ABC Bakery','John Smith','2020-01-15','Active','123 Main Street','Purok 1','BP202012345','123-456-7890','License','Bakery','BP202012345_copy.pdf'),
(2,'XYZ Pharmacy','Emily Johnson','2019-05-20','Active','456 Elm Street','Purok 2','PP202112345','234-567-8901','Permit','Pharmacy','PP202112345_copy.pdf'),
(3,'Sunrise Cafe','Michael Williams','2021-08-10','Active','789 Oak Street','Purok 3','BP202212345','345-678-9012','License','Cafe','BP202212345_copy.pdf'),
(4,'Green Thumb Nursery','Jessica Brown','2018-11-05','Inactive','101 Pine Street','Purok 4','NP202312345','456-789-0123','N/A','Nursery','NP202312345_copy.pdf'),
(5,'Tech Solutions','Matthew Davis','2022-03-25','Active','202 Maple Street','Purok 5','BP202412345','567-890-1234','License','Technology','BP202412345_copy.pdf'),
(6,'Golden Gym','Sarah Taylor','2017-09-30','Active','303 Cedar Street','Purok 6','BP202512345','678-901-2345','License','Gym','BP202512345_copy.pdf'),
(7,'Tasty Treats Restaurant','Daniel Martinez','2020-06-12','Active','404 Walnut Street','Purok 7','BP202612345','789-012-3456','License','Restaurant','BP202612345_copy.pdf'),
(8,'Fresh Farms Market','Olivia Garcia','2019-02-18','Active','505 Cherry Street','Purok 8','BP202712345','890-123-4567','License','Market','BP202712345_copy.pdf'),
(9,'Happy Tails Pet Grooming','Ethan Rodriguez','2021-07-08','Active','606 Peach Street','Purok 9','BP202812345','901-234-5678','License','Pet Care','BP202812345_copy.pdf'),
(10,'Sunny Days Daycare','Sophia Martinez','2018-04-03','Active','707 Plum Street','Purok 10','BP202912345','012-345-6789','License','Daycare','BP202912345_copy.pdf'),
(11,'ABC Auto Repair','Noah Hernandez','2019-11-22','Active','808 Grape Street','Purok 11','BP203012345','123-456-7890','License','Auto Repair','BP203012345_copy.pdf'),
(12,'Green Clean Laundry','Emma Lopez','2020-10-17','Active','909 Lemon Street','Purok 12','BP203112345','234-567-8901','License','Laundry','BP203112345_copy.pdf'),
(13,'Healthy Bites Cafe','Liam Martinez','2019-06-29','Active','010 Banana Street','Purok 13','BP203212345','345-678-9012','License','Cafe','BP203212345_copy.pdf'),
(14,'City Fitness Center','Mia Gonzalez','2021-04-14','Active','111 Orange Street','Purok 14','BP203312345','456-789-0123','License','Gym','BP203312345_copy.pdf'),
(15,'All Seasons Landscaping','Lucas Perez','2018-12-05','Inactive','212 Lime Street','Purok 15','NP203412345','567-890-1234','N/A','Landscaping','NP203412345_copy.pdf'),
(16,'ABC Accounting Services','Zoe Hernandez','2022-01-30','Active','313 Kiwi Street','Purok 16','BP203512345','678-901-2345','License','Accounting','BP203512345_copy.pdf'),
(17,'Silver Screen Cinema','Elijah Rodriguez','2017-08-19','Active','414 Grapefruit Street','Purok 17','BP203612345','789-012-3456','License','Cinema','BP203612345_copy.pdf'),
(18,'Quick Bites Fast Food','Ava Martinez','2020-05-10','Active','515 Tomato Street','Purok 18','BP203712345','890-123-4567','License','Fast Food','BP203712345_copy.pdf'),
(19,'ABC Plumbing Services','Logan Gonzalez','2019-01-25','Active','616 Pineapple Street','Purok 19','BP203812345','901-234-5678','License','Plumbing','BP203812345_copy.pdf'),
(20,'Cozy Homes Real Estate','Harper Perez','2021-08-14','Active','717 Potato Street','Purok 20','BP203912345','012-345-6789','License','Real Estate','BP203912345_copy.pdf'),
(21,'ABC Law Firm','Evelyn Hernandez','2018-03-05','Active','818 Cucumber Street','Purok 21','BP204012345','123-456-7890','License','Law Firm','BP204012345_copy.pdf'),
(22,'Glamour Hair Salon','Logan Martinez','2022-02-28','Active','919 Radish Street','Purok 22','BP204112345','234-567-8901','License','Hair Salon','BP204112345_copy.pdf'),
(23,'ABC Consulting Group','Sophia Hernandez','2017-10-20','Active','020 Carrot Street','Purok 23','BP204212345','345-678-9012','License','Consulting','BP204212345_copy.pdf'),
(24,'Sunny Skies Travel Agency','Lucas Garcia','2020-07-15','Active','121 Turnip Street','Purok 24','BP204312345','456-789-0123','License','Travel Agency','BP204312345_copy.pdf'),
(25,'ABC Catering Services','Lily Lopez','2019-04-08','Active','222 Onion Street','Purok 25','BP204412345','567-890-1234','License','Catering','BP204412345_copy.pdf'),
(26,'Smart Solutions IT Services','Mason Perez','2021-01-03','Active','323 Eggplant Street','Purok 26','BP204512345','678-901-2345','License','IT Services','BP204512345_copy.pdf'),
(27,'Golden Years Retirement Home','Aria Gonzalez','2018-06-18','Active','424 Squash Street','Purok 27','BP204612345','789-012-3456','License','Retirement Home','BP204612345_copy.pdf'),
(28,'ABC Auto Sales','Eli Martinez','2022-05-13','Active','525 Zucchini Street','Purok 28','BP204712345','890-123-4567','License','Auto Sales','BP204712345_copy.pdf'),
(29,'Natures Bounty Health Store','Nova Hernandez','2017-12-01','Active','626 Radish Street','Purok 29','BP204812345','901-234-5678','License','Health Store','BP204812345_copy.pdf'),
(30,'ABC Construction Company','Sofia Garcia','2020-09-26','Active','727 Carrot Street','Purok 30','BP204912345','012-345-6789','License','Construction','BP204912345_copy.pdf'),
(31,'Fit & Fab Fitness Center','Ethan Lopez','2019-06-18','Active','828 Turnip Street','Purok 31','BP205012345','123-456-7890','License','Fitness Center','BP205012345_copy.pdf'),
(32,'ABC Marketing Solutions','Scarlett Perez','2022-03-11','Active','929 Onion Street','Purok 32','BP205112345','234-567-8901','License','Marketing','BP205112345_copy.pdf'),
(33,'Sunny Side Up Breakfast Cafe','Henry Martinez','2018-11-05','Active','030 Eggplant Street','Purok 33','BP205212345','345-678-9012','License','Cafe','BP205212345_copy.pdf'),
(34,'ABC Legal Services','Aurora Gonzalez','2021-08-30','Active','131 Squash Street','Purok 34','BP205312345','456-789-0123','License','Legal Services','BP205312345_copy.pdf'),
(35,'Garden of Eden Florist','Leo Martinez','2017-04-25','Active','232 Zucchini Street','Purok 35','BP205412345','567-890-1234','License','Florist','BP205412345_copy.pdf'),
(36,'ABC Software Solutions','Hazel Garcia','2020-01-20','Active','333 Radish Street','Purok 36','BP205512345','678-901-2345','License','Software','BP205512345_copy.pdf'),
(37,'ABC Veterinary Clinic','Jack Lopez','2017-10-15','Active','434 Carrot Street','Purok 37','BP205612345','789-012-3456','License','Veterinary','BP205612345_copy.pdf'),
(38,'ABC Bookkeeping Services','Luna Perez','2021-07-10','Active','535 Turnip Street','Purok 38','BP205712345','890-123-4567','License','Bookkeeping','BP205712345_copy.pdf'),
(39,'ABC Art Studio','Kai Hernandez','2018-04-05','Active','636 Onion Street','Purok 39','BP205812345','901-234-5678','License','Art Studio','BP205812345_copy.pdf'),
(40,'ABC Dental Clinic','Nova Garcia','2022-01-30','Active','737 Eggplant Street','Purok 40','BP205912345','012-345-6789','License','Dental Clinic','BP205912345_copy.pdf'),
(41,'ABC Childcare Center','Scarlett Lopez','2017-08-25','Active','838 Radish Street','Purok 41','BP206012345','123-456-7890','License','Childcare','BP206012345_copy.pdf'),
(42,'ABC Fashion Boutique','Hazel Perez','2020-05-20','Active','939 Carrot Street','Purok 42','BP206112345','234-567-8901','License','Fashion Boutique','BP206112345_copy.pdf'),
(43,'ABC Security Services','Leo Martinez','2019-02-14','Active','040 Turnip Street','Purok 43','BP206212345','345-678-9012','License','Security Services','BP206212345_copy.pdf'),
(44,'ABC Bakery','Luna Garcia','2021-11-10','Active','141 Onion Street','Purok 44','BP206312345','456-789-0123','License','Bakery','BP206312345_copy.pdf'),
(45,'ABC Plumbing Services','Kai Hernandez','2018-08-05','Active','242 Eggplant Street','Purok 45','BP206412345','567-890-1234','License','Plumbing','BP206412345_copy.pdf'),
(46,'ABC Marketing Solutions','Nova Garcia','2020-03-01','Active','343 Radish Street','Purok 46','BP206512345','678-901-2345','License','Marketing','BP206512345_copy.pdf'),
(47,'ABC Dental Clinic','Scarlett Lopez','2017-10-26','Active','444 Carrot Street','Purok 47','BP206612345','789-012-3456','License','Dental Clinic','BP206612345_copy.pdf'),
(48,'ABC Childcare Center','Hazel Perez','2021-07-20','Active','545 Turnip Street','Purok 48','BP206712345','890-123-4567','License','Childcare','BP206712345_copy.pdf'),
(49,'ABC Fashion Boutique','Leo Martinez','2018-04-15','Active','646 Onion Street','Purok 49','BP206812345','901-234-5678','License','Fashion Boutique','BP206812345_copy.pdf'),
(50,'ABC Security Services','Luna Garcia','2022-01-10','Active','747 Eggplant Street','Purok 50','BP206912345','012-345-6789','License','Security Services','BP206912345_copy.pdf');

/*Table structure for table `cache` */

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cache` */

/*Table structure for table `cache_locks` */

DROP TABLE IF EXISTS `cache_locks`;

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cache_locks` */

/*Table structure for table `citizen` */

DROP TABLE IF EXISTS `citizen`;

CREATE TABLE `citizen` (
  `Citizen_ID` int NOT NULL AUTO_INCREMENT,
  `Citizen_profile` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Citizen_fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Citizen_mname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Citizen_lname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Purok` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Residence_Type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `BloodType` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Marital_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Citizen_birthdate` date NOT NULL,
  `Senior_member` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Education` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Enrollment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Occupation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Employment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Mobile_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Tel_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Religion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Deceased` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Pwd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Voter` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Voter_id` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Barangay_id` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PhilSys_Copy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`Citizen_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `citizen` */

insert  into `citizen`(`Citizen_ID`,`CItizen_profile`,`Citizen_fname`,`Citizen_mname`,`Citizen_lname`,`Address`,`Purok`,`Residence_Type`,`Sex`,`BloodType`,`Marital_status`,`Citizen_birthdate`,`Senior_member`,`Education`,`Enrollment_status`,`Occupation`,`Employment_status`,`Mobile_no`,`Tel_no`,`Religion`,`Deceased`,`Pwd`,`Voter`,`Voter_id`,`Barangay_id`,`PhilSys_Copy`,`created_at`,`updated_at`) values 
(1,NULL,'John','Doe','Smith','123 Main Street','Purok 1','House','M','O+','Single','1980-05-10','0','High School','Not Enrolled','Engineer','Employed','123-456-7890',NULL,'Christian','No','No','Yes','12345','1','PhilSysDoc1.pdf',NULL,NULL),
(2,NULL,'Jane','Mary','Doe','456 Elm Street','Purok 2','House','F','AB-','Married','1975-12-20','1','College','Enrolled','Teacher','Employed','987-654-3210','555-123-4567','Catholic','No','Yes','Yes','54321','2','PhilSysDoc2.pdf',NULL,NULL),
(3,NULL,'Michael','James','Johnson','789 Maple Avenue','Purok 3','Apartment','M','B+','Single','1992-08-25','0','Bachelor\'s Degree','Graduate','Accountant','Employed','111-222-3333','999-888-7777','Protestant','No','No','Yes','67890','3','PhilSysDoc3.pdf',NULL,NULL),
(4,NULL,'Emily','Grace','Williams','1011 Oak Lane','Purok 4','House','F','A-','Single','1988-03-12','0','High School','Not Enrolled','Nurse','Employed','222-333-4444',NULL,'Catholic','No','Yes','Yes','98765','4','PhilSysDoc4.pdf',NULL,NULL),
(5,NULL,'Matthew','David','Brown','1213 Cedar Court','Purok 5','Condominium','M','AB+','Married','1983-11-05','1','Master\'s Degree','Graduate','Professor','Employed','333-444-5555','777-888-9999','Christian','No','Yes','Yes','54321','5','PhilSysDoc5.pdf',NULL,NULL),
(6,NULL,'Olivia','Rose','Martinez','1415 Pine Street','Purok 6','House','F','O-','Married','1970-07-18','1','Doctorate Degree','Graduate','Doctor','Employed','444-555-6666',NULL,'Catholic','No','No','Yes','23456','6','PhilSysDoc6.pdf',NULL,NULL),
(7,NULL,'Ethan','Daniel','Garcia','1617 Walnut Avenue','Purok 7','House','M','A+','Single','1995-09-30','0','High School','Not Enrolled','Software Developer','Employed','555-666-7777',NULL,'Buddhist','No','No','Yes','34567','7','PhilSysDoc7.pdf',NULL,NULL),
(8,NULL,'Sophia','Madison','Lopez','1819 Hickory Lane','Purok 8','Apartment','F','B-','Single','1998-01-15','0','College','Enrolled','Student','Unemployed','666-777-8888',NULL,'Christian','No','Yes','No',NULL,'8','PhilSysDoc8.pdf',NULL,NULL),
(9,NULL,'Noah','Anthony','Gonzalez','2021 Elm Court','Purok 9','House','M','AB-','Married','1982-04-03','1','Bachelor\'s Degree','Graduate','Engineer','Employed','777-888-9999','888-999-0000','Atheist','No','Yes','Yes','45678','9','PhilSysDoc9.pdf',NULL,NULL),
(10,NULL,'Emma','Chloe','Rodriguez','2223 Cedar Drive','Purok 10','House','F','A-','Single','1994-06-20','0','College','Enrolled','Student','Unemployed','888-999-0000',NULL,'Catholic','No','Yes','No',NULL,'10','PhilSysDoc10.pdf',NULL,NULL),
(11,NULL,'William','Alexander','Perez','2425 Pine Road','Purok 11','House','M','O+','Single','1985-08-05','0','High School','Not Enrolled','Carpenter','Employed','999-000-1111',NULL,'Christian','No','No','Yes','56789','11','PhilSysDoc11.pdf',NULL,NULL),
(12,NULL,'Isabella','Zoe','Hernandez','2627 Walnut Street','Purok 12','House','F','A+','Single','1978-12-10','0','Master\'s Degree','Graduate','Lawyer','Employed','000-111-2222','111-222-3333','Catholic','No','Yes','Yes','67890','12','PhilSysDoc12.pdf',NULL,NULL),
(13,NULL,'James','Gabriel','Flores','2829 Hickory Avenue','Purok 13','Condominium','M','AB+','Single','1996-02-28','0','College','Enrolled','Student','Unemployed','111-222-3333',NULL,'Christian','No','No','No',NULL,'13','PhilSysDoc13.pdf',NULL,NULL),
(14,NULL,'Ava','Penelope','Washington','3031 Oak Drive','Purok 14','House','F','B+','Single','1973-04-15','0','Bachelor\'s Degree','Graduate','Manager','Employed','222-333-4444','333-444-5555','Protestant','No','Yes','Yes','78901','14','PhilSysDoc14.pdf',NULL,NULL),
(15,NULL,'Alexander','Ryan','Taylor','3233 Cedar Avenue','Purok 15','Apartment','M','O-','Married','1989-07-08','1','High School','Not Enrolled','Salesperson','Employed','333-444-5555','444-555-6666','Atheist','No','No','Yes','89012','15','PhilSysDoc15.pdf',NULL,NULL),
(16,NULL,'Mia','Avery','Adams','3435 Pine Lane','Purok 16','House','F','AB-','Single','1991-10-25','0','Master\'s Degree','Graduate','Engineer','Employed','444-555-6666',NULL,'Christian','No','Yes','Yes','90123','16','PhilSysDoc16.pdf',NULL,NULL),
(17,NULL,'Liam','Nathaniel','Campbell','3637 Walnut Court','Purok 17','House','M','A-','Single','1976-12-30','0','Doctorate Degree','Graduate','Doctor','Employed','555-666-7777','666-777-8888','Catholic','No','No','Yes','23456','17','PhilSysDoc17.pdf',NULL,NULL),
(18,NULL,'Charlotte','Hannah','Green','3839 Hickory Drive','Purok 18','House','F','B+','Single','1984-03-18','0','High School','Not Enrolled','Nurse','Employed','666-777-8888',NULL,'Christian','No','Yes','Yes','34567','18','PhilSysDoc18.pdf',NULL,NULL),
(19,NULL,'Benjamin','Christopher','Evans','4041 Oak Road','Purok 19','Apartment','M','AB+','Married','1979-09-05','1','Bachelor\'s Degree','Graduate','Manager','Employed','777-888-9999','888-999-0000','Protestant','No','Yes','Yes','45678','19','PhilSysDoc19.pdf',NULL,NULL),
(20,NULL,'Amelia','Lily','Harris','4243 Cedar Street','Purok 20','House','F','O-','Single','1993-01-20','0','College','Enrolled','Student','Unemployed','888-999-0000',NULL,'Catholic','No','Yes','No',NULL,'20','PhilSysDoc20.pdf',NULL,NULL),
(21,NULL,'Daniel','Christian','Martinez','4445 Pine Avenue','Purok 21','House','M','A-','Single','1980-05-10','0','High School','Not Enrolled','Carpenter','Employed','999-000-1111',NULL,'Christian','No','No','Yes','56789','21','PhilSysDoc21.pdf',NULL,NULL),
(22,NULL,'Harper','Natalie','Lopez','4647 Walnut Drive','Purok 22','House','F','O+','Single','1975-12-20','0','Master\'s Degree','Graduate','Lawyer','Employed','000-111-2222','111-222-3333','Catholic','No','Yes','Yes','67890','22','PhilSysDoc22.pdf',NULL,NULL),
(23,NULL,'Logan','Dylan','Gonzalez','4849 Hickory Lane','Purok 23','Condominium','M','AB-','Single','1992-08-25','0','Bachelor\'s Degree','Graduate','Engineer','Employed','111-222-3333',NULL,'Christian','No','No','No',NULL,'23','PhilSysDoc23.pdf',NULL,NULL),
(24,NULL,'Evelyn','Sofia','Flores','5051 Oak Court','Purok 24','House','F','B-','Single','1988-03-12','0','High School','Not Enrolled','Nurse','Employed','222-333-4444',NULL,'Catholic','No','Yes','Yes','78901','24','PhilSysDoc24.pdf',NULL,NULL),
(25,NULL,'Sebastian','Joseph','Washington','5253 Cedar Drive','Purok 25','Apartment','M','A+','Married','1983-11-05','1','Master\'s Degree','Graduate','Professor','Employed','333-444-5555','777-888-9999','Christian','No','Yes','Yes','89012','25','PhilSysDoc25.pdf',NULL,NULL),
(26,NULL,'Madison','Ava','Adams','5455 Pine Street','Purok 26','House','F','O-','Married','1970-07-18','1','Doctorate Degree','Graduate','Doctor','Employed','444-555-6666',NULL,'Catholic','No','No','Yes','90123','26','PhilSysDoc26.pdf',NULL,NULL),
(27,NULL,'Jackson','Lucas','Garcia','5657 Walnut Avenue','Purok 27','House','M','A+','Single','1995-09-30','0','High School','Not Enrolled','Software Developer','Employed','555-666-7777',NULL,'Buddhist','No','No','Yes','23456','27','PhilSysDoc27.pdf',NULL,NULL),
(28,NULL,'Avery','Mia','Lopez','5859 Hickory Lane','Purok 28','Apartment','F','B-','Single','1998-01-15','0','College','Enrolled','Student','Unemployed','666-777-8888',NULL,'Christian','No','Yes','No',NULL,'28','PhilSysDoc28.pdf',NULL,NULL),
(29,NULL,'Jack','Noah','Gonzalez','6061 Elm Court','Purok 29','House','M','AB-','Married','1982-04-03','1','Bachelor\'s Degree','Graduate','Engineer','Employed','777-888-9999','888-999-0000','Atheist','No','Yes','Yes','45678','29','PhilSysDoc29.pdf',NULL,NULL),
(30,NULL,'Lily','Amelia','Rodriguez','6263 Cedar Drive','Purok 30','House','F','A-','Single','1994-06-20','0','College','Enrolled','Student','Unemployed','888-999-0000',NULL,'Catholic','No','Yes','No',NULL,'30','PhilSysDoc30.pdf',NULL,NULL),
(31,NULL,'Ryan','Alexander','Perez','6465 Pine Road','Purok 31','House','M','O+','Single','1985-08-05','0','High School','Not Enrolled','Carpenter','Employed','999-000-1111',NULL,'Christian','No','No','Yes','56789','31','PhilSysDoc31.pdf',NULL,NULL),
(32,NULL,'Zoe','Isabella','Hernandez','6667 Walnut Street','Purok 32','House','F','A+','Single','1978-12-10','0','Master\'s Degree','Graduate','Lawyer','Employed','000-111-2222','111-222-3333','Catholic','No','Yes','Yes','67890','32','PhilSysDoc32.pdf',NULL,NULL),
(33,NULL,'Gabriel','James','Flores','6869 Hickory Avenue','Purok 33','Condominium','M','AB+','Single','1996-02-28','0','College','Enrolled','Student','Unemployed','111-222-3333',NULL,'Christian','No','No','No',NULL,'33','PhilSysDoc33.pdf',NULL,NULL),
(34,NULL,'Penelope','Ava','Washington','7071 Oak Drive','Purok 34','House','F','B+','Single','1973-04-15','0','Bachelor\'s Degree','Graduate','Manager','Employed','222-333-4444','333-444-5555','Protestant','No','Yes','Yes','78901','34','PhilSysDoc34.pdf',NULL,NULL),
(35,NULL,'Joseph','Sebastian','Taylor','7273 Cedar Avenue','Purok 35','Apartment','M','O-','Married','1989-07-08','1','High School','Not Enrolled','Salesperson','Employed','333-444-5555','444-555-6666','Atheist','No','No','Yes','89012','35','PhilSysDoc35.pdf',NULL,NULL),
(36,NULL,'Avery','Mia','Adams','7475 Pine Lane','Purok 36','House','F','AB-','Single','1991-10-25','0','Master\'s Degree','Graduate','Engineer','Employed','444-555-6666',NULL,'Christian','No','Yes','Yes','90123','36','PhilSysDoc36.pdf',NULL,NULL),
(37,NULL,'Lucas','Jackson','Garcia','7677 Walnut Court','Purok 37','House','M','A+','Single','1995-09-30','0','High School','Not Enrolled','Software Developer','Employed','555-666-7777',NULL,'Buddhist','No','No','Yes','23456','37','PhilSysDoc37.pdf',NULL,NULL),
(38,NULL,'Natalie','Harper','Lopez','7879 Hickory Lane','Purok 38','Apartment','F','B-','Single','1998-01-15','0','College','Enrolled','Student','Unemployed','666-777-8888',NULL,'Christian','No','Yes','No',NULL,'38','PhilSysDoc38.pdf',NULL,NULL),
(39,NULL,'Noah','Benjamin','Gonzalez','8081 Elm Court','Purok 39','House','M','AB-','Married','1982-04-03','1','Bachelor\'s Degree','Graduate','Engineer','Employed','777-888-9999','888-999-0000','Atheist','No','Yes','Yes','45678','39','PhilSysDoc39.pdf',NULL,NULL),
(40,NULL,'Chloe','Emma','Rodriguez','8283 Cedar Drive','Purok 40','House','F','A-','Single','1994-06-20','0','College','Enrolled','Student','Unemployed','888-999-0000',NULL,'Catholic','No','Yes','No',NULL,'40','PhilSysDoc40.pdf',NULL,NULL),
(41,NULL,'Alexander','William','Perez','8485 Pine Road','Purok 41','House','M','O+','Single','1985-08-05','0','High School','Not Enrolled','Carpenter','Employed','999-000-1111',NULL,'Christian','No','No','Yes','56789','41','PhilSysDoc41.pdf',NULL,NULL),
(42,NULL,'Zoe','Isabella','Hernandez','8687 Walnut Street','Purok 42','House','F','A+','Single','1978-12-10','0','Master\'s Degree','Graduate','Lawyer','Employed','000-111-2222','111-222-3333','Catholic','No','Yes','Yes','67890','42','PhilSysDoc42.pdf',NULL,NULL),
(43,NULL,'Gabriel','James','Flores','8889 Hickory Avenue','Purok 43','Condominium','M','AB+','Single','1996-02-28','0','College','Enrolled','Student','Unemployed','111-222-3333',NULL,'Christian','No','No','No',NULL,'43','PhilSysDoc43.pdf',NULL,NULL),
(44,NULL,'Penelope','Ava','Washington','9091 Oak Drive','Purok 44','House','F','B+','Single','1973-04-15','0','Bachelor\'s Degree','Graduate','Manager','Employed','222-333-4444','333-444-5555','Protestant','No','Yes','Yes','78901','44','PhilSysDoc44.pdf',NULL,NULL),
(45,NULL,'Joseph','Sebastian','Taylor','9293 Cedar Avenue','Purok 45','Apartment','M','O-','Married','1989-07-08','1','High School','Not Enrolled','Salesperson','Employed','333-444-5555','444-555-6666','Atheist','No','No','Yes','89012','45','PhilSysDoc45.pdf',NULL,NULL),
(46,NULL,'Avery','Mia','Adams','9495 Pine Lane','Purok 46','House','F','AB-','Single','1991-10-25','0','Master\'s Degree','Graduate','Engineer','Employed','444-555-6666',NULL,'Christian','No','Yes','Yes','90123','46','PhilSysDoc46.pdf',NULL,NULL),
(47,NULL,'Lucas','Jackson','Garcia','9697 Walnut Court','Purok 47','House','M','A+','Single','1995-09-30','0','High School','Not Enrolled','Software Developer','Employed','555-666-7777',NULL,'Buddhist','No','No','Yes','23456','47','PhilSysDoc47.pdf',NULL,NULL),
(48,NULL,'Natalie','Harper','Lopez','9899 Hickory Lane','Purok 48','Apartment','F','B-','Single','1998-01-15','0','College','Enrolled','Student','Unemployed','666-777-8888',NULL,'Christian','No','Yes','No',NULL,'48','PhilSysDoc48.pdf',NULL,NULL),
(49,NULL,'Noah','Benjamin','Gonzalez','10001 Elm Court','Purok 49','House','M','AB-','Married','1982-04-03','1','Bachelor\'s Degree','Graduate','Engineer','Employed','777-888-9999','888-999-0000','Atheist','No','Yes','Yes','45678','49','PhilSysDoc49.pdf',NULL,NULL),
(50,NULL,'Chloe','Emma','Rodriguez','10203 Cedar Drive','Purok 50','House','F','A-','Single','1994-06-20','0','College','Enrolled','Student','Unemployed','888-999-0000',NULL,'Catholic','No','Yes','No',NULL,'50','PhilSysDoc50.pdf',NULL,NULL);

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `Case_No` int NOT NULL AUTO_INCREMENT,
  `Staff_ID` int NOT NULL,
  `Citizen_ID` int NOT NULL,
  `Staff_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Complainant` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Complainee` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Row` int DEFAULT NULL,
  `FeeType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Actions_taken` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Complaint_document` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Complaints_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Case_No`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `complaint` */

insert  into `complaint`(`Case_No`,`Staff_ID`,`Citizen_ID`,`Staff_Name`,`Complainant`,`Complainee`,`Row`,`FeeType`,`Actions_taken`,`Complaint_document`,`Complaints_status`) values 
(1,1,1,'John Doe Smith','Jane Smith','Michael Johnson',1,'Garbage Collection','Resolved the issue by deploying additional waste bins in the area.','Complaint regarding irregular garbage collection schedule.','Closed'),
(2,2,2,'Jane Mary Doe','Michael Johnson','Emily Williams',2,'Property Tax','Issued a clarification regarding the property tax assessment.','Complaint regarding erroneous property tax assessment.','Ongoing'),
(3,3,3,'Michael James Johnson','Emily Williams','David Brown',3,'Street Lighting','Scheduled maintenance for malfunctioning street lights.','Complaint regarding dark streets in the neighborhood.','In Progress'),
(4,4,4,'Emily Grace Williams','David Brown','Sarah Jones',4,'Water Supply','Dispatched a team to repair water pipeline leaks.','Complaint regarding low water pressure.','Resolved'),
(5,5,5,'Matthew David Brown','Sarah Jones','Christopher Garcia',5,'Sewage Disposal','Performed a thorough inspection of sewage system and initiated repair works.','Complaint regarding foul smell from sewage drains.','Ongoing'),
(6,6,6,'Olivia Rose Martinez','Christopher Garcia','Amanda Martinez',6,'Community Center Rental','Provided a discount voucher for the next community center rental.','Complaint regarding noisy parties in the community center.','Closed'),
(7,7,7,'Ethan Daniel Garcia','Amanda Martinez','James Rodriguez',7,'Purok Development','Initiated a meeting with purok leaders to discuss development plans.','Complaint regarding lack of infrastructure in the purok.','In Progress'),
(8,8,8,'Sophia Madison Lopez','James Rodriguez','Jessica Hernandez',8,'Fire Protection','Conducted fire safety awareness campaign in the barangay.','Complaint regarding inadequate fire protection measures.','Resolved'),
(9,9,9,'Noah Anthony Gonzalez','Jessica Hernandez','Daniel Lopez',9,'Road Maintenance','Scheduled road repair works in the affected area.','Complaint regarding potholes on the road.','Ongoing'),
(10,10,10,'Emma Chloe Rodriguez','Daniel Lopez','Ashley Gonzalez',10,'School Infrastructure','Requested additional funding for school infrastructure improvements.','Complaint regarding dilapidated school facilities.','In Progress'),
(11,11,11,'William Alexander Perez','Ashley Gonzalez','Matthew Wilson',11,'Park Maintenance','Organized a community clean-up drive in the park.','Complaint regarding littering and overgrowth in the park.','Resolved'),
(12,12,12,'Isabella Zoe Hernandez','Matthew Wilson','Jennifer Anderson',12,'Medical Services','Facilitated medical outreach program in the barangay.','Complaint regarding limited access to healthcare services.','Closed'),
(13,13,13,'James Gabriel Flores','Jennifer Anderson','Andrew Taylor',13,'Security Services','Enhanced security patrols in the area.','Complaint regarding increasing incidents of theft.','In Progress'),
(14,14,14,'Ava Penelope Washington','Andrew Taylor','Elizabeth Thomas',14,'Environmental Conservation','Implemented tree planting initiative to address deforestation concerns.','Complaint regarding environmental degradation.','Resolved'),
(15,15,15,'Alexander Ryan Taylor','Elizabeth Thomas','Ryan Moore',15,'Waste Management','Introduced waste segregation program to promote recycling.','Complaint regarding improper waste disposal practices.','Ongoing'),
(16,16,16,'Mia Avery Adams','Ryan Moore','Megan Jackson',16,'Emergency Response','Conducted disaster preparedness training for barangay residents.','Complaint regarding lack of emergency response preparedness.','Closed'),
(17,17,17,'Liam Nathaniel Campbell','Megan Jackson','Kevin White',17,'Community Events','Organized a series of community engagement activities.','Complaint regarding lack of community events.','Resolved'),
(18,18,18,'Charlotte Hannah Green','Kevin White','Laura Harris',18,'Building Permits','Streamlined the process for building permit applications.','Complaint regarding delays in building permit issuance.','In Progress'),
(19,19,19,'Benjamin Christopher Evans','Laura Harris','Jason Lee',19,'Healthcare Access','Established a mobile health clinic for remote areas.','Complaint regarding healthcare access in remote areas.','Resolved'),
(20,20,20,'Amelia Lily Harris','Jason Lee','Stephanie King',20,'Infrastructure Maintenance','Initiated repairs on damaged infrastructure.','Complaint regarding deteriorating infrastructure.','Ongoing'),
(21,21,21,'Daniel Christian Martinez','Stephanie King','Brandon Scott',21,'Beautification Projects','Launched beautification projects to improve aesthetics.','Complaint regarding neglected public spaces.','Resolved'),
(22,22,22,'Harper Natalie Lopez','Brandon Scott','Nicole Green',22,'Education Programs','Expanded educational programs for out-of-school youth.','Complaint regarding lack of educational opportunities.','In Progress'),
(23,23,23,'Logan Dylan Gonzalez','Nicole Green','Adam Perez',23,'Sanitation Services','Implemented stricter sanitation regulations.','Complaint regarding unsanitary conditions.','Resolved'),
(24,24,24,'Evelyn Sofia Flores','Adam Perez','Heather Campbell',24,'Street Sweeping','Increased frequency of street sweeping operations.','Complaint regarding litter accumulation.','Ongoing'),
(25,25,25,'Sebastian Joseph Washington','Heather Campbell','Robert Evans',25,'Community Garden Maintenance','Organized a volunteer group for garden maintenance.','Complaint regarding neglected community garden.','Resolved'),
(26,26,26,'Madison Ava Adams','Robert Evans','Christina Murphy',26,'Community Policing','Enhanced community policing efforts.','Complaint regarding rising crime rates.','In Progress'),
(27,27,27,'Jackson Lucas Garcia','Christina Murphy','Joshua Rivera',27,'Youth Programs','Expanded youth programs to promote positive activities.','Complaint regarding lack of youth engagement.','Resolved'),
(28,28,28,'Avery Mia Lopez','Joshua Rivera','Samantha Cooper',28,'Public Transportation','Advocated for improved public transportation services.','Complaint regarding inadequate transportation options.','In Progress'),
(29,29,29,'Jack Noah Gonzalez','Samantha Cooper','Joseph Reed',29,'Street Repairs','Initiated road repair projects in the barangay.','Complaint regarding damaged roads.','Resolved'),
(30,30,30,'Lily Amelia Rodriguez','Joseph Reed','Alyssa Ward',30,'Housing Assistance','Provided assistance in securing affordable housing options.','Complaint regarding housing affordability.','Ongoing'),
(31,31,31,'Ryan Alexander Perez','Alyssa Ward','David Murphy',31,'Community Watch','Strengthened community watch program.','Complaint regarding security concerns.','Resolved'),
(32,32,32,'Zoe Isabella Hernandez','David Murphy','Brittany Richardson',32,'Public Library Services','Enhanced library services and resources.','Complaint regarding inadequate library facilities.','In Progress'),
(33,33,33,'Gabriel James Flores','Brittany Richardson','Christopher Cox',33,'Family Support Services','Expanded family support services for at-risk families.','Complaint regarding lack of social support.','Resolved'),
(34,34,34,'Penelope Ava Washington','Christopher Cox','Alexis Baker',34,'Disaster Preparedness','Conducted disaster preparedness workshops for residents.','Complaint regarding lack of disaster preparedness.','In Progress'),
(35,35,35,'Joseph Sebastian Taylor','Alexis Baker','Johnathan Brooks',35,'Recycling Programs','Promoted recycling initiatives and waste reduction.','Complaint regarding inadequate recycling facilities.','Resolved'),
(36,36,36,'Avery Mia Adams','Johnathan Brooks','Madison Ward',36,'Elderly Care Services','Expanded elderly care services and programs.','Complaint regarding lack of support for elderly residents.','In Progress'),
(37,37,37,'Lucas Jackson Garcia','Madison Ward','William Kelly',37,'Community Center Maintenance','Initiated maintenance works for community center facilities.','Complaint regarding deteriorating community center.','Resolved'),
(38,38,38,'Natalie Harper Lopez','William Kelly','Emily Cooper',38,'Public Health Initiatives','Launched public health campaigns for disease prevention.','Complaint regarding public health concerns.','In Progress'),
(39,39,39,'Noah Benjamin Gonzalez','Emily Cooper','Anthony Nelson',39,'Sports and Recreation Facilities','Improved sports facilities and organized recreational activities.','Complaint regarding lack of recreational opportunities.','Resolved'),
(40,40,40,'Chloe Emma Rodriguez','Anthony Nelson','Kayla Russell',40,'Digital Infrastructure','Upgraded digital infrastructure for better connectivity.','Complaint regarding poor internet connectivity.','In Progress'),
(41,41,41,'Alexander William Perez','Kayla Russell','Jonathan Price',41,'Community Outreach Programs','Expanded outreach programs to marginalized communities.','Complaint regarding lack of community engagement.','Resolved'),
(42,42,42,'Zoe Isabella Hernandez','Jonathan Price','Brianna Hughes',42,'Youth Education Programs','Enhanced educational programs for youth empowerment.','Complaint regarding educational disparities.','In Progress'),
(43,43,43,'Gabriel James Flores','Brianna Hughes','Tyler Coleman',43,'Senior Citizen Services','Introduced new services tailored to senior citizens.','Complaint regarding lack of support for elderly residents.','Resolved'),
(44,44,44,'Penelope Ava Washington','Tyler Coleman','Victoria Ortiz',44,'Community Beautification','Organized community cleanup drives and beautification projects.','Complaint regarding neglected public spaces.','In Progress'),
(45,45,45,'Joseph Sebastian Taylor','Victoria Ortiz','Daniel Barnes',45,'Cultural Events','Organized cultural events and festivals to celebrate diversity.','Complaint regarding lack of cultural activities.','Resolved'),
(46,46,46,'Avery Mia Adams','Daniel Barnes','Alexandra Long',46,'Green Initiatives','Implemented green initiatives to promote environmental sustainability.','Complaint regarding environmental pollution.','In Progress'),
(47,47,47,'Lucas Jackson Garcia','Alexandra Long','Christopher Patterson',47,'Infrastructure Development','Proposed infrastructure development projects for community improvement.','Complaint regarding inadequate infrastructure.','Resolved'),
(48,48,48,'Natalie Harper Lopez','Christopher Patterson','Olivia Wood',48,'Public Safety Programs','Strengthened public safety programs and emergency response measures.','Complaint regarding public safety concerns.','In Progress'),
(49,49,49,'Noah Benjamin Gonzalez','Olivia Wood','John Doe',49,'Not yet','Addressing the concern based on priority','Complaint regarding ...','Ongoing'),
(50,50,50,'Chloe Emma Rodriguez','John Doe','Jane Smith',50,'Done','Complaint resolved successfully','Complaint regarding ...','Closed');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `fee_type` */

DROP TABLE IF EXISTS `fee_type`;

CREATE TABLE `fee_type` (
  `Fee_Type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Fee_Amount` decimal(10,0) NOT NULL,
  `Collection_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Collection_period` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Collection_start` date DEFAULT NULL,
  PRIMARY KEY (`Fee_Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `fee_type` */

insert  into `fee_type`(`Fee_Type`,`Fee_Amount`,`Collection_type`,`Collection_period`,`Collection_start`) values 
('Beautification Projects',100,'Monthly','Monthly','2024-01-01'),
('Building Permits',300,'One-time','One-time','2024-01-01'),
('Community Beautification',150,'Quarterly','Quarterly','2024-01-01'),
('Community Center Maintenance',120,'Monthly','Monthly','2024-01-01'),
('Community Center Rental',150,'One-time','One-time','2024-01-01'),
('Community Events',50,'Monthly','Monthly','2024-01-01'),
('Community Garden Maintenance',50,'Monthly','Monthly','2024-01-01'),
('Community Outreach Programs',70,'Monthly','Monthly','2024-01-01'),
('Community Policing',200,'Monthly','Monthly','2024-01-01'),
('Community Watch',80,'Monthly','Monthly','2024-01-01'),
('Cultural Events',120,'Monthly','Monthly','2024-01-01'),
('Digital Infrastructure',200,'Yearly','Yearly','2024-01-01'),
('Disaster Preparedness',200,'Yearly','Yearly','2024-01-01'),
('Education Programs',80,'Monthly','Monthly','2024-01-01'),
('Elderly Care Services',150,'Monthly','Monthly','2024-01-01'),
('Emergency Response',180,'Yearly','Yearly','2024-01-01'),
('Environmental Conservation',150,'Quarterly','Quarterly','2024-01-01'),
('Family Support Services',90,'Monthly','Monthly','2024-01-01'),
('Fire Protection',120,'Yearly','Yearly','2024-01-01'),
('Garbage Collection',50,'Monthly','Monthly','2024-01-01'),
('Green Initiatives',100,'Monthly','Monthly','2024-01-01'),
('Healthcare Access',120,'Monthly','Monthly','2024-01-01'),
('Housing Assistance',180,'Yearly','Yearly','2024-01-01'),
('Infrastructure Development',80,'Monthly','Monthly','2024-01-01'),
('Infrastructure Maintenance',150,'Monthly','Monthly','2024-01-01'),
('Medical Services',100,'Monthly','Monthly','2024-01-01'),
('Park Maintenance',70,'Monthly','Monthly','2024-01-01'),
('Property Tax',2000,'Yearly','Yearly','2024-01-01'),
('Public Health Initiatives',100,'Monthly','Monthly','2024-01-01'),
('Public Library Services',70,'Monthly','Monthly','2024-01-01'),
('Public Safety Programs',200,'Monthly','Monthly','2024-01-01'),
('Public Transportation',150,'Monthly','Monthly','2024-01-01'),
('Purok Development',300,'Quarterly','Quarterly','2024-01-01'),
('Recycling Programs',50,'Monthly','Monthly','2024-01-01'),
('Road Maintenance',80,'Monthly','Monthly','2024-01-01'),
('Sanitation Services',70,'Monthly','Monthly','2024-01-01'),
('School Infrastructure',250,'Yearly','Yearly','2024-01-01'),
('Security Services',200,'Monthly','Monthly','2024-01-01'),
('Senior Citizen Services',90,'Monthly','Monthly','2024-01-01'),
('Sewage Disposal',60,'Monthly','Monthly','2024-01-01'),
('Sports and Recreation Facilities',80,'Monthly','Monthly','2024-01-01'),
('Street Lighting',100,'Monthly','Monthly','2024-01-01'),
('Street Repairs',120,'Monthly','Monthly','2024-01-01'),
('Street Sweeping',60,'Monthly','Monthly','2024-01-01'),
('Waste Management',90,'Monthly','Monthly','2024-01-01'),
('Water Supply',75,'Monthly','Monthly','2024-01-01'),
('Youth Education Programs',60,'Monthly','Monthly','2024-01-01'),
('Youth Programs',100,'Monthly','Monthly','2024-01-01');

/*Table structure for table `fees` */

DROP TABLE IF EXISTS `fees`;

CREATE TABLE `fees` (
  `Fees_ID` int NOT NULL AUTO_INCREMENT,
  `Staff_ID` int NOT NULL,
  `Citizen_ID` int NOT NULL,
  `Staff_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Fee_Recipient` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Paid_date` date DEFAULT NULL,
  `Paid_time` time(6) DEFAULT NULL,
  `FeeType` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AmountPaid` decimal(10,0) NOT NULL,
  `image_invoice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Fee_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Fees_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `fees` */

insert  into `fees`(`Fees_ID`,`Staff_ID`,`Citizen_ID`,`Staff_Name`,`Fee_Recipient`,`Paid_date`,`Paid_time`,`FeeType`,`AmountPaid`,`image_invoice`,`Fee_status`) values 
(1,1,1,'John Doe Smith','Jane Smith','2024-04-01','09:00:00.000000','Garbage Collection',50,'/images/invoice1.jpg','Done'),
(2,2,2,'Jane Mary Doe','Michael Johnson','2024-04-02','10:30:00.000000','Property Tax',2000,'/images/invoice2.jpg','Ongoing'),
(3,3,3,'Michael James Johnson','Emily Williams','2024-04-03','11:45:00.000000','Street Lighting',100,'/images/invoice3.jpg','Not yet'),
(4,4,4,'Emily Grace Williams','David Brown','2024-04-04','13:15:00.000000','Water Supply',75,'/images/invoice4.jpg','Done'),
(5,5,5,'Matthew David Brown','Sarah Jones','2024-04-05','14:45:00.000000','Sewage Disposal',60,'/images/invoice5.jpg','Done'),
(6,6,6,'Olivia Rose Martinez','Christopher Garcia','2024-04-06','16:00:00.000000','Community Center Rental',150,'/images/invoice6.jpg','Ongoing'),
(7,7,7,'Ethan Daniel Garcia','Amanda Martinez','2024-04-07','17:30:00.000000','Purok Development',300,'/images/invoice7.jpg','Done'),
(8,8,8,'Sophia Madison Lopez','James Rodriguez','2024-04-08','18:45:00.000000','Fire Protection',120,'/images/invoice8.jpg','Done'),
(9,9,9,'Noah Anthony Gonzalez','Jessica Hernandez','2024-04-09','19:55:00.000000','Road Maintenance',80,'/images/invoice9.jpg','Ongoing'),
(10,10,10,'Emma Chloe Rodriguez','Daniel Lopez','2024-04-10','20:45:00.000000','School Infrastructure',250,'/images/invoice10.jpg','Done'),
(11,11,11,'William Alexander Perez','Ashley Gonzalez','2024-04-11','21:30:00.000000','Park Maintenance',70,'/images/invoice11.jpg','Not yet'),
(12,12,12,'Isabella Zoe Hernandez','Matthew Wilson','2024-04-12','22:15:00.000000','Medical Services',100,'/images/invoice12.jpg','Done'),
(13,13,13,'James Gabriel Flores','Jennifer Anderson','2024-04-13','22:50:00.000000','Security Services',200,'/images/invoice13.jpg','Done'),
(14,14,14,'Ava Penelope Washington','Andrew Taylor','2024-04-14','23:30:00.000000','Environmental Conservation',150,'/images/invoice14.jpg','Ongoing'),
(15,15,15,'Alexander Ryan Taylor','Elizabeth Thomas','2024-04-15','00:10:00.000000','Waste Management',90,'/images/invoice15.jpg','Done'),
(16,16,16,'Mia Avery Adams','Ryan Moore','2024-04-16','01:00:00.000000','Emergency Response',180,'/images/invoice16.jpg','Not yet'),
(17,17,17,'Liam Nathaniel Campbell','Megan Jackson','2024-04-17','01:45:00.000000','Community Events',50,'/images/invoice17.jpg','Done'),
(18,18,18,'Charlotte Hannah Green','Kevin White','2024-04-18','02:30:00.000000','Building Permits',300,'/images/invoice18.jpg','Done'),
(19,19,19,'Benjamin Christopher Evans','Laura Harris','2024-04-19','03:15:00.000000','Healthcare Access',120,'/images/invoice19.jpg','Ongoing'),
(20,20,20,'Amelia Lily Harris','Jason Lee','2024-04-20','04:00:00.000000','Infrastructure Maintenance',150,'/images/invoice20.jpg','Done'),
(21,21,21,'Daniel Christian Martinez','Stephanie King','2024-04-21','04:45:00.000000','Beautification Projects',100,'/images/invoice21.jpg','Done'),
(22,22,22,'Harper Natalie Lopez','Brandon Scott','2024-04-22','05:30:00.000000','Education Programs',80,'/images/invoice22.jpg','Ongoing'),
(23,23,23,'Logan Dylan Gonzalez','Nicole Green','2024-04-23','06:15:00.000000','Sanitation Services',70,'/images/invoice23.jpg','Not yet'),
(24,24,24,'Evelyn Sofia Flores','Adam Perez','2024-04-24','07:00:00.000000','Street Sweeping',60,'/images/invoice24.jpg','Done'),
(25,25,25,'Sebastian Joseph Washington','Heather Campbell','2024-04-25','07:45:00.000000','Community Garden Maintenance',50,'/images/invoice25.jpg','Done'),
(26,26,26,'Madison Ava Adams','Robert Evans','2024-04-26','08:30:00.000000','Community Policing',200,'/images/invoice26.jpg','Ongoing'),
(27,27,27,'Jackson Lucas Garcia','Christina Murphy','2024-04-27','09:15:00.000000','Youth Programs',100,'/images/invoice27.jpg','Done'),
(28,28,28,'Avery Mia Lopez','Joshua Rivera','2024-04-28','10:00:00.000000','Public Transportation',150,'/images/invoice28.jpg','Done'),
(29,29,29,'Jack Noah Gonzalez','Samantha Cooper','2024-04-29','10:45:00.000000','Street Repairs',120,'/images/invoice29.jpg','Ongoing'),
(30,30,30,'Lily Amelia Rodriguez','Joseph Reed','2024-04-30','11:30:00.000000','Housing Assistance',180,'/images/invoice30.jpg','Done'),
(31,31,31,'Ryan Alexander Perez','Alyssa Ward','2024-05-01','12:15:00.000000','Community Watch',80,'/images/invoice31.jpg','Done'),
(32,32,32,'Zoe Isabella Hernandez','David Murphy','2024-05-02','13:00:00.000000','Public Library Services',70,'/images/invoice32.jpg','Ongoing'),
(33,33,33,'Gabriel James Flores','Brittany Richardson','2024-05-03','13:45:00.000000','Family Support Services',90,'/images/invoice33.jpg','Not yet'),
(34,34,34,'Penelope Ava Washington','Christopher Cox','2024-05-04','14:30:00.000000','Disaster Preparedness',200,'/images/invoice34.jpg','Done'),
(35,35,35,'Joseph Sebastian Taylor','Alexis Baker','2024-05-05','15:15:00.000000','Recycling Programs',50,'/images/invoice35.jpg','Done'),
(36,36,36,'Avery Mia Adams','Johnathan Brooks','2024-05-06','16:00:00.000000','Elderly Care Services',150,'/images/invoice36.jpg','Ongoing'),
(37,37,37,'Lucas Jackson Garcia','Madison Ward','2024-05-07','16:45:00.000000','Community Center Maintenance',120,'/images/invoice37.jpg','Done'),
(38,38,38,'Natalie Harper Lopez','William Kelly','2024-05-08','17:30:00.000000','Public Health Initiatives',100,'/images/invoice38.jpg','Not yet'),
(39,39,39,'Noah Benjamin Gonzalez','Emily Cooper','2024-05-09','18:15:00.000000','Sports and Recreation Facilities',80,'/images/invoice39.jpg','Done'),
(40,40,40,'Chloe Emma Rodriguez','Anthony Nelson','2024-05-10','19:00:00.000000','Digital Infrastructure',200,'/images/invoice40.jpg','Ongoing'),
(41,41,41,'Alexander William Perez','Kayla Russell','2024-05-11','19:45:00.000000','Community Outreach Programs',70,'/images/invoice41.jpg','Done'),
(42,42,42,'Zoe Isabella Hernandez','Jonathan Price','2024-05-12','20:30:00.000000','Youth Education Programs',60,'/images/invoice42.jpg','Done'),
(43,43,43,'Gabriel James Flores','Brianna Hughes','2024-05-13','21:15:00.000000','Senior Citizen Services',90,'/images/invoice43.jpg','Ongoing'),
(44,44,44,'Penelope Ava Washington','Tyler Coleman','2024-05-14','22:00:00.000000','Community Beautification',150,'/images/invoice44.jpg','Done'),
(45,45,45,'Joseph Sebastian Taylor','Victoria Ortiz','2024-05-15','22:45:00.000000','Cultural Events',120,'/images/invoice45.jpg','Not yet'),
(46,46,46,'Avery Mia Adams','Daniel Barnes','2024-05-16','23:30:00.000000','Green Initiatives',100,'/images/invoice46.jpg','Done'),
(47,47,47,'Lucas Jackson Garcia','Alexandra Long','2024-05-17','00:15:00.000000','Infrastructure Development',80,'/images/invoice47.jpg','Ongoing'),
(48,48,48,'Natalie Harper Lopez','Christopher Patterson','2024-05-18','01:00:00.000000','Public Safety Programs',200,'/images/invoice48.jpg','Done'),
(49,49,49,'Noah Benjamin Gonzalez','Olivia Wood','2024-05-19','01:45:00.000000','Not yet',150,'/images/invoice49.jpg','Done'),
(50,50,50,'Chloe Emma Rodriguez','John Doe','2024-05-20','02:30:00.000000','Done',120,'/images/invoice50.jpg','Done');

/*Table structure for table `fiscal_info` */

DROP TABLE IF EXISTS `fiscal_info`;

CREATE TABLE `fiscal_info` (
  `Brgy_ID` int NOT NULL,
  `IRA` int DEFAULT NULL,
  `Donations` int DEFAULT NULL,
  `sk_fund` int DEFAULT NULL,
  `rpt_share` int DEFAULT NULL,
  `fees_and_charges` int DEFAULT NULL,
  `others` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `fiscal_info` */

insert  into `fiscal_info`(`Brgy_ID`,`IRA`,`Donations`,`sk_fund`,`rpt_share`,`fees_and_charges`,`others`) values 
(1,500000,20000,100000,150000,75000,'Miscellaneous revenue from events and programs'),
(2,550000,18000,90000,140000,70000,'Miscellaneous revenue from fines and penalties'),
(3,480000,22000,95000,160000,72000,'Miscellaneous revenue from licenses and permits'),
(4,520000,21000,105000,155000,80000,'Miscellaneous revenue from rentals and leases'),
(5,530000,19000,98000,145000,77000,'Miscellaneous revenue from grants and subsidies'),
(6,510000,23000,102000,165000,78000,'Miscellaneous revenue from investments and interests'),
(7,490000,20000,96000,152000,76000,'Miscellaneous revenue from sales of assets'),
(8,540000,21000,110000,158000,79000,'Miscellaneous revenue from reimbursements and recoveries'),
(9,500000,18000,105000,148000,74000,'Miscellaneous revenue from dividends and shares'),
(10,550000,24000,95000,162000,81000,'Miscellaneous revenue from fines and penalties'),
(11,480000,22000,100000,154000,73000,'Miscellaneous revenue from licenses and permits'),
(12,520000,20000,107000,150000,76000,'Miscellaneous revenue from rentals and leases'),
(13,530000,19000,99000,146000,78000,'Miscellaneous revenue from grants and subsidies'),
(14,510000,21000,103000,159000,77000,'Miscellaneous revenue from investments and interests'),
(15,490000,22000,97000,155000,75000,'Miscellaneous revenue from sales of assets'),
(16,540000,23000,106000,160000,80000,'Miscellaneous revenue from reimbursements and recoveries'),
(17,500000,19000,96000,150000,76000,'Miscellaneous revenue from dividends and shares'),
(18,550000,20000,97000,164000,82000,'Miscellaneous revenue from fines and penalties'),
(19,480000,23000,102000,151000,78000,'Miscellaneous revenue from licenses and permits'),
(20,520000,21000,108000,157000,79000,'Miscellaneous revenue from rentals and leases'),
(21,530000,18000,100000,145000,76000,'Miscellaneous revenue from grants and subsidies'),
(22,510000,22000,104000,160000,77000,'Miscellaneous revenue from investments and interests'),
(23,490000,19000,98000,152000,75000,'Miscellaneous revenue from sales of assets'),
(24,540000,22000,105000,158000,80000,'Miscellaneous revenue from reimbursements and recoveries'),
(25,500000,21000,95000,150000,78000,'Miscellaneous revenue from dividends and shares'),
(26,550000,24000,96000,163000,83000,'Miscellaneous revenue from fines and penalties'),
(27,480000,20000,103000,153000,74000,'Miscellaneous revenue from licenses and permits'),
(28,520000,23000,109000,155000,77000,'Miscellaneous revenue from rentals and leases'),
(29,530000,21000,101000,148000,79000,'Miscellaneous revenue from grants and subsidies'),
(30,510000,18000,105000,160000,80000,'Miscellaneous revenue from investments and interests'),
(31,490000,22000,97000,152000,77000,'Miscellaneous revenue from sales of assets'),
(32,540000,19000,106000,156000,79000,'Miscellaneous revenue from reimbursements and recoveries'),
(33,500000,24000,98000,155000,80000,'Miscellaneous revenue from dividends and shares'),
(34,550000,22000,97000,162000,83000,'Miscellaneous revenue from fines and penalties'),
(35,480000,21000,102000,153000,75000,'Miscellaneous revenue from licenses and permits'),
(36,520000,20000,110000,157000,76000,'Miscellaneous revenue from rentals and leases'),
(37,530000,23000,100000,148000,78000,'Miscellaneous revenue from grants and subsidies'),
(38,510000,22000,104000,159000,79000,'Miscellaneous revenue from investments and interests'),
(39,490000,19000,99000,152000,77000,'Miscellaneous revenue from sales of assets'),
(40,540000,21000,107000,158000,80000,'Miscellaneous revenue from reimbursements and recoveries'),
(41,500000,20000,97000,155000,79000,'Miscellaneous revenue from dividends and shares'),
(42,550000,23000,95000,160000,82000,'Miscellaneous revenue from fines and penalties'),
(43,480000,22000,103000,152000,76000,'Miscellaneous revenue from licenses and permits'),
(44,520000,24000,106000,157000,77000,'Miscellaneous revenue from rentals and leases'),
(45,530000,19000,98000,145000,78000,'Miscellaneous revenue from grants and subsidies'),
(46,510000,21000,102000,160000,76000,'Miscellaneous revenue from investments and interests'),
(47,490000,20000,108000,151000,78000,'Miscellaneous revenue from sales of assets'),
(48,540000,23000,105000,158000,80000,'Miscellaneous revenue from reimbursements and recoveries'),
(49,500000,22000,96000,156000,79000,'Miscellaneous revenue from dividends and shares'),
(50,550000,21000,98000,163000,83000,'Miscellaneous revenue from fines and penalties');

/*Table structure for table `household` */

DROP TABLE IF EXISTS `household`;

CREATE TABLE `household` (
  `Household_No` int NOT NULL AUTO_INCREMENT,
  `Worker_ID` int NOT NULL,
  `family_member` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Family_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Residence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Household_No`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `household` */

insert  into `household`(`Household_No`,`Worker_ID`,`family_member`,`Family_position`,`Residence`) values 
(1,1,'John Doe','Head','123 Main Street'),
(2,2,'Jane Smith','Spouse','456 Elm Avenue'),
(3,3,'Michael Johnson','Head','789 Oak Boulevard'),
(4,4,'Emily Williams','Head','101 Maple Drive'),
(5,5,'David Brown','Head','222 Pine Lane'),
(6,6,'Sarah Jones','Head','333 Cedar Road'),
(7,7,'Christopher Garcia','Head','444 Birch Street'),
(8,8,'Amanda Martinez','Head','555 Walnut Avenue'),
(9,9,'James Rodriguez','Head','666 Cherry Boulevard'),
(10,10,'Jessica Hernandez','Head','777 Spruce Lane'),
(11,11,'Daniel Lopez','Head','888 Sycamore Road'),
(12,12,'Ashley Gonzalez','Head','999 Magnolia Drive'),
(13,13,'Matthew Wilson','Head','111 Pinecrest Avenue'),
(14,14,'Jennifer Anderson','Head','222 Cedarwood Boulevard'),
(15,15,'Andrew Taylor','Head','333 Oakdale Lane'),
(16,16,'Elizabeth Thomas','Head','444 Maplewood Road'),
(17,17,'Ryan Moore','Head','555 Elmwood Drive'),
(18,18,'Megan Jackson','Head','666 Birchcrest Avenue'),
(19,19,'Kevin White','Head','777 Walnutwood Boulevard'),
(20,20,'Laura Harris','Head','888 Cherrywood Lane'),
(21,21,'Jason Lee','Head','999 Sprucewood Road'),
(22,22,'Stephanie King','Head','111 Magnoliacrest Avenue'),
(23,23,'Brandon Scott','Head','222 Pinewood Lane'),
(24,24,'Nicole Green','Head','333 Cedarcrest Road'),
(25,25,'Adam Perez','Head','444 Oakwood Drive'),
(26,26,'Heather Campbell','Head','555 Maplecrest Avenue'),
(27,27,'Robert Evans','Head','666 Elmdale Lane'),
(28,28,'Christina Murphy','Head','777 Birchwood Road'),
(29,29,'Joshua Rivera','Head','888 Walnutcrest Avenue'),
(30,30,'Samantha Cooper','Head','999 Cherrystone Lane'),
(31,31,'Joseph Reed','Head','111 Sprucecrest Road'),
(32,32,'Alyssa Ward','Head','222 Magnoliawood Drive'),
(33,33,'David Murphy','Head','333 Pinewoodcrest Avenue'),
(34,34,'Brittany Richardson','Head','444 Cedarwoodwood Lane'),
(35,35,'Christopher Cox','Head','555 Oakcrest Road'),
(36,36,'Alexis Baker','Head','666 Maplestone Drive'),
(37,37,'Johnathan Brooks','Head','777 Elmcrest Avenue'),
(38,38,'Madison Ward','Head','888 Birchwoodwood Lane'),
(39,39,'William Kelly','Head','999 Walnutstone Road'),
(40,40,'Emily Cooper','Head','111 Cherrycrest Avenue'),
(41,41,'Anthony Nelson','Head','222 Sprucewoodwood Lane'),
(42,42,'Kayla Russell','Head','333 Magnoliacrest Road'),
(43,43,'Jonathan Price','Head','444 Pineewoodwood Drive'),
(44,44,'Brianna Hughes','Head','555 Cedarstone Avenue'),
(45,45,'Tyler Coleman','Head','666 Oakwoodwood Lane'),
(46,46,'Victoria Ortiz','Head','777 Maplecrestcrest Road'),
(47,47,'Daniel Barnes','Head','888 Elmstone Avenue'),
(48,48,'Alexandra Long','Head','999 Birchcrestcrest Lane'),
(49,49,'Christopher Patterson','Head','111 Walnutwoodwood Road'),
(50,50,'Olivia Wood','Head','222 Cherrycrestcrest Avenue');

/*Table structure for table `job_batches` */

DROP TABLE IF EXISTS `job_batches`;

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `job_batches` */

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jobs` */

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `Admin_ID` int NOT NULL,
  `Login` datetime(6) DEFAULT NULL,
  `Logout` datetime(6) DEFAULT NULL,
  `Date` date NOT NULL,
  `Time` time(6) NOT NULL,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `log` */

insert  into `log`(`LogID`,`Admin_ID`,`Login`,`Logout`,`Date`,`Time`) values 
(1,1,'2024-04-01 08:30:00.000000','2024-04-01 17:45:00.000000','2024-04-01','08:30:00.000000'),
(2,2,'2024-04-01 09:15:00.000000','2024-04-01 18:00:00.000000','2024-04-01','09:15:00.000000'),
(3,3,'2024-04-01 08:00:00.000000','2024-04-01 16:30:00.000000','2024-04-01','08:00:00.000000'),
(4,4,'2024-04-01 10:00:00.000000','2024-04-01 17:00:00.000000','2024-04-01','10:00:00.000000'),
(5,5,'2024-04-01 07:45:00.000000','2024-04-01 16:45:00.000000','2024-04-01','07:45:00.000000'),
(6,6,'2024-04-01 08:30:00.000000','2024-04-01 17:30:00.000000','2024-04-01','08:30:00.000000'),
(7,7,'2024-04-01 08:15:00.000000','2024-04-01 18:15:00.000000','2024-04-01','08:15:00.000000'),
(8,8,'2024-04-01 07:30:00.000000','2024-04-01 16:30:00.000000','2024-04-01','07:30:00.000000'),
(9,9,'2024-04-01 09:00:00.000000','2024-04-01 17:00:00.000000','2024-04-01','09:00:00.000000'),
(10,10,'2024-04-01 08:45:00.000000','2024-04-01 18:30:00.000000','2024-04-01','08:45:00.000000'),
(11,11,'2024-04-01 08:00:00.000000','2024-04-01 17:00:00.000000','2024-04-01','08:00:00.000000'),
(12,12,'2024-04-01 10:30:00.000000','2024-04-01 17:45:00.000000','2024-04-01','10:30:00.000000'),
(13,13,'2024-04-01 08:15:00.000000','2024-04-01 16:45:00.000000','2024-04-01','08:15:00.000000'),
(14,14,'2024-04-01 07:45:00.000000','2024-04-01 17:30:00.000000','2024-04-01','07:45:00.000000'),
(15,15,'2024-04-01 08:30:00.000000','2024-04-01 17:00:00.000000','2024-04-01','08:30:00.000000'),
(16,16,'2024-04-01 09:00:00.000000','2024-04-01 18:15:00.000000','2024-04-01','09:00:00.000000'),
(17,17,'2024-04-01 08:15:00.000000','2024-04-01 17:30:00.000000','2024-04-01','08:15:00.000000'),
(18,18,'2024-04-01 07:30:00.000000','2024-04-01 17:45:00.000000','2024-04-01','07:30:00.000000'),
(19,19,'2024-04-01 09:30:00.000000','2024-04-01 17:00:00.000000','2024-04-01','09:30:00.000000'),
(20,20,'2024-04-01 08:45:00.000000','2024-04-01 16:45:00.000000','2024-04-01','08:45:00.000000'),
(21,21,'2024-04-01 08:00:00.000000','2024-04-01 17:30:00.000000','2024-04-01','08:00:00.000000'),
(22,22,'2024-04-01 10:15:00.000000','2024-04-01 18:00:00.000000','2024-04-01','10:15:00.000000'),
(23,23,'2024-04-01 08:30:00.000000','2024-04-01 16:30:00.000000','2024-04-01','08:30:00.000000'),
(24,24,'2024-04-01 07:45:00.000000','2024-04-01 17:15:00.000000','2024-04-01','07:45:00.000000'),
(25,25,'2024-04-01 09:00:00.000000','2024-04-01 17:45:00.000000','2024-04-01','09:00:00.000000'),
(26,26,'2024-04-01 08:15:00.000000','2024-04-01 16:45:00.000000','2024-04-01','08:15:00.000000'),
(27,27,'2024-04-01 07:30:00.000000','2024-04-01 17:00:00.000000','2024-04-01','07:30:00.000000'),
(28,28,'2024-04-01 09:45:00.000000','2024-04-01 17:30:00.000000','2024-04-01','09:45:00.000000'),
(29,29,'2024-04-01 08:30:00.000000','2024-04-01 16:30:00.000000','2024-04-01','08:30:00.000000'),
(30,30,'2024-04-01 07:45:00.000000','2024-04-01 17:45:00.000000','2024-04-01','07:45:00.000000'),
(31,31,'2024-04-01 08:00:00.000000','2024-04-01 16:45:00.000000','2024-04-01','08:00:00.000000'),
(32,32,'2024-04-01 09:15:00.000000','2024-04-01 17:30:00.000000','2024-04-01','09:15:00.000000'),
(33,33,'2024-04-01 08:30:00.000000','2024-04-01 17:45:00.000000','2024-04-01','08:30:00.000000'),
(34,34,'2024-04-01 07:45:00.000000','2024-04-01 16:45:00.000000','2024-04-01','07:45:00.000000'),
(35,35,'2024-04-01 09:00:00.000000','2024-04-01 17:30:00.000000','2024-04-01','09:00:00.000000'),
(36,36,'2024-04-01 08:15:00.000000','2024-04-01 17:00:00.000000','2024-04-01','08:15:00.000000'),
(37,37,'2024-04-01 07:30:00.000000','2024-04-01 17:45:00.000000','2024-04-01','07:30:00.000000'),
(38,38,'2024-04-01 09:30:00.000000','2024-04-01 16:30:00.000000','2024-04-01','09:30:00.000000'),
(39,39,'2024-04-01 08:45:00.000000','2024-04-01 17:15:00.000000','2024-04-01','08:45:00.000000'),
(40,40,'2024-04-01 07:45:00.000000','2024-04-01 16:45:00.000000','2024-04-01','07:45:00.000000'),
(41,41,'2024-04-01 08:30:00.000000','2024-04-01 17:30:00.000000','2024-04-01','08:30:00.000000'),
(42,42,'2024-04-01 09:00:00.000000','2024-04-01 17:45:00.000000','2024-04-01','09:00:00.000000'),
(43,43,'2024-04-01 08:15:00.000000','2024-04-01 16:45:00.000000','2024-04-01','08:15:00.000000'),
(44,44,'2024-04-01 07:30:00.000000','2024-04-01 17:15:00.000000','2024-04-01','07:30:00.000000'),
(45,45,'2024-04-01 09:45:00.000000','2024-04-01 17:30:00.000000','2024-04-01','09:45:00.000000'),
(46,46,'2024-04-01 08:30:00.000000','2024-04-01 16:30:00.000000','2024-04-01','08:30:00.000000'),
(47,47,'2024-04-01 07:45:00.000000','2024-04-01 17:00:00.000000','2024-04-01','07:45:00.000000'),
(48,48,'2024-04-01 09:00:00.000000','2024-04-01 17:45:00.000000','2024-04-01','09:00:00.000000'),
(49,49,'2024-04-01 08:15:00.000000','2024-04-01 17:30:00.000000','2024-04-01','08:15:00.000000'),
(50,50,'2024-04-01 07:30:00.000000','2024-04-01 16:45:00.000000','2024-04-01','07:30:00.000000');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1);

/*Table structure for table `notes` */

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `NoteID` int NOT NULL AUTO_INCREMENT,
  `Admin_ID` int NOT NULL,
  `Citizen_ID` int NOT NULL,
  `Logout` datetime(6) DEFAULT NULL,
  `Note_date` date NOT NULL,
  `Note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`NoteID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `notes` */

insert  into `notes`(`NoteID`,`Admin_ID`,`Citizen_ID`,`Logout`,`Note_date`,`Note`) values 
(1,1,1,'2024-04-01 17:45:00.000000','2024-04-01','This is a note regarding citizen #101.'),
(2,2,2,'2024-04-01 18:00:00.000000','2024-04-01','Note: Citizen #102 requested assistance with their utility bill payment.'),
(3,3,3,'2024-04-01 16:30:00.000000','2024-04-01','Reminder: Follow up with citizen #103 regarding their pending permit application.'),
(4,4,4,'2024-04-01 17:00:00.000000','2024-04-01','Important: Citizen #104 reported a safety concern in their neighborhood.'),
(5,5,5,'2024-04-01 16:45:00.000000','2024-04-01','Action required: Schedule a meeting with citizen #105 to discuss community development projects.'),
(6,6,6,'2024-04-01 17:30:00.000000','2024-04-01','Note: Citizen #106 expressed interest in volunteering for upcoming events.'),
(7,7,7,'2024-04-01 18:15:00.000000','2024-04-01','Update: Citizen #107 provided feedback on recent road repairs.'),
(8,8,8,'2024-04-01 16:30:00.000000','2024-04-01','Reminder: Deliver emergency preparedness pamphlets to citizen #108.'),
(9,9,9,'2024-04-01 17:00:00.000000','2024-04-01','Note: Citizen #109 inquired about upcoming community events.'),
(10,10,10,'2024-04-01 18:30:00.000000','2024-04-01','Feedback received from citizen #110 regarding waste management practices.'),
(11,11,11,'2024-04-01 17:00:00.000000','2024-04-01','Action item: Investigate noise complaints reported by citizen #111.'),
(12,12,12,'2024-04-01 17:45:00.000000','2024-04-01','Reminder: Coordinate with citizen #112 for their community garden proposal.'),
(13,13,13,'2024-04-01 16:45:00.000000','2024-04-01','Update: Met with citizen #113 to discuss neighborhood watch program.'),
(14,14,14,'2024-04-01 17:30:00.000000','2024-04-01','Feedback: Citizen #114 suggested improvements to street lighting in their area.'),
(15,15,15,'2024-04-01 17:00:00.000000','2024-04-01','Note: Citizen #115 reported a pothole on Elm Street.'),
(16,16,16,'2024-04-01 18:15:00.000000','2024-04-01','Action required: Respond to citizen #116 inquiry regarding property taxes.'),
(17,17,17,'2024-04-01 17:30:00.000000','2024-04-01','Reminder: Follow up citizen 117 regarding their noise complaint.'),
(18,18,18,'2024-04-01 17:45:00.000000','2024-04-01','Feedback received from citizen #118 on recent park renovations.'),
(19,19,19,'2024-04-01 16:30:00.000000','2024-04-01','Update: Citizen #119 signed up for the upcoming community cleanup event.'),
(20,20,20,'2024-04-01 17:45:00.000000','2024-04-01','Note: Citizen #120 requested information about local recycling programs.'),
(21,21,21,'2024-04-01 17:30:00.000000','2024-04-01','Action item: Address citizen #121s concerns regarding street parking.'),
(22,22,22,'2024-04-01 18:00:00.000000','2024-04-01','Reminder: Provide updates to citizen #122 on the status of their permit application.'),
(23,23,23,'2024-04-01 16:30:00.000000','2024-04-01','Note: Citizen #123 expressed interest in joining the community garden.'),
(24,24,24,'2024-04-01 17:15:00.000000','2024-04-01','Feedback received from citizen #124 on the recent street cleaning efforts.'),
(25,25,25,'2024-04-01 17:45:00.000000','2024-04-01','Update: Met with citizen #125 to discuss their business permit renewal.'),
(26,26,26,'2024-04-01 16:45:00.000000','2024-04-01','Action required: Investigate citizen #126s report of graffiti vandalism.'),
(27,27,27,'2024-04-01 17:00:00.000000','2024-04-01','Reminder: Citizen #127 requested information on local volunteer opportunities.'),
(28,28,28,'2024-04-01 17:30:00.000000','2024-04-01','Note: Citizen #128 provided positive feedback on recent community events.'),
(29,29,29,'2024-04-01 16:30:00.000000','2024-04-01','Update: Citizen #129 requested assistance with their business registration.'),
(30,30,30,'2024-04-01 17:45:00.000000','2024-04-01','Feedback received from citizen #130 on the condition of local playground equipment.'),
(31,31,31,'2024-04-01 17:00:00.000000','2024-04-01','Note: Citizen #131 reported a damaged sidewalk on Maple Avenue.'),
(32,32,32,'2024-04-01 18:15:00.000000','2024-04-01','Action item: Follow up with citizen #132 regarding their building permit application.'),
(33,33,33,'2024-04-01 17:30:00.000000','2024-04-01','Reminder: Citizen #133 requested information on local community centers.'),
(34,34,34,'2024-04-01 17:45:00.000000','2024-04-01','Update: Met with citizen #134 to discuss neighborhood beautification efforts.'),
(35,35,35,'2024-04-01 16:45:00.000000','2024-04-01','Note: Citizen #135 expressed concerns about stray animals in the area.'),
(36,36,36,'2024-04-01 17:00:00.000000','2024-04-01','Feedback received from citizen #136 on the recent road repairs.'),
(37,37,37,'2024-04-01 17:45:00.000000','2024-04-01','Action required: Investigate citizen #137s complaint about noise pollution.'),
(38,38,38,'2024-04-01 16:30:00.000000','2024-04-01','Reminder: Citizen #138 requested assistance with their property tax assessment.'),
(39,39,39,'2024-04-01 18:00:00.000000','2024-04-01','Note: Citizen #139 inquired about the schedule for garbage collection.'),
(40,40,40,'2024-04-01 17:30:00.000000','2024-04-01','Feedback received from citizen #140 on recent park maintenance activities.'),
(41,41,41,'2024-04-01 17:45:00.000000','2024-04-01','Update: Met with citizen #141 to discuss their proposal for a community event.'),
(42,42,42,'2024-04-01 16:30:00.000000','2024-04-01','Action item: Address citizen #142s concerns about street lighting.'),
(43,43,43,'2024-04-01 18:15:00.000000','2024-04-01','Reminder: Citizen #143 requested information on local recycling programs.'),
(44,44,44,'2024-04-01 17:00:00.000000','2024-04-01','Note: Citizen #144 reported a pothole on Oak Street.'),
(45,45,45,'2024-04-01 17:45:00.000000','2024-04-01','Feedback received from citizen #145 on the recent community meeting.'),
(46,46,46,'2024-04-01 16:45:00.000000','2024-04-01','Action required: Respond to citizen #146s inquiry regarding public transportation.'),
(47,47,47,'2024-04-01 17:00:00.000000','2024-04-01','Reminder: Citizen #147 requested assistance with their business permit renewal.'),
(48,48,48,'2024-04-01 17:30:00.000000','2024-04-01','Note: Citizen #148 expressed interest in participating in a neighborhood watch program.'),
(49,49,149,'2024-04-01 16:30:00.000000','2024-04-01','Update: Met with citizen #149 to discuss their concerns about street maintenance.'),
(50,50,50,'2024-04-01 17:45:00.000000','2024-04-01','Feedback received from citizen #150 on recent improvements to public parks.');

/*Table structure for table `password_reset_tokens` */

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_reset_tokens` */

/*Table structure for table `political_info` */

DROP TABLE IF EXISTS `political_info`;

CREATE TABLE `political_info` (
  `Brgy_ID` int NOT NULL,
  `LBC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `No_of_precints` int DEFAULT NULL,
  `Plebiscite_date` date DEFAULT NULL,
  `BDC_level` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `BPOC_level` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `BCPC_level` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `VAW_desk_level` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `BADAC_level` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `political_info` */

insert  into `political_info`(`Brgy_ID`,`LBC`,`No_of_precints`,`Plebiscite_date`,`BDC_level`,`BPOC_level`,`BCPC_level`,`VAW_desk_level`,`BADAC_level`) values 
(1,'Republic Act No. 1234',5,'2020-05-15','City level','City level','City level','City level','City level'),
(2,'Republic Act No. 5678',4,'2019-10-20','Province level','Province level','Province level','Province level','Province level'),
(3,'Republic Act No. 9012',6,'2021-03-25','City level','City level','City level','City level','City level'),
(4,'Republic Act No. 3456',3,'2018-12-10','Province level','Province level','Province level','Province level','Province level'),
(5,'Republic Act No. 7890',5,'2022-06-30','City level','City level','City level','City level','City level'),
(6,'Republic Act No. 2345',4,'2023-01-05','Province level','Province level','Province level','Province level','Province level'),
(7,'Republic Act No. 6789',6,'2020-08-12','City level','City level','City level','City level','City level'),
(8,'Republic Act No. 5678',3,'2019-11-18','Province level','Province level','Province level','Province level','Province level'),
(9,'Republic Act No. 9012',4,'2021-04-22','City level','City level','City level','City level','City level'),
(10,'Republic Act No. 3456',2,'2018-09-05','Province level','Province level','Province level','Province level','Province level'),
(11,'Republic Act No. 7890',3,'2022-02-15','City level','City level','City level','City level','City level'),
(12,'Republic Act No. 2345',5,'2023-07-20','Province level','Province level','Province level','Province level','Province level'),
(13,'Republic Act No. 6789',4,'2020-10-30','City level','City level','City level','City level','City level'),
(14,'Republic Act No. 5678',2,'2019-12-08','Province level','Province level','Province level','Province level','Province level'),
(15,'Republic Act No. 9012',3,'2021-05-12','City level','City level','City level','City level','City level'),
(16,'Republic Act No. 3456',6,'2018-11-03','Province level','Province level','Province level','Province level','Province level'),
(17,'Republic Act No. 7890',4,'2022-04-18','City level','City level','City level','City level','City level'),
(18,'Republic Act No. 2345',3,'2023-09-25','Province level','Province level','Province level','Province level','Province level'),
(19,'Republic Act No. 6789',5,'2020-12-05','City level','City level','City level','City level','City level'),
(20,'Republic Act No. 5678',4,'2020-01-17','Province level','Province level','Province level','Province level','Province level'),
(21,'Republic Act No. 9012',6,'2021-06-21','City level','City level','City level','City level','City level'),
(22,'Republic Act No. 3456',3,'2019-08-14','Province level','Province level','Province level','Province level','Province level'),
(23,'Republic Act No. 7890',4,'2022-03-29','City level','City level','City level','City level','City level'),
(24,'Republic Act No. 2345',5,'2023-08-04','Province level','Province level','Province level','Province level','Province level'),
(25,'Republic Act No. 6789',2,'2020-11-10','City level','City level','City level','City level','City level'),
(26,'Republic Act No. 5678',3,'2020-02-22','Province level','Province level','Province level','Province level','Province level'),
(27,'Republic Act No. 9012',5,'2021-07-27','City level','City level','City level','City level','City level'),
(28,'Republic Act No. 3456',4,'2019-09-07','Province level','Province level','Province level','Province level','Province level'),
(29,'Republic Act No. 7890',6,'2022-05-13','City level','City level','City level','City level','City level'),
(30,'Republic Act No. 2345',2,'2023-10-18','Province level','Province level','Province level','Province level','Province level'),
(31,'Republic Act No. 6789',3,'2020-12-22','City level','City level','City level','City level','City level'),
(32,'Republic Act No. 5678',4,'2020-03-25','Province level','Province level','Province level','Province level','Province level'),
(33,'Republic Act No. 9012',5,'2021-08-29','City level','City level','City level','City level','City level'),
(34,'Republic Act No. 3456',2,'2019-10-07','Province level','Province level','Province level','Province level','Province level'),
(35,'Republic Act No. 7890',3,'2022-06-11','City level','City level','City level','City level','City level'),
(36,'Republic Act No. 2345',4,'2023-11-15','Province level','Province level','Province level','Province level','Province level'),
(37,'Republic Act No. 6789',5,'2020-01-25','City level','City level','City level','City level','City level'),
(38,'Republic Act No. 5678',6,'2020-04-30','Province level','Province level','Province level','Province level','Province level'),
(39,'Republic Act No. 9012',3,'2021-09-04','City level','City level','City level','City level','City level'),
(40,'Republic Act No. 3456',4,'2019-11-14','Province level','Province level','Province level','Province level','Province level'),
(41,'Republic Act No. 7890',5,'2022-07-28','City level','City level','City level','City level','City level'),
(42,'Republic Act No. 2345',6,'2023-12-31','Province level','Province level','Province level','Province level','Province level'),
(43,'Republic Act No. 6789',4,'2020-02-05','City level','City level','City level','City level','City level'),
(44,'Republic Act No. 5678',5,'2020-05-10','Province level','Province level','Province level','Province level','Province level'),
(45,'Republic Act No. 9012',2,'2021-10-19','City level','City level','City level','City level','City level'),
(46,'Republic Act No. 3456',3,'2019-12-03','Province level','Province level','Province level','Province level','Province level'),
(47,'Republic Act No. 7890',4,'2022-08-09','City level','City level','City level','City level','City level'),
(48,'Republic Act No. 2345',5,'2024-01-14','Province level','Province level','Province level','Province level','Province level'),
(49,'Republic Act No. 6789',3,'2020-03-22','City level','City level','City level','City level','City level'),
(50,'Republic Act No. 5678',4,'2020-06-27','Province level','Province level','Province level','Province level','Province level');

/*Table structure for table `purok` */

DROP TABLE IF EXISTS `purok`;

CREATE TABLE `purok` (
  `Purok_ID` int NOT NULL AUTO_INCREMENT,
  `Purok_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Purok_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Purok_leader` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Purok_population` int DEFAULT NULL,
  `Worker_ID` int NOT NULL,
  PRIMARY KEY (`Purok_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `purok` */

insert  into `purok`(`Purok_ID`,`Purok_name`,`Purok_address`,`Purok_leader`,`Purok_population`,`Worker_ID`) values 
(1,'Purok 1','123 Main Street','John Doe',150,1),
(2,'Purok 2','456 Elm Avenue','Jane Smith',180,2),
(3,'Purok 3','789 Oak Boulevard','Michael Johnson',200,3),
(4,'Purok 4','101 Maple Drive','Emily Williams',170,4),
(5,'Purok 5','222 Pine Lane','David Brown',160,5),
(6,'Purok 6','333 Cedar Road','Sarah Jones',190,6),
(7,'Purok 7','444 Birch Street','Christopher Garcia',175,7),
(8,'Purok 8','555 Walnut Avenue','Amanda Martinez',185,8),
(9,'Purok 9','666 Cherry Boulevard','James Rodriguez',195,9),
(10,'Purok 10','777 Spruce Lane','Jessica Hernandez',180,10),
(11,'Purok 11','888 Sycamore Road','Daniel Lopez',170,11),
(12,'Purok 12','999 Magnolia Drive','Ashley Gonzalez',200,12),
(13,'Purok 13','111 Pinecrest Avenue','Matthew Wilson',165,13),
(14,'Purok 14','222 Cedarwood Boulevard','Jennifer Anderson',175,14),
(15,'Purok 15','333 Oakdale Lane','Andrew Taylor',185,15),
(16,'Purok 16','444 Maplewood Road','Elizabeth Thomas',170,16),
(17,'Purok 17','555 Elmwood Drive','Ryan Moore',195,17),
(18,'Purok 18','666 Birchcrest Avenue','Megan Jackson',180,18),
(19,'Purok 19','777 Walnutwood Boulevard','Kevin White',190,19),
(20,'Purok 20','888 Cherrywood Lane','Laura Harris',200,20),
(21,'Purok 21','999 Sprucewood Road','Jason Lee',170,21),
(22,'Purok 22','111 Magnoliacrest Avenue','Stephanie King',195,22),
(23,'Purok 23','222 Pinewood Lane','Brandon Scott',185,23),
(24,'Purok 24','333 Cedarcrest Road','Nicole Green',175,24),
(25,'Purok 25','444 Oakwood Drive','Adam Perez',160,25),
(26,'Purok 26','555 Maplecrest Avenue','Heather Campbell',170,26),
(27,'Purok 27','666 Elmdale Lane','Robert Evans',190,27),
(28,'Purok 28','777 Birchwood Road','Christina Murphy',180,28),
(29,'Purok 29','888 Walnutcrest Avenue','Joshua Rivera',195,29),
(30,'Purok 30','999 Cherrystone Lane','Samantha Cooper',200,30),
(31,'Purok 31','111 Sprucecrest Road','Joseph Reed',175,31),
(32,'Purok 32','222 Magnoliawood Drive','Alyssa Ward',185,32),
(33,'Purok 33','333 Pinewoodcrest Avenue','David Murphy',195,33),
(34,'Purok 34','444 Cedarwoodwood Lane','Brittany Richardson',180,34),
(35,'Purok 35','555 Oakcrest Road','Christopher Cox',170,35),
(36,'Purok 36','666 Maplestone Drive','Alexis Baker',190,36),
(37,'Purok 37','777 Elmcrest Avenue','Johnathan Brooks',175,37),
(38,'Purok 38','888 Birchwoodwood Lane','Madison Ward',185,38),
(39,'Purok 39','999 Walnutstone Road','William Kelly',200,39),
(40,'Purok 40','111 Cherrycrest Avenue','Emily Cooper',165,40),
(41,'Purok 41','222 Sprucewoodwood Lane','Anthony Nelson',175,41),
(42,'Purok 42','333 Magnoliacrest Road','Kayla Russell',195,42),
(43,'Purok 43','444 Pineewoodwood Drive','Jonathan Price',185,43),
(44,'Purok 44','555 Cedarstone Avenue','Brianna Hughes',170,44),
(45,'Purok 45','666 Oakwoodwood Lane','Tyler Coleman',190,45),
(46,'Purok 46','777 Maplecrestcrest Road','Victoria Ortiz',180,46),
(47,'Purok 47','888 Elmstone Avenue','Daniel Barnes',195,47),
(48,'Purok 48','999 Birchcrestcrest Lane','Alexandra Long',200,48),
(49,'Purok 49','111 Walnutwoodwood Road','Christopher Patterson',170,49),
(50,'Purok 50','222 Cherrycrestcrest Avenue','Olivia Wood',180,50);

/*Table structure for table `residency_history` */

DROP TABLE IF EXISTS `residency_history`;

CREATE TABLE `residency_history` (
  `Citizen_ID` int NOT NULL,
  `Residency_start` date DEFAULT NULL,
  `Residency_end` date DEFAULT NULL,
  `Residency_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Past_residency` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `residency_history` */

insert  into `residency_history`(`Citizen_ID`,`Residency_start`,`Residency_end`,`Residency_status`,`Past_residency`) values 
(1,'1980-05-10',NULL,'Active',0),
(2,'1975-12-20',NULL,'Active',0),
(3,'1992-08-25',NULL,'Active',0),
(4,'1988-03-12',NULL,'Active',0),
(5,'1983-11-05',NULL,'Active',0),
(6,'1970-07-18',NULL,'Active',0),
(7,'1995-09-30',NULL,'Active',0),
(8,'1998-01-15',NULL,'Active',0),
(9,'1982-04-03',NULL,'Active',0),
(10,'1994-06-20',NULL,'Active',0),
(11,'1985-08-05',NULL,'Active',0),
(12,'1978-12-10',NULL,'Active',0),
(13,'1996-02-28',NULL,'Active',0),
(14,'1973-04-15',NULL,'Active',0),
(15,'1989-07-08',NULL,'Active',0),
(16,'1991-10-25',NULL,'Active',0),
(17,'1976-12-30',NULL,'Active',0),
(18,'1984-03-18',NULL,'Active',0),
(19,'1979-09-05',NULL,'Active',0),
(20,'1993-01-20',NULL,'Active',0),
(21,'1980-05-10',NULL,'Active',0),
(22,'1975-12-20',NULL,'Active',0),
(23,'1992-08-25',NULL,'Active',0),
(24,'1988-03-12',NULL,'Active',0),
(25,'1983-11-05',NULL,'Active',0),
(26,'1970-07-18',NULL,'Active',0),
(27,'1995-09-30',NULL,'Active',0),
(28,'1998-01-15',NULL,'Active',0),
(29,'1982-04-03',NULL,'Active',0),
(30,'1994-06-20',NULL,'Active',0),
(31,'1985-08-05',NULL,'Active',0),
(32,'1978-12-10',NULL,'Active',0),
(33,'1996-02-28',NULL,'Active',0),
(34,'1973-04-15',NULL,'Active',0),
(35,'1989-07-08',NULL,'Active',0),
(36,'1991-10-25',NULL,'Active',0),
(37,'1976-12-30',NULL,'Active',0),
(38,'1984-03-18',NULL,'Active',0),
(39,'1979-09-05',NULL,'Active',0),
(40,'1993-01-20',NULL,'Active',0),
(41,'1980-05-10',NULL,'Active',0),
(42,'1975-12-20',NULL,'Active',0),
(43,'1992-08-25',NULL,'Active',0),
(44,'1988-03-12',NULL,'Active',0),
(45,'1983-11-05',NULL,'Active',0),
(46,'1970-07-18',NULL,'Active',0),
(47,'1995-09-30',NULL,'Active',0),
(48,'1998-01-15',NULL,'Active',0),
(49,'1982-04-03',NULL,'Active',0),
(50,'1994-06-20',NULL,'Active',0);

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('9yh9KivJBp69QZLIKTzSZ7cIwgLvfiVtcOQSKYHS',25,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','YTo0OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNToiaHR0cDovL2xvY2FsaG9zdC9CUk1TL3N0YWZmL3Byb2ZpbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiVmxQUTNLTk1kbGhvZTZTT0VqNDVkRWxTQ2hvVlgwOTQyWkYyRlMxdSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjU7fQ==',1715873946);

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `Transaction_ID` int NOT NULL AUTO_INCREMENT,
  `Staff_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Transaction_citizen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Trans_date` date DEFAULT NULL,
  `Trans_time` time(6) DEFAULT NULL,
  `Trans_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Transaction_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `transaction` */

insert  into `transaction`(`Transaction_ID`,`Staff_Name`,`Transaction_citizen`,`Trans_date`,`Trans_time`,`Trans_status`) values 
(1,'Emily Grace Johnson','John Doe Smith','2024-04-25','09:30:00.000000','Processed'),
(2,'Matthew Thomas Garcia','Jane Mary Doe','2024-04-26','10:45:00.000000','Pending'),
(3,'Ethan Alexander Taylor','Michael James Johnson','2024-04-27','11:20:00.000000','Completed'),
(4,'Daniel Jacob Lee','Emily Grace Williams','2024-04-27','13:15:00.000000','Pending'),
(5,'Sophia Grace Hall','Matthew David Brown','2024-04-28','14:30:00.000000','Processed');

/*Table structure for table `transaction_document` */

DROP TABLE IF EXISTS `transaction_document`;

CREATE TABLE `transaction_document` (
  `Transaction_ID` int NOT NULL,
  `Transaction_purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Template_tags` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `Template_Settings` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `transaction_document` */

insert  into `transaction_document`(`Transaction_ID`,`Transaction_purpose`,`Template_tags`,`Template_Settings`) values 
(1,'Sale of products','Sale, Products','Standard'),
(2,'Service provided','Service, Invoice','Customized'),
(3,'Rental agreement','Rental, Agreement','Standard'),
(4,'Purchase order','Purchase, Order','Customized'),
(5,'Payment receipt','Payment, Receipt','Standard'),
(6,'Contract agreement','Contract, Agreement','Standard'),
(7,'Financial report','Financial, Report','Standard'),
(8,'Work order','Work, Order','Customized'),
(9,'Bill of sale','Bill, Sale','Standard'),
(10,'Invoice','Invoice','Standard'),
(11,'Credit note','Credit, Note','Standard'),
(12,'Shipping document','Shipping, Document','Customized'),
(13,'Expense report','Expense, Report','Standard'),
(14,'Timesheet','Timesheet','Standard'),
(15,'Purchase requisition','Purchase, Requisition','Standard'),
(16,'Delivery receipt','Delivery, Receipt','Standard'),
(17,'Payment voucher','Payment, Voucher','Standard'),
(18,'Service contract','Service, Contract','Standard'),
(19,'Loan agreement','Loan, Agreement','Standard'),
(20,'Legal document','Legal, Document','Standard'),
(21,'Proposal','Proposal','Standard'),
(22,'Memorandum','Memorandum','Standard'),
(23,'Authorization letter','Authorization, Letter','Standard'),
(24,'Meeting agenda','Meeting, Agenda','Standard'),
(25,'Job application','Job, Application','Standard'),
(26,'Training manual','Training, Manual','Standard'),
(27,'Performance review','Performance, Review','Standard'),
(28,'Marketing plan','Marketing, Plan','Standard'),
(29,'Budget proposal','Budget, Proposal','Standard'),
(30,'Presentation slides','Presentation, Slides','Standard'),
(31,'Project plan','Project, Plan','Standard'),
(32,'Event program','Event, Program','Standard'),
(33,'Research paper','Research, Paper','Standard'),
(34,'Policy document','Policy, Document','Standard'),
(35,'Training plan','Training, Plan','Standard'),
(36,'Product manual','Product, Manual','Standard'),
(37,'User guide','User, Guide','Standard'),
(38,'Terms of service','Terms, Service','Standard'),
(39,'Privacy policy','Privacy, Policy','Standard'),
(40,'Employee handbook','Employee, Handbook','Standard'),
(41,'Standard operating procedure','Standard, Procedure','Standard'),
(42,'Quality assurance document','Quality, Assurance','Standard'),
(43,'Change request form','Change, Request','Standard'),
(44,'Incident report','Incident, Report','Standard'),
(45,'Emergency evacuation plan','Emergency, Evacuation','Standard'),
(46,'Safety manual','Safety, Manual','Standard'),
(47,'Environmental impact assessment','Environmental, Impact','Standard'),
(48,'Business continuity plan','Business, Continuity','Standard'),
(49,'Risk management plan','Risk, Management','Standard'),
(50,'Compliance audit','Compliance, Audit','Standard');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/* Trigger structure for table `business` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `UpdateBusinessStatus` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `UpdateBusinessStatus` AFTER INSERT ON `business` FOR EACH ROW BEGIN
    DECLARE admin_id INT;
    
    SELECT Admin_ID INTO admin_id
    FROM Barangay_Admin
    WHERE Term_Duration = '2022-2025'; -- Adjust the condition as per your requirement
    
    IF NEW.Business_Status = 'Active' THEN
        INSERT INTO Log (Admin_Id, Action, Description)
        VALUES (admin_id, 'Business Creation', CONCAT('New business "', NEW.Business_name, '" added with status "Active"'));
    END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `citizen` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `UpdateCitizenStatus` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `UpdateCitizenStatus` AFTER INSERT ON `citizen` FOR EACH ROW BEGIN
    IF CheckSeniorCitizenStatus(NEW.Citizen_birthdate) THEN
        UPDATE Citizen
        SET Senior_member = TRUE
        WHERE Citizen_ID = NEW.Citizen_ID;
    END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `fees` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `UpdateFeeTransactions` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `UpdateFeeTransactions` AFTER INSERT ON `fees` FOR EACH ROW BEGIN
    DECLARE admin_id INT;
    
    SELECT Admin_ID INTO admin_id
    FROM Barangay_Admin
    WHERE Term_Duration = '2022-2025';
    
    IF NEW.AmountPaid > 0 THEN
        INSERT INTO Barangay_Archives (Admin_id, Description, Date_Added)
        VALUES (admin_id, CONCAT('New fee transaction added for citizen ', NEW.Citizen_ID), CURRENT_DATE());
    END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `household` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `UpdateHouseholdStatus` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `UpdateHouseholdStatus` AFTER INSERT ON `household` FOR EACH ROW BEGIN
    DECLARE household_count INT;
    
    SET household_count = RetrieveHouseholdMembersCount(NEW.Household_No);
    
    IF household_count > 0 THEN
        UPDATE Household
        SET Household_Status = 'Active'
        WHERE Household_No = NEW.Household_No;
    ELSE
        UPDATE Household
        SET Household_Status = 'Inactive'
        WHERE Household_No = NEW.Household_No;
    END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `residency_history` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `UpdateResidencyStatus` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `UpdateResidencyStatus` AFTER INSERT ON `residency_history` FOR EACH ROW BEGIN
    IF NEW.Residency_end IS NULL THEN
        UPDATE Residency_history
        SET Residency_status = 'Active'
        WHERE Citizen_ID = NEW.Citizen_ID AND Residency_end IS NULL;
    ELSE
        UPDATE Residency_history
        SET Residency_status = 'Inactive'
        WHERE Citizen_ID = NEW.Citizen_ID AND Residency_end = NEW.Residency_end;
    END IF;
END */$$


DELIMITER ;

/* Trigger structure for table `transaction` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `UpdateTransactionStatus` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `UpdateTransactionStatus` AFTER INSERT ON `transaction` FOR EACH ROW BEGIN 
    IF NEW.Trans_status = 'Done' THEN
        UPDATE Transaction SET Status = 'Completed' WHERE Transaction_ID = NEW.Transaction_ID;
    END IF;
END */$$


DELIMITER ;

/* Function  structure for function  `CalculateResidenceDuration` */

/*!50003 DROP FUNCTION IF EXISTS `CalculateResidenceDuration` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateResidenceDuration`(p_EntryDate DATE) RETURNS int
BEGIN 
    DECLARE residence_duration INT;
    SET residence_duration = DATEDIFF(CURDATE(), p_EntryDate);
    RETURN residence_duration;
END */$$
DELIMITER ;

/* Function  structure for function  `CalculateTotalFeesPaid` */

/*!50003 DROP FUNCTION IF EXISTS `CalculateTotalFeesPaid` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateTotalFeesPaid`(citizen_id INT) RETURNS decimal(10,2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(AmountPaid) INTO total FROM Fees WHERE Citizen_ID = citizen_id;
    RETURN total;
END */$$
DELIMITER ;

/* Function  structure for function  `CalculateTotalRevenue` */

/*!50003 DROP FUNCTION IF EXISTS `CalculateTotalRevenue` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateTotalRevenue`(IRA INT, Donations INT, sk_fund INT, rpt_share INT, fees_and_charges INT, others INT) RETURNS decimal(10,2)
BEGIN
    DECLARE total_revenue DECIMAL(10,2);
    SET total_revenue = IRA + Donations + sk_fund + rpt_share + fees_and_charges + others;
    RETURN total_revenue;
END */$$
DELIMITER ;

/* Function  structure for function  `CalculateYearsOfService` */

/*!50003 DROP FUNCTION IF EXISTS `CalculateYearsOfService` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateYearsOfService`(StartDate DATE) RETURNS int
BEGIN
    DECLARE years_of_service INT;
    SET years_of_service = YEAR(CURRENT_DATE()) - YEAR(StartDate);
    IF MONTH(CURRENT_DATE()) < MONTH(StartDate) OR (MONTH(CURRENT_DATE()) = MONTH(StartDate) AND DAY(CURRENT_DATE()) < DAY(StartDate)) THEN
        SET years_of_service = years_of_service - 1;
    END IF;
    RETURN years_of_service;
END */$$
DELIMITER ;

/* Function  structure for function  `CheckSeniorCitizenStatus` */

/*!50003 DROP FUNCTION IF EXISTS `CheckSeniorCitizenStatus` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `CheckSeniorCitizenStatus`(Birthdate DATE) RETURNS tinyint(1)
BEGIN
    DECLARE is_senior BOOLEAN;
    SET is_senior = (YEAR(CURRENT_DATE()) - YEAR(Birthdate)) >= 60;
    RETURN is_senior;
END */$$
DELIMITER ;

/* Function  structure for function  `GenerateFullName` */

/*!50003 DROP FUNCTION IF EXISTS `GenerateFullName` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `GenerateFullName`(FirstName VARCHAR(50), MiddleName VARCHAR(50), LastName VARCHAR(50)) RETURNS varchar(150) CHARSET utf8mb4
BEGIN
    DECLARE full_name VARCHAR(150);
    SET full_name = CONCAT(FirstName, ' ', COALESCE(MiddleName, ''), ' ', LastName);
    RETURN full_name;
END */$$
DELIMITER ;

/* Function  structure for function  `GetBasicMemberInfo` */

/*!50003 DROP FUNCTION IF EXISTS `GetBasicMemberInfo` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `GetBasicMemberInfo`(p_MemberID INT) RETURNS varchar(255) CHARSET utf8mb4
BEGIN 
    DECLARE info VARCHAR(255);
    SELECT CONCAT(Name, ', ', Address, ', ', Contact) INTO info
    FROM Members 
    WHERE MemberID = p_MemberID;
    RETURN info;
END */$$
DELIMITER ;

/* Function  structure for function  `RetrieveHouseholdMembersCount` */

/*!50003 DROP FUNCTION IF EXISTS `RetrieveHouseholdMembersCount` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `RetrieveHouseholdMembersCount`(HouseholdNo INT) RETURNS int
BEGIN
    DECLARE member_count INT;
    SELECT COUNT(*) INTO member_count FROM Household WHERE Household_No = HouseholdNo;
    RETURN member_count;
END */$$
DELIMITER ;

/* Function  structure for function  `RetrieveTransactionCountByCitizen` */

/*!50003 DROP FUNCTION IF EXISTS `RetrieveTransactionCountByCitizen` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `RetrieveTransactionCountByCitizen`(citizen_id INT) RETURNS int
BEGIN
    DECLARE transaction_count INT;
    SELECT COUNT(*) INTO transaction_count FROM Transaction WHERE Transaction_citizen = citizen_id;
    RETURN transaction_count;
END */$$
DELIMITER ;

/* Procedure structure for procedure `AddCertificationTemplate` */

/*!50003 DROP PROCEDURE IF EXISTS  `AddCertificationTemplate` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AddCertificationTemplate`(
    IN TemplateName VARCHAR(100),
    IN TemplateDetails TEXT
)
BEGIN
    INSERT INTO CertificationTemplates (Template_name, Template_details)
    VALUES (TemplateName, TemplateDetails);
END */$$
DELIMITER ;

/* Procedure structure for procedure `AddCitizen` */

/*!50003 DROP PROCEDURE IF EXISTS  `AddCitizen` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AddCitizen`(
    IN FirstName VARCHAR(50),
    IN LastName VARCHAR(50),
    IN Address VARCHAR(255),
    IN Contact VARCHAR(20)
)
BEGIN
    INSERT INTO Citizen (Citizen_fname, Citizen_lname, Address, Contact_NO)
    VALUES (FirstName, LastName, Address, Contact);
END */$$
DELIMITER ;

/* Procedure structure for procedure `AddFeeType` */

/*!50003 DROP PROCEDURE IF EXISTS  `AddFeeType` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AddFeeType`(
    IN FeeTypeName VARCHAR(100),
    IN FeeAmount DECIMAL,
    IN CollectionType VARCHAR(50),
    IN CollectionPeriod VARCHAR(50),
    IN CollectionStart DATE
)
BEGIN
    INSERT INTO FeeType (Fee_Type, Fee_Amount, Collection_type, Collection_period, Collection_start)
    VALUES (FeeTypeName, FeeAmount, CollectionType, CollectionPeriod, CollectionStart);
END */$$
DELIMITER ;

/* Procedure structure for procedure `AddNewBarangay` */

/*!50003 DROP PROCEDURE IF EXISTS  `AddNewBarangay` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AddNewBarangay`(
    IN p_BarangayName VARCHAR(100),
    IN p_Location VARCHAR(255)
)
BEGIN
    INSERT INTO Barangay (BarangayName, Location)
    VALUES (p_BarangayName, p_Location);
END */$$
DELIMITER ;

/* Procedure structure for procedure `AddNewBarangayCaptain` */

/*!50003 DROP PROCEDURE IF EXISTS  `AddNewBarangayCaptain` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AddNewBarangayCaptain`(
    IN p_CaptainName VARCHAR(100),
    IN p_Address VARCHAR(255),
    IN p_StartDate DATE
)
BEGIN
    INSERT INTO Barangay_Captain (CaptainName, Address, StartDate)
    VALUES (p_CaptainName, p_Address, p_StartDate);
END */$$
DELIMITER ;

/* Procedure structure for procedure `AddNewPurok` */

/*!50003 DROP PROCEDURE IF EXISTS  `AddNewPurok` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AddNewPurok`(
    IN p_PurokName VARCHAR(100),
    IN p_BarangayID INT
)
BEGIN
    INSERT INTO Purok (PurokName, BarangayID)
    VALUES (p_PurokName, p_BarangayID);
END */$$
DELIMITER ;

/* Procedure structure for procedure `AddNewReport` */

/*!50003 DROP PROCEDURE IF EXISTS  `AddNewReport` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AddNewReport`(
    IN p_ReportDetails TEXT,
    IN p_ReportDate DATE
)
BEGIN
    INSERT INTO Reports (ReportDetails, ReportDate)
    VALUES (p_ReportDetails, p_ReportDate);
END */$$
DELIMITER ;

/* Procedure structure for procedure `AddNewStaff` */

/*!50003 DROP PROCEDURE IF EXISTS  `AddNewStaff` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AddNewStaff`(
    IN p_StaffName VARCHAR(100),
    IN p_Position VARCHAR(100)
)
BEGIN
    INSERT INTO Staff (StaffName, Position)
    VALUES (p_StaffName, p_Position);
END */$$
DELIMITER ;

/* Procedure structure for procedure `AddPurok` */

/*!50003 DROP PROCEDURE IF EXISTS  `AddPurok` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AddPurok`(
    IN PurokName VARCHAR(100),
    IN PurokAddress VARCHAR(255),
    IN PurokLeader VARCHAR(100),
    IN PurokPopulation INT
)
BEGIN
    INSERT INTO Purok (Purok_name, Purok_address, Purok_leader, Purok_population)
    VALUES (PurokName, PurokAddress, PurokLeader, PurokPopulation);
END */$$
DELIMITER ;

/* Procedure structure for procedure `AddReport` */

/*!50003 DROP PROCEDURE IF EXISTS  `AddReport` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `AddReport`(
    IN ReportTitle VARCHAR(255),
    IN ReportDetails TEXT,
    IN ReportDate DATE
)
BEGIN
    INSERT INTO Reports (Report_title, Report_details, Report_date)
    VALUES (ReportTitle, ReportDetails, ReportDate);
END */$$
DELIMITER ;

/* Procedure structure for procedure `DeleteCitizen` */

/*!50003 DROP PROCEDURE IF EXISTS  `DeleteCitizen` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteCitizen`(
    IN p_CitizenID INT
)
BEGIN
    DELETE FROM Citizen
    WHERE CitizenID = p_CitizenID;
END */$$
DELIMITER ;

/* Procedure structure for procedure `DeleteStaffMember` */

/*!50003 DROP PROCEDURE IF EXISTS  `DeleteStaffMember` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteStaffMember`(
    IN p_StaffID INT
)
BEGIN
    DELETE FROM Staff
    WHERE StaffID = p_StaffID;
END */$$
DELIMITER ;

/* Procedure structure for procedure `GetCitizenBySurname` */

/*!50003 DROP PROCEDURE IF EXISTS  `GetCitizenBySurname` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCitizenBySurname`(IN Surname VARCHAR(100))
BEGIN
    SELECT * FROM Citizen WHERE Citizen_lname LIKE CONCAT('%', Surname, '%');
END */$$
DELIMITER ;

/* Procedure structure for procedure `GetCitizensInBarangay` */

/*!50003 DROP PROCEDURE IF EXISTS  `GetCitizensInBarangay` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCitizensInBarangay`(IN inputBarangayID INT)
BEGIN
    SELECT * FROM Citizen WHERE Barangay_id = inputBarangayID;
END */$$
DELIMITER ;

/* Procedure structure for procedure `GetPurokInfo` */

/*!50003 DROP PROCEDURE IF EXISTS  `GetPurokInfo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPurokInfo`(
    IN PurokID INT
)
BEGIN
    SELECT *
    FROM Purok
    WHERE Purok_ID = PurokID;
END */$$
DELIMITER ;

/* Procedure structure for procedure `InsertFeeTransaction` */

/*!50003 DROP PROCEDURE IF EXISTS  `InsertFeeTransaction` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertFeeTransaction`(
    IN amount DECIMAL(10, 2),
    IN description TEXT,
    IN citizen_id INT
)
BEGIN
    INSERT INTO Fees (Amount, Description, Citizen_ID) VALUES (amount, description, citizen_id);
END */$$
DELIMITER ;

/* Procedure structure for procedure `InsertHouseholdMember` */

/*!50003 DROP PROCEDURE IF EXISTS  `InsertHouseholdMember` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertHouseholdMember`(
    IN household_id INT,
    IN member_name VARCHAR(100),
    IN member_relation VARCHAR(100)
)
BEGIN
    INSERT INTO HouseholdMembers (Household_ID, Member_Name, Member_Relation) VALUES (household_id, member_name, member_relation);
END */$$
DELIMITER ;

/* Procedure structure for procedure `InsertTransaction` */

/*!50003 DROP PROCEDURE IF EXISTS  `InsertTransaction` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertTransaction`(
    IN staff_name VARCHAR(100),
    IN transaction_citizen VARCHAR(100),
    IN trans_date DATE,
    IN trans_time TIME,
    IN trans_status TEXT
)
BEGIN
    INSERT INTO Transaction (Staff_Name, Transaction_citizen, Trans_date, Trans_time, Trans_status) 
    VALUES (staff_name, transaction_citizen, trans_date, trans_time, trans_status);
END */$$
DELIMITER ;

/* Procedure structure for procedure `ListResidentsWithActiveStatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListResidentsWithActiveStatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListResidentsWithActiveStatus`()
BEGIN
    SELECT *
    FROM Residency_history
    WHERE Residency_status = 'Active';
END */$$
DELIMITER ;

/* Procedure structure for procedure `ListTransactionsInDateRange` */

/*!50003 DROP PROCEDURE IF EXISTS  `ListTransactionsInDateRange` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ListTransactionsInDateRange`(IN StartDate DATE, IN EndDate DATE)
BEGIN
    SET @sql = CONCAT('SELECT * FROM Transaction WHERE Trans_date BETWEEN ''', StartDate, ''' AND ''', EndDate, '''');
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END */$$
DELIMITER ;

/* Procedure structure for procedure `RetrieveHouseholdInfoByHouseholdID` */

/*!50003 DROP PROCEDURE IF EXISTS  `RetrieveHouseholdInfoByHouseholdID` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `RetrieveHouseholdInfoByHouseholdID`(
    IN HouseholdID INT
)
BEGIN
    SELECT *
    FROM Household
    WHERE Household_No = HouseholdID;
END */$$
DELIMITER ;

/* Procedure structure for procedure `RetrieveIndividualsBySurname` */

/*!50003 DROP PROCEDURE IF EXISTS  `RetrieveIndividualsBySurname` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `RetrieveIndividualsBySurname`(
    IN LastName VARCHAR(50)
)
BEGIN
    SELECT *
    FROM Citizen
    WHERE Citizen_lname = LastName;
END */$$
DELIMITER ;

/* Procedure structure for procedure `RetrieveIndividualsInSpecificBarangay` */

/*!50003 DROP PROCEDURE IF EXISTS  `RetrieveIndividualsInSpecificBarangay` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `RetrieveIndividualsInSpecificBarangay`(IN BarangayID INT)
BEGIN
    SET @sql = CONCAT('SELECT * FROM Citizen WHERE Barangay_id = ', BarangayID);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END */$$
DELIMITER ;

/* Procedure structure for procedure `RetrieveReportsForSpecificAddress` */

/*!50003 DROP PROCEDURE IF EXISTS  `RetrieveReportsForSpecificAddress` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `RetrieveReportsForSpecificAddress`(IN SpecificAddress VARCHAR(255))
BEGIN
    SET @sql = CONCAT('SELECT * FROM Reports WHERE Address = ''', SpecificAddress, '''');
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END */$$
DELIMITER ;

/* Procedure structure for procedure `UpdateBusinessStatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `UpdateBusinessStatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBusinessStatus`(
    IN business_id INT,
    IN new_status VARCHAR(50)
)
BEGIN
    UPDATE Business SET Business_Status = new_status WHERE Business_ID = business_id;
END */$$
DELIMITER ;

/* Procedure structure for procedure `UpdateCitizen` */

/*!50003 DROP PROCEDURE IF EXISTS  `UpdateCitizen` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateCitizen`(
    IN p_CitizenID INT,
    IN p_CitizenName VARCHAR(100),
    IN p_Address VARCHAR(255),
    IN p_Contact VARCHAR(50)
)
BEGIN
    UPDATE Citizen
    SET CitizenName = p_CitizenName, Address = p_Address, Contact = p_Contact
    WHERE CitizenID = p_CitizenID;
END */$$
DELIMITER ;

/* Procedure structure for procedure `UpdateStaff` */

/*!50003 DROP PROCEDURE IF EXISTS  `UpdateStaff` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateStaff`(
    IN StaffID INT,
    IN NewFirstName VARCHAR(50),
    IN NewLastName VARCHAR(50),
    IN NewAddress VARCHAR(255),
    IN NewContact VARCHAR(20)
)
BEGIN
    UPDATE Staff
    SET Staff_fname = NewFirstName,
        Staff_lname = NewLastName,
        Address = NewAddress,
        Contact_NO = NewContact
    WHERE Staff_ID = StaffID;
END */$$
DELIMITER ;

/*Table structure for table `basicinformationofmembers` */

DROP TABLE IF EXISTS `basicinformationofmembers`;

/*!50001 DROP VIEW IF EXISTS `basicinformationofmembers` */;
/*!50001 DROP TABLE IF EXISTS `basicinformationofmembers` */;

/*!50001 CREATE TABLE  `basicinformationofmembers`(
 `First_Name` varchar(50) ,
 `Last_Name` varchar(50) ,
 `Address` varchar(255) ,
 `Contact` varchar(20) 
)*/;

/*Table structure for table `listallcomplaint` */

DROP TABLE IF EXISTS `listallcomplaint`;

/*!50001 DROP VIEW IF EXISTS `listallcomplaint` */;
/*!50001 DROP TABLE IF EXISTS `listallcomplaint` */;

/*!50001 CREATE TABLE  `listallcomplaint`(
 `Case_No` int ,
 `Staff_ID` int ,
 `Citizen_ID` int ,
 `Staff_Name` varchar(100) ,
 `Complainant` varchar(100) ,
 `Complainee` varchar(100) ,
 `Row` int ,
 `FeeType` varchar(100) ,
 `Actions_taken` text ,
 `Complaint_document` text ,
 `Complaints_status` text 
)*/;

/*Table structure for table `listdeceasedmembers` */

DROP TABLE IF EXISTS `listdeceasedmembers`;

/*!50001 DROP VIEW IF EXISTS `listdeceasedmembers` */;
/*!50001 DROP TABLE IF EXISTS `listdeceasedmembers` */;

/*!50001 CREATE TABLE  `listdeceasedmembers`(
 `Citizen_ID` int ,
 `Citizen_fname` varchar(50) ,
 `Citizen_mname` varchar(50) ,
 `Citizen_lname` varchar(50) ,
 `Address` varchar(255) ,
 `Purok` varchar(100) ,
 `Residence_Type` varchar(50) ,
 `Sex` char(1) ,
 `BloodType` varchar(5) ,
 `Marital_status` varchar(20) ,
 `Citizen_birthdate` date ,
 `Senior_member` varchar(5) ,
 `Education` varchar(100) ,
 `Enrollment_status` varchar(20) ,
 `Occupation` varchar(100) ,
 `Employment_status` varchar(20) ,
 `Mobile_no` varchar(20) ,
 `Tel_no` varchar(20) ,
 `Religion` varchar(50) ,
 `Deceased` varchar(20) ,
 `Pwd` varchar(20) ,
 `Voter` varchar(20) ,
 `Voter_id` varchar(11) ,
 `Barangay_id` varchar(11) ,
 `PhilSys_Copy` varchar(255) 
)*/;

/*Table structure for table `retrieveactivebusinesses` */

DROP TABLE IF EXISTS `retrieveactivebusinesses`;

/*!50001 DROP VIEW IF EXISTS `retrieveactivebusinesses` */;
/*!50001 DROP TABLE IF EXISTS `retrieveactivebusinesses` */;

/*!50001 CREATE TABLE  `retrieveactivebusinesses`(
 `Business_ID` int ,
 `Business_name` varchar(255) ,
 `Owner_name` varchar(255) ,
 `Date_established` date ,
 `Business_Status` varchar(50) ,
 `Business_Address` varchar(255) ,
 `Business_purok` varchar(100) ,
 `Business_permit` varchar(255) ,
 `Contact_NO` varchar(20) ,
 `BOF` varchar(255) ,
 `Business_Type` varchar(100) ,
 `Business_permit_copy` varchar(100) 
)*/;

/*Table structure for table `retrieveallbarangaycaptainmembers` */

DROP TABLE IF EXISTS `retrieveallbarangaycaptainmembers`;

/*!50001 DROP VIEW IF EXISTS `retrieveallbarangaycaptainmembers` */;
/*!50001 DROP TABLE IF EXISTS `retrieveallbarangaycaptainmembers` */;

/*!50001 CREATE TABLE  `retrieveallbarangaycaptainmembers`(
 `Admin_ID` int ,
 `TermDuration` varchar(50) ,
 `Designation` varchar(50) 
)*/;

/*Table structure for table `retrieveallcitizenmembers` */

DROP TABLE IF EXISTS `retrieveallcitizenmembers`;

/*!50001 DROP VIEW IF EXISTS `retrieveallcitizenmembers` */;
/*!50001 DROP TABLE IF EXISTS `retrieveallcitizenmembers` */;

/*!50001 CREATE TABLE  `retrieveallcitizenmembers`(
 `Citizen_ID` int ,
 `Citizen_fname` varchar(50) ,
 `Citizen_mname` varchar(50) ,
 `Citizen_lname` varchar(50) ,
 `Address` varchar(255) ,
 `Purok` varchar(100) ,
 `Residence_Type` varchar(50) ,
 `Sex` char(1) ,
 `BloodType` varchar(5) ,
 `Marital_status` varchar(20) ,
 `Citizen_birthdate` date ,
 `Senior_member` varchar(5) ,
 `Education` varchar(100) ,
 `Enrollment_status` varchar(20) ,
 `Occupation` varchar(100) ,
 `Employment_status` varchar(20) ,
 `Mobile_no` varchar(20) ,
 `Tel_no` varchar(20) ,
 `Religion` varchar(50) ,
 `Deceased` varchar(20) ,
 `Pwd` varchar(20) ,
 `Voter` varchar(20) ,
 `Voter_id` varchar(11) ,
 `Barangay_id` varchar(11) ,
 `PhilSys_Copy` varchar(255) 
)*/;

/*Table structure for table `retrievefeetransactions` */

DROP TABLE IF EXISTS `retrievefeetransactions`;

/*!50001 DROP VIEW IF EXISTS `retrievefeetransactions` */;
/*!50001 DROP TABLE IF EXISTS `retrievefeetransactions` */;

/*!50001 CREATE TABLE  `retrievefeetransactions`(
 `Fees_ID` int ,
 `Staff_ID` int ,
 `Citizen_ID` int ,
 `Staff_Name` varchar(100) ,
 `Fee_Recipient` varchar(100) ,
 `Paid_date` date ,
 `Paid_time` time(6) ,
 `FeeType` varchar(100) ,
 `AmountPaid` decimal(10,0) ,
 `image_invoice` varchar(255) ,
 `Fee_status` varchar(255) 
)*/;

/*Table structure for table `retrievetransactionsbystaff` */

DROP TABLE IF EXISTS `retrievetransactionsbystaff`;

/*!50001 DROP VIEW IF EXISTS `retrievetransactionsbystaff` */;
/*!50001 DROP TABLE IF EXISTS `retrievetransactionsbystaff` */;

/*!50001 CREATE TABLE  `retrievetransactionsbystaff`(
 `Transaction_ID` int ,
 `Staff_Name` varchar(100) ,
 `Transaction_citizen` varchar(100) ,
 `Trans_date` date ,
 `Trans_time` time(6) ,
 `Trans_status` text 
)*/;

/*View structure for view basicinformationofmembers */

/*!50001 DROP TABLE IF EXISTS `basicinformationofmembers` */;
/*!50001 DROP VIEW IF EXISTS `basicinformationofmembers` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `basicinformationofmembers` AS select `citizen`.`Citizen_fname` AS `First_Name`,`citizen`.`Citizen_lname` AS `Last_Name`,`citizen`.`Address` AS `Address`,`citizen`.`Mobile_no` AS `Contact` from `citizen` */;

/*View structure for view listallcomplaint */

/*!50001 DROP TABLE IF EXISTS `listallcomplaint` */;
/*!50001 DROP VIEW IF EXISTS `listallcomplaint` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listallcomplaint` AS select `complaint`.`Case_No` AS `Case_No`,`complaint`.`Staff_ID` AS `Staff_ID`,`complaint`.`Citizen_ID` AS `Citizen_ID`,`complaint`.`Staff_Name` AS `Staff_Name`,`complaint`.`Complainant` AS `Complainant`,`complaint`.`Complainee` AS `Complainee`,`complaint`.`Row` AS `Row`,`complaint`.`FeeType` AS `FeeType`,`complaint`.`Actions_taken` AS `Actions_taken`,`complaint`.`Complaint_document` AS `Complaint_document`,`complaint`.`Complaints_status` AS `Complaints_status` from `complaint` */;

/*View structure for view listdeceasedmembers */

/*!50001 DROP TABLE IF EXISTS `listdeceasedmembers` */;
/*!50001 DROP VIEW IF EXISTS `listdeceasedmembers` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listdeceasedmembers` AS select `citizen`.`Citizen_ID` AS `Citizen_ID`,`citizen`.`Citizen_fname` AS `Citizen_fname`,`citizen`.`Citizen_mname` AS `Citizen_mname`,`citizen`.`Citizen_lname` AS `Citizen_lname`,`citizen`.`Address` AS `Address`,`citizen`.`Purok` AS `Purok`,`citizen`.`Residence_Type` AS `Residence_Type`,`citizen`.`Sex` AS `Sex`,`citizen`.`BloodType` AS `BloodType`,`citizen`.`Marital_status` AS `Marital_status`,`citizen`.`Citizen_birthdate` AS `Citizen_birthdate`,`citizen`.`Senior_member` AS `Senior_member`,`citizen`.`Education` AS `Education`,`citizen`.`Enrollment_status` AS `Enrollment_status`,`citizen`.`Occupation` AS `Occupation`,`citizen`.`Employment_status` AS `Employment_status`,`citizen`.`Mobile_no` AS `Mobile_no`,`citizen`.`Tel_no` AS `Tel_no`,`citizen`.`Religion` AS `Religion`,`citizen`.`Deceased` AS `Deceased`,`citizen`.`Pwd` AS `Pwd`,`citizen`.`Voter` AS `Voter`,`citizen`.`Voter_id` AS `Voter_id`,`citizen`.`Barangay_id` AS `Barangay_id`,`citizen`.`PhilSys_Copy` AS `PhilSys_Copy` from `citizen` where (`citizen`.`Deceased` = 'True') */;

/*View structure for view retrieveactivebusinesses */

/*!50001 DROP TABLE IF EXISTS `retrieveactivebusinesses` */;
/*!50001 DROP VIEW IF EXISTS `retrieveactivebusinesses` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `retrieveactivebusinesses` AS select `business`.`Business_ID` AS `Business_ID`,`business`.`Business_name` AS `Business_name`,`business`.`Owner_name` AS `Owner_name`,`business`.`Date_established` AS `Date_established`,`business`.`Business_Status` AS `Business_Status`,`business`.`Business_Address` AS `Business_Address`,`business`.`Business_purok` AS `Business_purok`,`business`.`Business_permit` AS `Business_permit`,`business`.`Contact_NO` AS `Contact_NO`,`business`.`BOF` AS `BOF`,`business`.`Business_Type` AS `Business_Type`,`business`.`Business_permit_copy` AS `Business_permit_copy` from `business` where (`business`.`Business_Status` = 'Active') */;

/*View structure for view retrieveallbarangaycaptainmembers */

/*!50001 DROP TABLE IF EXISTS `retrieveallbarangaycaptainmembers` */;
/*!50001 DROP VIEW IF EXISTS `retrieveallbarangaycaptainmembers` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `retrieveallbarangaycaptainmembers` AS select `barangay_admin`.`Admin_ID` AS `Admin_ID`,`barangay_admin`.`TermDuration` AS `TermDuration`,`barangay_admin`.`Designation` AS `Designation` from `barangay_admin` */;

/*View structure for view retrieveallcitizenmembers */

/*!50001 DROP TABLE IF EXISTS `retrieveallcitizenmembers` */;
/*!50001 DROP VIEW IF EXISTS `retrieveallcitizenmembers` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `retrieveallcitizenmembers` AS select `citizen`.`Citizen_ID` AS `Citizen_ID`,`citizen`.`Citizen_fname` AS `Citizen_fname`,`citizen`.`Citizen_mname` AS `Citizen_mname`,`citizen`.`Citizen_lname` AS `Citizen_lname`,`citizen`.`Address` AS `Address`,`citizen`.`Purok` AS `Purok`,`citizen`.`Residence_Type` AS `Residence_Type`,`citizen`.`Sex` AS `Sex`,`citizen`.`BloodType` AS `BloodType`,`citizen`.`Marital_status` AS `Marital_status`,`citizen`.`Citizen_birthdate` AS `Citizen_birthdate`,`citizen`.`Senior_member` AS `Senior_member`,`citizen`.`Education` AS `Education`,`citizen`.`Enrollment_status` AS `Enrollment_status`,`citizen`.`Occupation` AS `Occupation`,`citizen`.`Employment_status` AS `Employment_status`,`citizen`.`Mobile_no` AS `Mobile_no`,`citizen`.`Tel_no` AS `Tel_no`,`citizen`.`Religion` AS `Religion`,`citizen`.`Deceased` AS `Deceased`,`citizen`.`Pwd` AS `Pwd`,`citizen`.`Voter` AS `Voter`,`citizen`.`Voter_id` AS `Voter_id`,`citizen`.`Barangay_id` AS `Barangay_id`,`citizen`.`PhilSys_Copy` AS `PhilSys_Copy` from `citizen` */;

/*View structure for view retrievefeetransactions */

/*!50001 DROP TABLE IF EXISTS `retrievefeetransactions` */;
/*!50001 DROP VIEW IF EXISTS `retrievefeetransactions` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `retrievefeetransactions` AS select `fees`.`Fees_ID` AS `Fees_ID`,`fees`.`Staff_ID` AS `Staff_ID`,`fees`.`Citizen_ID` AS `Citizen_ID`,`fees`.`Staff_Name` AS `Staff_Name`,`fees`.`Fee_Recipient` AS `Fee_Recipient`,`fees`.`Paid_date` AS `Paid_date`,`fees`.`Paid_time` AS `Paid_time`,`fees`.`FeeType` AS `FeeType`,`fees`.`AmountPaid` AS `AmountPaid`,`fees`.`image_invoice` AS `image_invoice`,`fees`.`Fee_status` AS `Fee_status` from `fees` where (`fees`.`AmountPaid` > 0) */;

/*View structure for view retrievetransactionsbystaff */

/*!50001 DROP TABLE IF EXISTS `retrievetransactionsbystaff` */;
/*!50001 DROP VIEW IF EXISTS `retrievetransactionsbystaff` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `retrievetransactionsbystaff` AS select `transaction`.`Transaction_ID` AS `Transaction_ID`,`transaction`.`Staff_Name` AS `Staff_Name`,`transaction`.`Transaction_citizen` AS `Transaction_citizen`,`transaction`.`Trans_date` AS `Trans_date`,`transaction`.`Trans_time` AS `Trans_time`,`transaction`.`Trans_status` AS `Trans_status` from `transaction` where (`transaction`.`Staff_Name` = `transaction`.`Staff_Name`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
