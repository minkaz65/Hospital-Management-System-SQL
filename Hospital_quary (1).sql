use Hospital9;
--
--    
-- How many percentage of the appointment approved?    
select count(*) from appointment where status = 'Approved' ; 
--
select count(*)
FROM appointment
ORDER BY status;
-- 
select status,
     COUNT(*) AS the_count
  from appointment
group by status
    ORDER BY the_count DESC; 
--   
-- The number of patient that has the specific Sleep Apnea desease?    
select Diagnosis_details, count(*) from discharge_summary where Diagnosis_details='Sleep Apnea';
--
select Diagnosis_details,
     COUNT(*) AS the_count
  from discharge_summary
group by Diagnosis_details
    ORDER BY the_count DESC; 
---
select count(*)
FROM discharge_summary
ORDER BY Diagnosis_details;

-- sorting the biling amount
SELECT *
FROM billing_records
ORDER BY bill_amount;

TABLE patient_medical_conditions;
--
SELECT *
FROM patient_medical_conditions
ORDER BY patient_id;
-- sorting the biling date                        
SELECT *
FROM billing_records
ORDER BY bill_date;

SELECT MAX(bill_amount)FROM billing_records;
SELECT Min(bill_amount)FROM billing_records;

SELECT    billingservice_id,     bill_type_id,  bill_type, bill_date, bill_amount
FROM   billing_records
ORDER BY 
bill_amount DESC
LIMIT 10;

SELECT   billingservice_id,    bill_type_id,  bill_type, bill_date, bill_amount
FROM    billing_records
INNER JOIN billing
ON billing_records.billingservice_id = billing.patientid
WHERE   bill_amount = 1000;

SELECT   billingservice_id,    bill_type_id,  bill_type, bill_date, bill_amount
FROM    billing_records
WHERE   bill_amount = 1000;
--
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
---
SELECT   billingservice_id,  bill_type_id,  bill_type, bill_date, bill_amount
FROM    billing_records
WHERE   bill_amount > 100 AND bill_amount < 1500
ORDER BY bill_amount;

-- The information of appointment between '2016-03-09' and '2018-04-05' ?
SELECT appointmentid, appointmenttype, departmentid
FROM appointment
WHERE appointmentdate >= '2016-03-09' and appointmentdate < '2018-04-05';
--
select sex,
     COUNT(*) AS the_count
  from patient_general_details 
group by sex
    ORDER BY the_count DESC; 
    
    
    select gender,
     COUNT(*) AS the_count
  from patient
group by gender
    ORDER BY the_count DESC; 
    
    
    select minit,
     COUNT(*) AS the_count
  from patient_general_details 
group by minit
    ORDER BY the_count DESC;  
   	
 --     
---
SELECT patient_status, Diagnosis_details

FROM discharge_summary, patient_general_details

WHERE patient_status='D' ;
-----

SELECT patient_status, Diagnosis_details, pid, medical_history, patient_id

FROM discharge_summary, patient_medical_conditions

WHERE patient_status='D' and patient_id = pid;
---
SELECT patient_status, fname,age

FROM discharge_summary, patient_general_details

WHERE patient_status='D' and patient_id = pid;
---
SELECT patient_status, fname,age, sex

FROM discharge_summary, patient_general_details

WHERE patient_status='D' and patient_id = pid and sex='F';
---
SELECT patient_status, fname,age, sex

FROM discharge_summary, patient_general_details

WHERE patient_status='D' and patient_id = pid and sex='M';
---





    
    
    




  
    

    
    