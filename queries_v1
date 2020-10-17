--Write a SQL query to find the nth highest salary from employee table. 
-- Example: finding 3rd highest salary from employee table
select * from  employee e2 ;
select * from employee e order by salary desc offset 2 limit 1;

select * from
(select *, dense_rank() over (order by salary desc) as rnk from employee e) as rnk_tbl
where rnk=3;

SELECT * /*This is the outer query part */
FROM Employee Emp1
WHERE 2 = ( /* Subquery starts here */
SELECT COUNT(DISTINCT(Emp2.Salary))
FROM Employee Emp2
WHERE Emp2.Salary > Emp1.Salary);

-- 2> Write a SQL query to find top n records?
-- Example: finding top 5 records from employee table

select * from employee e limit 5;

-- 3> Write a SQL query to find the count of employees working in department 'Admin'

select count(*) as no_of_emp_in_admin from employee e where department = 'Admin';

-- 4> Write a SQL query to fetch department wise count employees sorted by department count in desc order.

select department, count(*) as employeecount from employee e group by department order by employeecount desc ;

-- 5>  Write a query to fetch only the first name(string before space) from the FullName column of user_name table.

select * from user_name un limit 2;
select split_part(un.full_names, ' ', 1), full_names from user_name un ; 

-- 6> Write a SQL query to find all the employees from employee table who are also managers
select * from employee;
select e1.* from employee e1
join employee e2 on e1.employee_id = e2.manager_id ;

-- 7> Write a SQL query to find all employees who have bonus record in bonus table
select * from employee e 
join bonus b on e.employee_id = b.employee_ref_id ;

-- 8> Write a SQL query to find only odd rows from employee table
select * from
(select *,row_number () over() as rn from employee e) as tmp
where rn % 2= 1;

-- 9> Write a SQL query to fetch first_name from employee table in upper case
select upper(first_name) from employee e ;

-- 10> Write a SQL query to get combine name (first name and last name) of employees from employee table
select first_name || ' ' || last_name as employee_name from employee e ;

-- 11> Write a SQL query to print details of employee of employee 'Jennifer' and 'James'.
select * from employee e where first_name in ('Jennifer', 'James');

-- 12> Write a SQL query to fetch records of employee whose salary lies between 
select * from employee e where salary between 50000 and 90000;

-- 13> Write a SQL query to get records of employe who have joined in Jan 2000
select * from employee e2 ;
select * from employee e where extract (year from e.joining_date) = '2000' and extract (month from e.joining_date )='1';

-- 14> Write a SQL query to get the list of employees with the same salary
select e1.* 
from employee e1, employee e2 
where e1.salary = e2.salary and e1.employee_id <> e2.employee_id ;

-- 15> Write a SQL query to show all departments along with the number of people working there. 
select department, count(*) as emp_count from employee e group by department;

-- 16> Write a SQL query to show the last record from a table.
select * from employee where employee_id = (select max(employee_id) from employee);

-- 17> Write a SQL query to show the first record from a table.
select * from employee where employee_id = (select min(employee_id) from employee);

-- 18> Write a SQL query to get last five records from a employee table.
(select * from employee order by employee_id desc limit 5) order by employee_id;

-- 19> Write a SQL query to find employees having the highest salary in each department. 
select * from
(select *, dense_rank () over(partition by department order by salary desc) as rnk
from employee e2) as tmp
where rnk=1;

-- 20> Write a SQL query to fetch three max salaries from employee table.
select * from
(select *, dense_rank() over (order by salary desc) as rnk from employee e) as rnk_tbl
where rnk<=3;

-- 21> Write a SQL query to fetch departments along with the total salaries paid for each of them.
select department, sum(salary) from employee e2 group by department ;

-- 22> Write a SQL query to find employee with highest salary in an organization from employee table.
select * from employee e2 where salary = (select max(salary) from employee e3 );

-- 23>     Write an SQL query that makes recommendations using the  pages that your friends liked. 
-- Assume you have two tables: a two-column table of users and their friends, and a two-column table of 
-- users and the pages they liked. It should not recommend pages you already like.

-- 24> write a SQL query to find employee (first name, last name, department and bonus) with highest bonus.
select * from bonus b3 ;
select * from employee e
join bonus b on e.employee_id = b.employee_ref_id where b.bonus_amount = (select max(bonus_amount) from bonus b2) ;

-- 25> write a SQL query to find employees with same salary
select * 
from employee e1, employee e2 
where e1.employee_id <> e2.employee_id and e1.salary =e2.salary ;

-- 26> Write SQL to find out what percent of students attend school on their birthday from attendance_events and all_students tables?
select * from attendance_events ae ;
select * from all_students as2 ;

select count(*)*100.0/(select count(distinct student_id) from attendance_events ae2 ) from all_students as2 
join attendance_events ae on as2.student_id = ae .student_id 
where extract(day from date_event) = extract(day from date_of_birth) and extract(month from date_event) = extract(month from date_of_birth)
and attendance = 'present';

