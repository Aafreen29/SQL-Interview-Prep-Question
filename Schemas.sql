CREATE DATABASE test;

use test

/*
DECLARE @sql NVARCHAR(max)=''

SELECT @sql += ' Drop table ' + QUOTENAME(TABLE_SCHEMA) + '.'+ QUOTENAME(TABLE_NAME) + '; '
FROM   INFORMATION_SCHEMA.TABLES
WHERE  TABLE_TYPE = 'BASE TABLE'

Exec Sp_executesql @sql
*/
CREATE TABLE Employee (
	EMPLOYEE_ID INT NOT NULL,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25), 
    MANAGER_ID INT
);

INSERT INTO Employee
	(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT,MANAGER_ID) VALUES
		(001, 'James', 'Smith', 100000, ('20120618 10:34:09 AM'), 'HR', 002),
		(002, 'Jessica', 'Kohl', 80000, '20120618 10:34:09 AM', 'Admin', 005),
		(003, 'Alex', 'Garner', 300000, '20120618 10:34:09 AM', 'HR', 011),
		(004, 'Pratik', 'Pandey', 500000, '20120618 10:34:09 AM', 'Admin', 020),
		(005, 'Christine', 'Robinson', 500000, '20120618 10:34:09 AM', 'Admin', 007),
		(006, 'Deepak', 'Gupta', 200000, '20120618 10:34:09 AM', 'Account', 015),
		(007, 'Jennifer', 'Paul', 75000, '20120618 10:34:09 AM', 'Account', 012),
		(008, 'Deepika', 'Sharma', 90000, '20120618 10:34:09 AM', 'Admin', 017);

CREATE TABLE Bonus (
	EMPLOYEE_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	
);

INSERT INTO Bonus 
	(EMPLOYEE_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '20120618 10:34:09 AM'),
		(002, 3000, '20120618 10:34:09 AM'),
		(003, 4000, '20120618 10:34:09 AM'),
		(001, 4500, '20120618 10:34:09 AM'),
		(002, 3500, '20120618 10:34:09 AM');
        
CREATE TABLE Title (
	EMPLOYEE_REF_ID INT,
	EMPLOYEE_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
);

