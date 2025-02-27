SELECT 
    country, 
    cell_phones, 
    population, 
    (cell_phones / population) AS phones_per_person
FROM country_data
ORDER BY phones_per_person DESC
LIMIT 3;

