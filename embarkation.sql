#Embrakation port vs Survival

select embarked, count(*) as total,
sum(case when survived=1 then 1 else 0 end) as survived,
round(sum(case when survived=1 then 1 else 0 end)*100.00/count(*),2) as survival_rate
from titanic_dataset
group by embarked;