INSERT INTO Title 
	(EMPLOYEE_REF_ID, EMPLOYEE_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '20120618 10:34:09 AM'),
 (002, 'Executive', '20120618 10:34:09 AM'),
 (008, 'Executive', '20180611 00:00:00'),
 (005, 'Manager', '20180611 00:00:00'),
 (004, 'Asst. Manager', '20180611 00:00:00'),
 (007, 'Executive', '20180611 00:00:00'),
 (006, 'Lead', '20180611 00:00:00'),
 (003, 'Lead', '20180611 00:00:00');
 
 
 CREATE TABLE all_students (
		student_id INT NOT NULL PRIMARY KEY,
        school_id INT,
        grade_level INT,
        date_of_birth DATETIME,
        hometown CHAR(25)
 );
 CREATE TABLE attendance_events (
		date_event DATETIME,
        student_id INT,
        attendance CHAR(20),
 );
  
 INSERT INTO attendance_events
 (date_event, student_id, attendance) VALUES
 ('20180110', 110111, 'present'),
 ('20180110', 110121, 'present' ),
 ('20180112', 110115, 'absent'),
 ('20180113', 110119, 'absent'),
 ('20120618 10:34:09 AM', 110121, 'present'),
 ('20120618 10:34:09 AM', 110125, 'present'),
 ('20120618 10:34:09 AM', 110111, 'absent'),
 ('20120618 10:34:09 AM', 110115, 'present'),
 ('20120618 10:34:09 AM', 110129, 'absent');
 
 INSERT INTO all_students
 (student_id, school_id, grade_level, date_of_birth, hometown) VALUES
 (110111, 205, 1, '20120618 10:34:09 AM', 'Pleasanton'),
 (110115, 205, 1, '20120618 10:34:09 AM', 'Dublin'),
 (110119, 205, 2, '20120618 10:34:09 AM', 'San Ramon'),
 (110121, 205, 3, '20120618 10:34:09 AM', 'Dublin'),
 (110125, 205, 2, '20120618 10:34:09 AM','Dublin'),
 (110129, 205, 3, '20120618 10:34:09 AM', 'San Ramon');
 
 CREATE TABLE login_info (
 user_id INT,
 login_time DATETIME
 );
 
 INSERT INTO login_info 
 (user_id, login_time) VALUES
 (1, '20170810 14:32:25'),
 (2, '20170811 14:32:25'),
 (3, '20170811 14:32:25'),
 (2, '20170813 14:32:25'),
 (3, '20170814 14:32:25'),
 (4, '20170815 14:32:25'),
 (5, '20170812 14:32:25'),
 (2, '20170818 14:32:25'),
 (1, '20170811 14:32:25'),
 (1, '20170812 14:32:25'),
 (1, '20170813 14:32:25'),
 (1, '20170814 14:32:25'),
 (1, '20170815 14:32:25'),
 (1, '20170816 14:32:25'),
 (1, '20170817 14:32:25'),
 (3, '20170820 14:32:25'),
 (5, '20170816 14:32:25'),
 (2, '20170821 14:32:25'),
 (3, '20170822 14:32:25');
 
 CREATE TABLE USER_ACTION (
 user_id_who_sent INT,
 user_id_to_whom INT, 
 date_action DATETIME,
 action CHAR(25)
 );
 
 INSERT INTO USER_ACTION 
 (user_id_who_sent, user_id_to_whom, date_action, action) VALUES
 (20251, 28272, '20180524','accepted'),
 (19209, 64638,'20180613' , 'sent'),
 (43744, 16373, '20180415' ,'accepted'),
 (20251, 18171, '20180519' , 'sent'),
 (54875, 36363, '20180111' ,'rejected'),
 (38292, 16373, '20180524','accepted'),
 (19209, 26743, '20180612' ,'accepted'),
 (27623, 28272, '20180524','accepted'),
 (20251, 37378, '20180317','rejected'),
 (43744, 18171, '20180524' ,'accepted');
 
 CREATE TABLE all_users(
 user_id INT NOT NULL PRIMARY KEY,
 user_name CHAR(25),
 registration_date DATETIME,
 active_last_month BIT NOT NULL
 );
 
 INSERT INTO all_users
 (user_id, user_name, registration_date, active_last_month) VALUES
 (1, 'sam', '20180121', 1),
 (2, 'phelp', '20180115', 1),
 (3, 'peyton', '20180312', 1),
 (4, 'ryan', '20180217', 0),
 (5, 'james', '20180121', 0),
 (6, 'christine', '20180227', 1),
 (7, 'bolt', '20180228', 0),
 (8, 'jessica', '20180111', 1),
 (9, 'paul', '20180423', 1),
 (10, 'brian', '20180312', 0);
 
 
 CREATE TABLE sport_accounts(
 sport_player_id INT,
 sport_player CHAR(25), 
 sport_category CHAR(25), 
 );
 
 INSERT INTO sport_accounts 
 (sport_player_id, sport_player, sport_category) VALUES
 (2, 'phelp', 'swimming'),
 (7, 'bolt', 'running'),
 (8,'jessica', 'swimming'),
 (9, 'paul', 'basketball'),
 (10, 'brian', 'cricket'),
 (5, 'james', 'cricket');
 
 
 
 CREATE TABLE follow_relation(
 follower_id INT, 
 target_id INT, 
 following_date DATETIME, 
 );
 
 INSERT INTO follow_relation
 (follower_id, target_id, following_date) VALUES
 (1,8, '20180102'),
 (5,2,'20180102'),
 (9,10, '20180102'),
 (10,8, '20180102'),
 (8,3, '20180102'),	
 (4, 6, '20180102'),
 (2,8, '20180102'),
 (6,9, '20180102'),
 (1,7, '20180102'),
 (10,2, '20180102'), 
 (1,2, '20180102');
 
 CREATE TABLE ad_accounts(
 account_id INT, 
 date DATETIME, 
 account_status CHAR(15)
);
 
