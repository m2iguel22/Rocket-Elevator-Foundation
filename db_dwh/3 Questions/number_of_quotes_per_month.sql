SELECT quote_id FROM factquotes
GROUP BY company_name, nb_elevators
ORDER BY quote_id;