-- 27> Given timestamps of logins, figure out how many people on Facebook were active all seven days
--  of a week on a mobile phone from login info table?
select * from login_info li3 ;
select li.user_id, li.login_time, li2.login_time, li.login_time + interval '7' day as wk from login_info li 
join login_info li2 on li.user_id = li2.user_id and 


li.login_time in all(li2.login_time + interval '1' day, li2.login_time + interval '2' day, li2.login_time + interval '3' day, li2.login_time + interval '4' day, li2.login_time + interval '5' day, li2.login_time + interval '6' day)


select * from login_info li3 ;

SELECT li.user_id,
       COUNT( DISTINCT DATE( li.login_time )) AS days
FROM   login_info li
join login_info li2 on li.user_id = li2.user_id 
WHERE  li.login_time > li2.login_time - INTERVAL '2' DAY
GROUP BY li.user_id
HAVING COUNT( DISTINCT DATE( li.login_time )) >= 2;

SELECT user_id,
       COUNT( DISTINCT DATE( login_date )) AS days
FROM   Log_Table
WHERE  login_date > DATE_SUB( CURRENT_TIMESTAMP, INTERVAL 3 DAY )
GROUP BY user_id
HAVING days >= 3;

-- 28> Write a SQL query to find out the overall friend acceptance rate for a given date from user_action table.
 INSERT INTO USER_ACTION 
 (user_id_who_sent, user_id_to_whom, date_action, action) VALUES
 (20251, 28272, '2018-05-24','sent'),
 (19209, 64638,'2018-06-13' , 'accepted') 
select * from user_action ua ;

select date_action, "action", count(*)*100.0/(select count(*) from user_action ua2 where ua2.date_action = ua.date_action)
from user_action ua 
group by date_action, "action" 
order by date_action 

-- 29> How many total users follow sport accounts from tables all_users, sport_accounts, follow_relation?
select * from all_users au ;
select * from sport_accounts sa ;
select * from follow_relation fr ;


select count(distinct c.follower_id) as count_all_sports_followers 
from  sport_accounts a
join all_users b
on a.sport_player_id = b.user_id
join follow_relation c
on b.user_id = c.target_id;

-- 30> How many active users follow each type of sport?
select sa.sport_category , count(distinct au.user_id)
from all_users au 
join follow_relation fr on au.user_id = fr.follower_id 
join sport_accounts sa on fr.target_id = sa.sport_player_id 
where au.active_last_month = true 
group by sa.sport_category ;

-- 31> What percent of active accounts are fraud from ad_accounts table?
select * from ad_accounts aa3 ;
select count(*)*100.0/(select count(*) from ad_accounts aa2 where aa2.account_status = 'active') 
from ad_accounts aa where account_status = 'fraud' and account_status = 'active';

select count(distinct a.account_id)/(select count(account_id) from ad_accounts where account_status= "active") as 'percent' 
from ad_accounts a
join ad_accounts b
on a.account_id = b.account_id
where a.account_status = 'fraud' and b.account_status='active';

-- 32> How many accounts became fraud today for the first time from ad_accounts table?

select count(account_id) 'First time fraud accounts' from (
select distinct a.account_id, count(a.account_status) 
from ad_accounts a
join ad_accounts b
on a.account_id = b.account_id
where b.date = curdate() and a.account_status = 'fraud'
group by account_id
having count(a.account_status) = 1) ad_accnt;

-- 33> Write a SQL query to determine avg time spent per user per day from user_details and event_session_details

select * from user_details ud ;
select * from event_session_details esd ;

select "date", user_id, sum(timespend_sec)/60.0 as avg_mins
from event_session_details esd 
group by "date", user_id 

-- 34> write a SQL query to find top 10 users that sent the most messages from messages_detail table.
select * from messages_detail md ;
select user_id, sum(messages_sent) as total_msgs
from messages_detail md 
group by user_id 
order by total_msgs desc
limit 10;

-- 35> Write a SQL query to find disctinct first name from full user name from usere_name table
select * from user_name un 

select distinct split_part(un.full_names, ' ', 1) from user_name un ;

-- 36> You have a table with userID, appID, type and timestamp. type is either 'click' or 'impression'. 
-- Calculate the click through rate from dialoglog table. Now do it in for each app.
-- click through rate is defined as (number of clicks)/(number of impressions)
select * from dialoglog;

select app_id, COALESCE(sum(case when type = 'click' then 1 else 0 end)*1.0/nullif(sum(case when type = 'impression' then 1 else 0 end),0),0) as ctr
from dialoglog d2 
group by app_id;

-- 37> Given two tables Friend_request (requestor_id, sent_to_id, time),  
-- Request_accepted (acceptor_id, requestor_id, time). Find the overall acceptance rate of requests.
-- Overall acceptate rate of requests = total number of acceptance / total number of requests.
select * from friend_request fr ;
select * from request_accepted ra ;