INSERT INTO ad_accounts
(account_id, date, account_status) VALUES
(101, '20190121', 'active'),
(102, '20190117', 'active'),
(117, '20190206', 'active'),
(112, '20190116', 'active'),
(110, '20190322', 'fraud'),
(115, '20190428', 'fraud'),
(103, '20190207', 'close'),
(112, '20190415', 'fraud'),
(101, '20190428', 'fraud'),
(117, '20190422', 'fraud'),
(102, '20190319', 'fraud'),
(106, '20190428', 'fraud'),
(105, '20190302', 'active'),
(110, '20190428', 'fraud');

CREATE TABLE user_details(
date DATETIME,
session_id INT, 
user_id INT
);

CREATE TABLE event_session_details(
date DATETIME, 
session_id INT, 
timespend_sec INT,
user_id INT
);

INSERT INTO user_details 
(date, session_id, user_id) values
('20190110', 201, 6),
('20190110', 202, 7),
('20190110', 203, 6),
('20190111', 204, 8),
('20190110', 205, 6),
('20190111', 206, 8),
('20190112', 207, 9);

INSERT INTO event_session_details
(date, session_id, timespend_sec, user_id) VALUES
('20190110', 201, 1200, 6),
('20190110', 202, 100, 7),
('20190110', 203, 1500, 6),
('20190111', 204, 2000, 8),
('20190110', 205, 1010, 6),
('20190111', 206, 1780, 8),
('20190112', 207, 2500, 9),
('20190112', 208, 500, 9),
('20190121', 209, 2798, 15),
('20190125', 210, 1278, 18);

CREATE TABLE messages_detail(
user_id INT NOT NULL PRIMARY KEY, 
messages_sent INT,
date DATE
);

INSERT INTO messages_detail
(user_id, messages_sent, date) VALUES
(1, 120, '20140427'),
(2,50 , '20140427'),
(3, 222, '20140427'),
(4, 70, '20140427'),
(5, 250, '20140427'),
(6, 246,'20140427'),
(7, 179, '20140427'),
(8, 116, '20140427'),
(9, 84 , '20140427'),
(10, 215,'20140427'), 
(11, 105, '20140427'),
(12, 174, '20140427'),
(13, 158, '20140427'),
(14, 30, '20140427'), 
(15, 48, '20140427');

CREATE TABLE user_name (
full_names CHAR(30)
);

INSERT INTO user_name
(full_names) VALUES
('Jessica Taylor'),
('Erin Russell'),
('Amanda Smith'),
('Sam Brown'),
('Robert Kehrer');


CREATE TABLE DIALOGLOG(
user_id INT,
app_id CHAR(5),
type CHAR(15),
date date
);

INSERT INTO DIALOGLOG
(user_id, app_id, type, date) VALUES
(1, 'a', 'impression', '20190204'),
(2, 'a', 'impression', '20190204'),
(2, 'a', 'click', '20190204'),
(3, 'b', 'impression', '20190204'),
(4, 'c', 'click', '20190204'),
(4, 'd', 'impression', '20190204'),
(5, 'd', 'click', '20190204'),
(6, 'd', 'impression', '20190204'),
(6, 'e', 'impression', '20190204'),
(3, 'a', 'impression', '20190204'), 
(3, 'b', 'click', '20190204');

CREATE TABLE friend_request(
requestor_id INT, 
sent_to_id INT,
time DATE
);

INSERT INTO friend_request
(requestor_id, sent_to_id, time) VALUES
(1, 2, '20180603'),
(1, 3, '20180608'),
(1, 3, '20180608'),
(2, 4, '20180609'),
(3, 4, '20180611'),
(3, 5, '20180611'),
(3, 5, '20180612');

CREATE TABLE request_accepted(
acceptor_id INT,
requestor_id INT, 
time DATE
);

