#survived_overview

select survived, count(*) as total
from titanic_dataset
group by Survived;