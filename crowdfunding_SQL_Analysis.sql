-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT backers_count,
cf_id, 
contact_id, 
company_name,
description,
goal
pledged,
outcome,
country,
currency,
launch_date,
end_date,
category_id,
subcategory_id
INTO live_backers
FROM campaign
where (outcome = 'live') 
ORDER BY cf_id DESC;

DROP TABLE live_backers CASCADE;
select * from live_backers;

-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT DISTINCT ON (ca.cf_id) b.cf_id, b.email,b.first_name,b.last_name, b.backer_id 
INTO backers_info
FROM backers AS b
ON b.cf_id = ca.cf_id
ORDER BY b.cf_id DESC;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT first_name, last_name, email,goal
into email_contacts_remaining_goal_amount
FROM live_backers
where (outcome ='live')
order by cf_id desc;
SELECT * FROM email_contacts_remaining_goal_amount;
Drop TABLE email_contacts_remaining_goal_amount CASCADE;


-- Check the table


-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 



-- Check the table