INSERT INTO request_accepted VALUES
(2, 1, '20180801'),
(3, 1, '20180801'),
(3, 1, '20180801'),
(4, 2, '20180802'),
(5, 3, '20180803'),
(5, 3, '20180803'),
(5, 3, '20180804');

CREATE TABLE new_request_accepted(
acceptor_id INT, 
requestor_id INT, 
accept_date DATE
);

INSERT INTO new_request_accepted
(acceptor_id, requestor_id, accept_date) Values
(2, 1, '20180501'),
(3, 1, '20180502'),
(4, 2, '20180502'),
(5, 3, '20180503'),
(3, 4, '20180504');

CREATE TABLE count_request(
country_code CHAR(10),
count_of_requests_sent INT,
percent_of_request_sent_failed CHAR(10), 
sent_date DATE
);

INSERT INTO count_request
(country_code, count_of_requests_sent, percent_of_request_sent_failed, sent_date) VALUES
('AU', 23676, '5.2%', '20180907'),
('NZ', 12714, '2.1%', '20180908'), 
('IN', 24545, '4.6%', '20180909'),
('IN', 34353, '5.3%', '20180910'),
('AU', 24255, '1.7%', '20180911'),
('NZ', 23131, '2.9%', '20180912'),
('US', 49894, '5.3%','20180913'),
('IN', 19374, '2.4%', '20180914'),
('AU', 18485, '2.7%','20180915'),
('IN', 38364, '3.5%', '20180916');


CREATE TABLE confirmed_no(
phone_number CHAR(15)
);

INSERT INTO confirmed_no 
(phone_number) VALUES
('2324733433'),
('5450382294'),
('6472941837'),
('4924859727'),
('5453837837'),
('1844839575'),
('4934204902'),
('2825958373'),
('59495942948');

INSERT INTO confirmed_no
(phone_number) VALUES
('4924859727'),
('5453837837'),
('1844839575'),
('4934204902');

CREATE TABLE user_interaction(
user_1 CHAR(5),
user_2 CHAR(5), 
date DATE
);

INSERT INTO user_interaction
(user_1, user_2, date) VALUES
('A', 'B', '20190323'),
('A', 'C', '20190323'),
('B', 'D', '20190323'),
('B', 'F', '20190323'),
('C', 'D', '20190323'),
('A', 'D', '20190323'),
('B','C', '20190323'),
('A','E', '20190323');

create table salesperson(
id INT,
name CHAR(25),
age INT,
salary INT
);

insert into salesperson
(id, name, age, salary) values
(1, 'Abe', 61, 140000),
(2, 'Bob', 34, 44000),
(5, 'Chris', 34, 40000),
(7, 'Dan', 41, 52000),
(8, 'Ken', 57, 115000),
(11, 'Joe', 38, 38000);

create table customer(
id INT, 
name char(25),
city char(25),
industry_type char(1)
);

insert into customer
(id, name, city, industry_type) values
(4, 'Samsonic', 'pleasant', 'J'),
(6, 'Panasung', 'oaktown', 'J'),
(7, 'Samsony', 'jackson', 'B'),
(9, 'Orange', 'jackson', 'B');

create table orders(
number int,
order_date date,
cust_id int,
salesperson_id int,
amount int
);

insert into orders
(number, order_date, cust_id, salesperson_id, amount) values
(10, '19960208', 4, 2, 540),
(20, '19990130', 4, 8, 1800),
(30, '19950714', 9, 1, 460),
(40, '19980129', 7, 2, 2400),
(50, '19980203', 6, 7, 600),
(60, '19980302', 6, 7, 720),
(70, '19980506', 6, 7, 150);

create table event_log(
user_id INT,
event_date_time INT --#Using plain INT column type to store unix timestamp is the most trivial option.
);

Insert into event_log
(user_id, event_date_time) values
(7494212, 1535308430),
(7494212, 1535308433),
(1475185, 1535308444),
(6946725, 1535308475),
(6946725, 1535308476),
(6946725, 1535308477);
