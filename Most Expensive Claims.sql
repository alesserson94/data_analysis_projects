-- Top 10 CPT Code Costs
select
cpt_code,
sum(paid_amount) as total_paid
from claims
group by cpt_code
order by total_paid desc
limit 10;

-- Top 10 ICD Code Costs
select
icd_code,
sum(paid_amount) as total_paid
from claims
group by icd_code
order by total_paid desc
limit 10;

-- Top 10 Cost Per Claim by CPT Code
select
cpt_code,
round(sum(paid_amount)/count(*),2) as avg_per_claim
from claims
group by cpt_code
order by avg_per_claim desc
limit 10;