Select distinct(Currency), country from employee_data;

SET SQL_SAFE_UPDATES = 0;

UPDATE employee_data SET currency = 'JPY'
WHERE country = 'Japan';

UPDATE employee_data SET currency = 'EEK'
WHERE country = 'Estonia';

UPDATE employee_data SET currency = 'GBP'
WHERE country = 'United Kingdom';

UPDATE employee_data SET currency = 'ILS'
WHERE country = 'Israel';

UPDATE employee_data SET currency = 'EUR'
WHERE country IN ('Austria', 'Belgium', 'Finland', 'France', 'Germany', 'Greece', 'Italy', 'Luxembourg', 'Netherlands', 'Spain', 'Ireland');

UPDATE employee_data SET currency = 'USD'
WHERE country IN ('India', 'Jordan', 'United States');

UPDATE employee_data SET currency = 'VND'
WHERE country = 'Vietnam';

UPDATE employee_data SET currency = 'KRW'
WHERE country = 'South Korea';

UPDATE employee_data SET currency = 'PHP'
WHERE country = 'Philippines';

UPDATE employee_data SET currency = 'CNY'
WHERE country = 'China';

UPDATE employee_data SET currency = 'CAD'
WHERE country = 'Canada';

UPDATE employee_data SET currency = 'AUD'
WHERE country = 'Australia';

UPDATE employee_data SET currency = 'BRL'
WHERE country = 'Brazil';

UPDATE employee_data SET currency = 'MXN'
WHERE country = 'Mexico';

UPDATE employee_data SET currency = 'NZD'
WHERE country = 'New Zealand';

UPDATE employee_data
SET
    low = REPLACE(low, 'NA¥', ''),
    median = REPLACE(median, 'NA¥', ''),
    high = REPLACE(high, 'NA¥', '')
WHERE country = 'China';

UPDATE employee_data
SET
    low = REPLACE(low, 'A$', ''),
    median = REPLACE(median, 'A$', ''),
    high = REPLACE(high, 'A$', '')
WHERE country = 'Canada';

UPDATE employee_data
SET
    low = REPLACE(low, '$', ''),
    median = REPLACE(median, '$', ''),
    high = REPLACE(high, '$', '')
WHERE country IN ('Brazil', 'Australia');

UPDATE employee_data
SET
    low = REPLACE(low, 'X$', ''),
    median = REPLACE(median, 'X$', ''),
    high = REPLACE(high, 'X$', '')
WHERE country = 'Mexico';

UPDATE employee_data
SET
    low = REPLACE(low, 'Z$', ''),
    median = REPLACE(median, 'Z$', ''),
    high = REPLACE(high, 'Z$', '')
WHERE country = 'New Zealand';

UPDATE employee_data
SET
    low = REPLACE(low, 'N¥', ''),
    median = REPLACE(median, 'N¥', ''),
    high = REPLACE(high, 'N¥', '')
WHERE country = 'China';

update employee_data set company=('No Company')
where company Like '%?%';

update employee_data
set company_rating = round(company_rating);