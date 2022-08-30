-- Part One:
USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY last_name ;

-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE '%q%'
ORDER BY last_name;

# Part 2:

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name ;

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.

SELECT first_name, last_name, gender
FROM employees
WHERE gender = 'M'
 AND first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ;

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
# '%e' = ends with | 'e%' = starts with
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%'
    OR last_name LIKE '%e';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%'
   AND last_name LIKE '%e';


# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
# use not keyword before like to invert result and get not value.

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';