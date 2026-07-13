-- ============================================================
-- ALL EMPLOYEE LOGIN CREDENTIALS
-- Default password for ALL employees: password
-- Run reset_all_passwords.sql first to ensure all passwords are set.
-- ============================================================

SET NAMES utf8mb4;

-- STEP 1: Reset every employee password to "password" (bcrypt cost 11)
UPDATE employee
SET password = '$2a$11$PBmRAX6wog1h4ZHS9IUz7OyGs04/s3172xTRTUO8SafooYalmNnLW'
WHERE id != 1;

-- STEP 2: Show all employee credentials (username | full name | item/plantilla no | password)
SELECT
  plantilla_no    AS item_no,
  username,
  CONCAT(first_name, ' ', last_name) AS full_name,
  'password'      AS login_password
FROM employee
WHERE id != 1
ORDER BY CAST(NULLIF(plantilla_no, '') AS UNSIGNED), id;