select (select count(acceptor_id) from  request_accepted ra),(select count(sent_to_id) from friend_request fr)

-- 38> from a table of new_request_accepted, find a user with the most friends.
select * from new_request_accepted nra ;

select acceptor_id, count(requestor_id)
from new_request_accepted nra group by acceptor_id ;

-- 39> from the table count_request, find total count of requests sent and total count of requests sent failed 
-- per country

select * from count_request cr ;

select *, ROUND((COALESCE(replace(percent_of_request_sent_failed,'%',''),0::text)::numeric)*count_of_requests_sent /100,0)
from count_request cr 

select country_code, sum(count_of_requests_sent) as reqs_sent, sum(ROUND((COALESCE(replace(percent_of_request_sent_failed,'%',''),0::text)::numeric)*count_of_requests_sent /100,0)) as reqs_failed
from count_request cr 
group by country_code 

-- 40> create a histogram of duration on x axis, no of users on y axis which is populated by volume in each bucket
-- from event_session_details
select * from event_session_details;

select floor(timespend_sec/500)*500 as bucket,
count(distinct user_id) as count_of_users
from event_session_details
group by 1;

-- 41> Write SQL query to calculate percentage of confirmed messages from two tables : 
-- confirmation_no (phone numbers that facebook sends the confirmation messages to) and 
-- confirmed_no (phone numbers that confirmed the verification)

-- 42> Write SQL query to find number of users who had 4 or more than 4 interactions on 2013-03-23 date 
-- from user_interaction table (user_1, user_2, date). 
-- assume there is only one unique interaction between a pair of users per day

select * from user_interaction ui 

select usr, sum(cnt)
from (select user_1 as usr, count(user_1) as cnt
from user_interaction ui 
where "date" = '2019-03-23'
group by user_1
union all
select user_2 as usr , count(user_2) as cnt
from user_interaction ui 
where "date" = '2019-03-23'
group by user_2 ) as tmp
group by usr
having sum(cnt) >= 4

-- 43> write a sql query to find the names of all salesperson that have order with samsonic from 
-- the table: salesperson, customer, orders

select * from salesperson s ;
select * from customer c ;
select * from orders o ;

select distinct s2."name"
from salesperson s2 
join orders o2 on s2.id = o2.salesperson_id 
join customer c2 on o2.cust_id = c2.id 
where c2."name" = 'Samsonic';

-- 44> write a sql query to find the names of all salesperson that do not have any order with Samsonic from the table: salesperson, customer, orders
select * from salesperson s where id not in (select distinct s2.id
from salesperson s2 
join orders o2 on s2.id = o2.salesperson_id 
join customer c2 on o2.cust_id = c2.id and c2."name" ='Samsonic');

-- 45> Wrie a sql query to find the names of salespeople that have 2  or more orders.
select s2."name" , count("number") as no_of_orders
from salesperson s2 
join orders o2 on s2.id = o2.salesperson_id 
group by s2."name" 
having count("number") >= 2

-- 46> Given two tables:  User(user_id, name, phone_num) and UserHistory(user_id, date, action), 
-- write a sql query that returns the name, phone number and most recent date for any user that has logged in 
-- over the last 30 days 
-- (you can tell a user has logged in if action field in UserHistory is set to 'logged_on')
select user.name, user.phone_num, max(userhistory.date)
from user,userhistory
where user.user_id = userhistory.user_id
and userhistory.action = 'logged_on'
and userhistory.date >= date_sub(curdate(), interval 30 day)
group by user.name;

-- 47> Given two tables:  User(user_id, name, phone_num) and UserHistory(user_id, date, action), 
-- Write a SQL query to determine which user_ids in the User table are not contained in the UserHistory table 
-- (assume the UserHistory table has a subset of the user_ids in User table). Do not use the SQL MINUS statement. 
-- Note: the UserHistory table can have multiple entries for each user_id. 
select user.user_id
from user
left join userhistory
on user.user_id = userhistory.user_id
where userhistory.user_id is null;
-- 48> from a given table compare(numbers int(4)), write a sql query that will return the maximum value 
-- from the numbers without using 
-- sql aggregate like max or min

select numbers
from compare
order by numbers desc
limit 1;

-- 49> Write a SQL query to find out how many users inserted more than 1000 but less than 2000 images in their presentations from event_log table
-- There is a startup company that makes an online presentation software and they have event_log table that records every time a user inserted 
-- an image into a presentation. one user can insert multiple images
select * from event_log el 

select count(*) from 
(select user_id, count(event_date_time) as image_per_user
from event_log
group by user_id) as image_per_user
where image_per_user <2000 and image_per_user>1000;

-- 50> select the most recent login time by values from the login_info table

select user_id, max(login_time) from login_info li 
group by user_id 
order by user_id 
