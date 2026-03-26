 -- kpis --
 -- -- -- -- 
 -- 1 معرفة عدد المرضى الذين زاروا كل طبيب هذا الشهر
 -- -- -- -- 
 select d.id,d.first_name as doctor_name , count(pd.patient_id) as total_patients
from doctors d
join patient_doctor pd
on d.id = pd.doctor_id
where month(pd.visit_date) = month(current_date())
  and year(pd.visit_date) = year(current_date())
group by d.id
order by total_patients desc;
-- -- -- --
-- 2 ماهي اادوية الاكثر وصفا
-- -- -- --
select m.id,
       m.name as medicine_name,
       count(pm.medicine_id) as top_prescribed_medicines
from medicine m
join patient_medicine pm
on m.id = pm.medicine_id
group by m.id, m.name
order by top_prescribed_medicines desc;
-- -- -- --
-- 3 ماهي الاقسام التي لديها اكثر عدد مرضى
-- -- -- --
select d.id,d.name as department_name,count(ro.patient_id) as total_patients
from departments d
join  rooms r
on d.id=r.department_id
join room_occupancy ro
on r.id=ro.room_id
group by d.id,department_name
order by total_patients desc;
-- -- -- --
-- 4  ماهي الفواتير غير المدفوعة ومااجمالها؟
-- -- -- --

select b.id,b.amount
from bills b
where b.status='unpaid'
order by b.amount desc ;
-- -- -- --
-- 5 ماهو متزسط اقامة المريض في الغرفة؟
-- -- -- -- 
select patient_id,avg(datediff(to_date,from_date)) as avg_stay
from room_occupancy rm
group by patient_id
order by patient_id;
-- -- --
-- 6 ماهو متوسط الاقامة الكلي للمرضى داخل غرف الاقسام؟
-- -- -- --
SELECT AVG(DATEDIFF(to_date, from_date)) AS overall_avg_stay
FROM room_occupancy;
-- -- -- --
-- 7 من الاطباء الذين لم يستقبلوا اي مريض هذا الاسبوع؟
select concat(d.first_name,' ',d.last_name) as doctor_name
from doctors d
left join patient_doctor pd
on d.id=pd.doctor_id and
pd.visit_date>=date_sub(current_date(),interval 7 day)
where pd.doctor_id is null ;

