--Cuántas personas tienen 54 años
SELECT * FROM titanic WHERE Age =  "54";
--Select para seleccionar datos de la base de datos
SELECT * FROM titanic;
--filtrar resultados con where
SELECT * FROM titanic WHERE Age = "28";
--Filtrar edades de manera ascendente
SELECT * FROM titanic ORDER BY Age ASC;
--Contar filas con count
SELECT COUNT (*) FROM titanic WHERE Age = "28";
--Listar los nombres y edades de todos los pasajeros
SELECT Name, Age FROM titanic;
SELECT * FROM titanic ORDER BY Age DESC;
--Contar el número de supervivientes
SELECT count (*) FROM titanic WHERE Survived = "1";
--Listar a los pasajeros por clase
SELECT Pclass, COUNT (*) as Num_Pasajeros FROM titanic GROUP BY Pclass;
--Buscar a pasajeros que abordaron en un puerto específico
SELECT * FROM titanic WHERE Embarked = "C";

-- 5 consultas diferentes:

--Contar el número de pasajeros masculinos y femeninos:
SELECT Sex, COUNT(*) as Num_Pasajeros FROM titanic GROUP BY Sex;


-- Listar los nombres y las tarifas de todos los pasajeros que pagaron más de 50:
SELECT Name, Fare FROM titanic WHERE Fare > 50;

-- Obtener el promedio de edad de los pasajeros que viajaron en primera clase:

SELECT AVG(Age) as Promedio_Edad FROM titanic WHERE Pclass = 1;

-- Obtener los nombres de los pasajeros que tienen 22 años:
SELECT Name FROM titanic WHERE Age = 22;

-- Listar los nombres de los pasajeros que no sobrevivieron:
SELECT Name FROM titanic WHERE Survived = 0;
