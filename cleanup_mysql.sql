-- HRIS Database Cleanup Script
-- Keeps: admin, ManilaHR, emp_user in sys_user
-- Keeps: Only emp_user's employee record and related data
-- Deletes: All other employee data and old user records

SET FOREIGN_KEY_CHECKS=0;

-- Store emp_user ID in a variable for efficiency
SET @emp_user_id = (SELECT id FROM employee WHERE username = 'emp_user' LIMIT 1);

-- DELETE FROM CHILD TABLES (in reverse dependency order)

-- 1. Delete child records of docs201
DELETE FROM docs201_doc_file_urls WHERE docs201_id IN (SELECT id FROM docs201 WHERE employee_id != @emp_user_id);
DELETE FROM docs201 WHERE employee_id != @emp_user_id;

-- 2. Delete service records
DELETE FROM service_record_report_request;
DELETE FROM service_record_signatory;
DELETE FROM service_record WHERE employee_id != @emp_user_id;

-- 3. Delete employee-related records
DELETE FROM civil_service_eligibility WHERE employee_id != @emp_user_id;
DELETE FROM clearance_approvers;
DELETE FROM clearance WHERE employee_id != @emp_user_id;
DELETE FROM appointment WHERE employee_id != @emp_user_id;

-- 4. Delete educational records (must be before academic_honors)
DELETE FROM educational_background WHERE employee_id != @emp_user_id;
DELETE FROM academic_honors;

-- 5. Delete other employee personal data
DELETE FROM emp_references WHERE employee_id != @emp_user_id;
DELETE FROM family_bg WHERE employee_id != @emp_user_id;
DELETE FROM government_issued_id WHERE employee_id != @emp_user_id;
DELETE FROM learning_development WHERE employee_id != @emp_user_id;
DELETE FROM other_info WHERE employee_id != @emp_user_id;
DELETE FROM other_info_question WHERE employee_id != @emp_user_id;
DELETE FROM voluntary_work WHERE employee_id != @emp_user_id;
DELETE FROM work_experience WHERE employee_id != @emp_user_id;
DELETE FROM address WHERE employee_id != @emp_user_id;

-- 6. DELETE FROM EMPLOYEE TABLE (keep only emp_user)
DELETE FROM employee WHERE username NOT IN ('emp_user');

-- 7. DELETE FROM SYS_USER (keep only admin, ManilaHR, emp_user)
DELETE FROM sys_user WHERE username NOT IN ('admin', 'ManilaHR', 'emp_user');

SET FOREIGN_KEY_CHECKS=1;

-- Verification queries (run these to confirm cleanup)
-- SELECT 'Remaining sys_user records:' as Info;
-- SELECT id, username, first_name, last_name FROM sys_user;
--
-- SELECT 'Remaining employee records:' as Info;
-- SELECT id, username, first_name, last_name FROM employee;
--
-- SELECT 'Employee related records:' as Info;
-- SELECT COUNT(*) as family_bg_count FROM family_bg;
-- SELECT COUNT(*) as educational_background_count FROM educational_background;
-- SELECT COUNT(*) as learning_development_count FROM learning_development;
-- SELECT COUNT(*) as work_experience_count FROM work_experience;
-- SELECT COUNT(*) as voluntary_work_count FROM voluntary_work;
