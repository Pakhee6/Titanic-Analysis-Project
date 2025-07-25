#Fare vs Survived

select case 
when fare<10 then '$<10' 
when fare between 10 and 30 then '$10-30'
when fare between 31 and 100 then '$31-100'
end as fare_range,
count(*) as total,
sum(case when survived=1 then 1 else 0 end) as survived,
round(sum(case when survived=1 then 1 else 0 end)*100.00/count(*),2) as survival_rate
from titanic_dataset
where fare is not null
group by fare_range;