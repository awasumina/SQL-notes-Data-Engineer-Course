-- Explore and analyze the students data to see how the length of stay (stay) impacts the average mental health diagnostic scores of the international students present in the study.

-- Return a table with nine rows and five columns.
-- The five columns should be aliased as: stay, count_int, average_phq, average_scs, and average_as, in that order.
-- The average columns should contain the average of the todep (PHQ-9 test), tosc (SCS test), and toas (ASISS test) columns for each length of stay, rounded to two decimal places.
-- The count_int column should be the number of international students for each length of stay.
-- Sort the results by the length of stay in descending order.

-- Start coding here...
select stay, COUNT(stay) as count_int, round(avg(todep),2) as average_phq, round(avg(tosc),2) as average_scs,round(avg(toas),2) as average_as 
from students
where Inter_dom='Inter'
group by stay
order by stay desc
limit 9;
