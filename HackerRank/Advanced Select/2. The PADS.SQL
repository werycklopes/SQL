#1 - QUERY DE TODOS OS NOMES EM ORDEM ALFABÉTICA CONCATENADO COM A PRIMEIRA LETRA DA PROFISSÃO ENTRE ( )
#2 - CONSULTAR O NÚMERO DE CADA VEZ QUE A OCUPAÇÃO É CITADA
#    'There are a total of [occupation_count] [occupation]s'
#   2.1 - 


SELECT concat(Name, '(', SUBSTR(Occupation, 1, 1), ')' )
FROM OCCUPATIONS
ORDER BY Name;

SELECT CONCAT('There are a total of ', COUNT(Occupation),' ',lower(Occupation), 's.' )
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(Occupation) ASC, Occupation ASC;