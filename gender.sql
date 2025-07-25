#survival rate by gender

select sex, count(*) as total_passengers,
sum(case when survived=1 then 1 else 0 end) as survived_count,
round(sum(case when survived=1 then 1 else 0 end)*100.0/count(*),2) as survived_rate
from titanic_dataset
group by sex;