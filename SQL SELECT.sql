SELECT account_id
FROM orders
ORDER BY account_id, total_amt_usd DESC;
LIMIT 15

WHERE name = 'Exxon Mobil';
WHERE id > 1000

WHERE
> (Maior que)
< (Menor que)
>= (Melhor que ou igual a)
<= (menos que ou igual a)
= (igual a)
!= (diferente de)




SELECT id, (standard_amt_usd/total_amt_usd)*100 AS std_percent, total_amt_usd
FROM orders
LIMIT 10;

Matemáticos familiares serão úteis:
* (Multiplicação)
+ (Adição)
- (Subtração)
/ (Divisão)

Operadores lógicos incluem:

LIKE Isso permite que você execute operações semelhantes ao usar
WHERE e =, mas para os casos em que você pode não saber exatamente
o que está procurando.

IN Isso permite que você execute operações semelhantes ao usar WHERE e =,
mas para mais de uma condição.
NOT Isso é usado com IN e LIKE para selecionar todas as linhas NOT LIKE ou NOT IN
em uma determinada condição.

AND & BETWEEN Permitem combinar operações onde todas as condições combinadas
devem ser verdadeiras.
OR Isso permite combinar operações onde pelo menos uma das condições
combinadas deve ser verdadeira.

where extract (date from data) = '2021-11-06'
and baseOrigem = 'JVE'

SELECT DISTINCT City
FROM Employee;

CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

CREATE TABLE country(
    id_country int,
    name_country text,
    president text
);

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
INSERT INTO country
VALUES (1, 'Brazil', 'Jair Bolsonaro');

SELECT s.name_state, s.id_state
FROM state as s, country as c
WHERE s.id_country = c.id_country and c.name_country = 'Brazil'

DELETE FROM table_name WHERE condition;
DELETE FROM city WHERE name_city = 'Orlando';

DROP TABLE table_name;
DROP TABLE city;

SELECT vw_ay.data AS data,
  vw_ay.planta AS planta,
  vw_ay.ano AS ano,
  vw_ay.mes AS mes,
  vw_ay.dia AS dia,
  vw_ay.horaInicio AS horaInicio,
  vw_ay.turno AS turno,
  vw_ay.linha AS linha,
  vw_ay.datacorrigida AS datacorrigida,
  CAST(vw_ay.prod_plan AS FLOAT64) AS prod_plan,
  CAST(vw_ay.capacidade AS FLOAT64) AS capacidade,
  CAST(vw_ay.prod_real AS FLOAT64) AS prod_real,
  vw_ay.reprocesso AS reprocesso
FROM whr-lar-scm-mfg-data-lake.bus_manufatura.vw_ay vw_ay
where vw_ay.planta = 'Joinville'

#truncar e arrendodar
SELECT  CAST(10.6496 AS INT) as trunc1,
        CAST(-10.6496 AS INT) as trunc2,
        CAST(10.6496 AS NUMERIC) as round1,
        CAST(-10.6496 AS NUMERIC) as round2;

# Todas as empresas cujos nomes começam com 'C'.
SELECT name
FROM accounts
WHERE name LIKE 'C%';

#Todas as empresas cujos nomes contêm a string 'um' em algum lugar do nome.
SELECT name
FROM accounts
WHERE name LIKE '%one%';

#Todas as empresas cujos nomes terminam com 's'.
SELECT name
FROM accounts
WHERE name LIKE '%s';

#Utilizar a contas tabela para encontrar a conta name,
primary_poce sales_rep_idpara o Walmart, Target, e Nordstrom.
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');


#Use o web_events tabela para encontrar todas as informações
sobre indivíduos que foram contactados através do canal de organicou adwords.
