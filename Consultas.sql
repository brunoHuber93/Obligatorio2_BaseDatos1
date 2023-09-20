GO
USE Obligatorio2;

/*1)Obtener el email y usuario de aquellos usuarios que emitieron contenido de las categor�as
	M�sica o Juegos, pero no ambas. Considerar solo contenidos de enero de 2023 y no mostrar
	datos duplicados.*/

	SELECT  DISTINCT u.email, u.usuario
	FROM Usuario u, Contenido co, Categoria ca
	WHERE ca.nombreCategoria = 'M�sica'
	AND co.fechaEmision BETWEEN '2023-01-01' AND '2023-01-31'
	AND u.email = co.emailUsuario
	AND ca.codCategoria = co.codCategoria
	UNION
	SELECT  DISTINCT u.email, u.usuario
	FROM Usuario u, Contenido co, Categoria ca
	WHERE ca.nombreCategoria = 'Juegos'
	AND co.fechaEmision BETWEEN '2023-01-01' AND '2023-01-31'
	AND u.email = co.emailUsuario
	AND ca.codCategoria = co.codCategoria
	EXCEPT
	SELECT  DISTINCT u.email, u.usuario
	FROM Usuario u, Contenido co, Categoria ca
	WHERE ca.nombreCategoria = 'M�sica'
	AND co.fechaEmision BETWEEN '2023-01-01' AND '2023-01-31'
	AND u.email = co.emailUsuario
	AND ca.codCategoria = co.codCategoria
	INTERSECT
	SELECT  DISTINCT u.email, u.usuario
	FROM Usuario u, Contenido co, Categoria ca
	WHERE ca.nombreCategoria = 'Juegos'
	AND co.fechaEmision BETWEEN '2023-01-01' AND '2023-01-31'
	AND u.email = co.emailUsuario
	AND ca.codCategoria = co.codCategoria


/* 2)Listar el email, usuario, nombre, la cantidad de contenido p�blico de los usuarios que
	generaron contenido en el per�odo del 21 de abril del 2022 al 21 de noviembre del 2022.
	Ordenar el resultado por cantidad de contenido publico descendente.*/

	SELECT u.email, u.usuario, u.nombre, COUNT(co.estado) AS Cantidad_P�blico
	FROM Usuario u
	JOIN Contenido co ON u.email = co.emailUsuario
	WHERE co.fechaEmision BETWEEN '2022-04-21' AND '2022-11-21'	
	AND co.estado = 'P�blico'	
	GROUP BY u.email, u.usuario, u.nombre 	
	ORDER BY Cantidad_P�blico DESC



/*  	3)Obtener el nombre y fecha de nacimiento del usuario que visualiz� la mayor cantidad de
		contenido en el a�o actual. En caso de empate mostrar todos. Investigue el comando "TIES"
		para resolver esta consulta.*/


		SELECT TOP 1 WITH TIES u.nombre, u.fechaNac, COUNT(*) AS Cantidad_Visualizaciones
		FROM Usuario u
		JOIN Visualizacion v ON u.email = v.emailUsuario
		WHERE YEAR(v.fecha) = YEAR(GETDATE())
		GROUP BY u.nombre, u.fechaNac
		ORDER BY Cantidad_Visualizaciones DESC

	
--		4) Listar la m�xima, m�nima, el promedio y la cantidad de las donaciones realizadas.

		SELECT MAX(monto) AS M�xima, MIN(monto) AS M�nima, CAST(AVG(monto) AS DECIMAL(5,2)) AS Promedio, COUNT(monto) AS Cantidad --Casteo el resultado de "Promedio" para que me devuelva un numero mas redondo, como muestra el ejemplo de la letra
		FROM Donacion
	
	
	
/*		5)Mostrar el nombre de la categor�a, la cantidad de contenido y la cantidad de
		visualizaciones, solamente de contenidos p�blicos y cuya emisi�n sea de los �ltimos 15
		d�as. En caso de no tener visualizaciones, no es necesario mostrarlo en la consulta.*/

		SELECT ca.nombreCategoria, COUNT(DISTINCT co.codContenido) AS Cantidad_Contenido, COUNT(v.codContenido) AS Cantidad_Visualizaciones 
		FROM Categoria ca 
		JOIN Contenido co ON co.codCategoria = ca.codCategoria
		JOIN Visualizacion v ON co.codContenido = v.codContenido
		WHERE co. estado = 'P�blico'
		AND co.fechaEmision BETWEEN DATEADD(DAY, -15, GETDATE()) AND GETDATE()
		GROUP BY ca.nombreCategoria
		ORDER BY Cantidad_Contenido




/*		6)Listar los nombres de los usuarios que recibieron donaciones, el monto total de las
		donaciones recibidas que est�n aprobadas y que se acreditaron antes del 15/05/2023.
		Ordenarlo por monto total de forma ascendente.*/

		SELECT Distinct u.nombre, SUM(d.monto) AS Monto_Total
		FROM Usuario u, Donacion d
		WHERE u.email = d.emailDestino
		GROUP BY u.nombre, d.estadoDonacion, d.fechaAcreditacion
		HAVING d.estadoDonacion = 'Aprobada' AND d.fechaAcreditacion < '2023-05-15'
		ORDER BY Monto_Total ASC


/*		7)Listar los datos de las visualizaciones de los contenidos de la categor�a �M�sica� o
		�Esports�, creados por mujeres en los �ltimos dos a�os. Mostrar, adem�s, el t�tulo, la
		fecha de emisi�n y el estado del contenido, as� como el nombre de la categor�a.
		Quedarse �nicamente con los contenidos cuyo t�tulo comiencen con la letra �F� o
		contengan la palabra �Futbol�.*/

		SELECT v.*, co.titulo, co.fechaEmision, co.estado, ca.nombreCategoria
		FROM Visualizacion v
		JOIN Contenido co ON co.codContenido = v.codContenido
		JOIN Usuario u ON u.email = co.emailUsuario
		JOIN Categoria ca ON ca.codCategoria = co.codCategoria
		WHERE ca.nombreCategoria IN ('M�sica', 'Esports')
		AND u.sexo = 'F'
		AND fechaEmision BETWEEN DATEADD(YEAR, -2, GETDATE()) AND GETDATE()
		AND (co.titulo LIKE 'F%' OR co.titulo LIKE '%Futbol%')


--		8)Mostrar el nombre de la categor�a y la cantidad de sus contenidos, solo mostrar las cantidades que sean mayores a 3.
		
		SELECT ca.nombreCategoria, COUNT(co.codContenido) AS Cantidad_Contenido
		FROM Categoria ca, Contenido co
		WHERE ca.codCategoria = co.codCategoria
		GROUP BY ca.nombreCategoria
		HAVING COUNT(co.codContenido) > 3
		ORDER BY Cantidad_Contenido
		
/*		9)Listar los usuarios que recibieron donaciones ya aprobadas, indicar el monto total de
		las donaciones, la cantidad de contenidos compartidos y la cantidad de visualizaciones.
		Mostrar solamente los que tuvieron monto de donaciones mayor a cero.*/


		SELECT u.nombre, SUM(DISTINCT d.monto) AS Monto_Total, COUNT(DISTINCT co.codContenido) AS Cantidad_Contenidos, COUNT(DISTINCT v.codContenido) AS Cantidad_Visualizaciones
		FROM Usuario u
		JOIN Donacion d ON u.email = d.emailDestino
		LEFT JOIN Contenido co ON u.email = co.emailUsuario
		LEFT JOIN Visualizacion v ON co.codContenido = v.codContenido
		WHERE d.estadoDonacion = 'Aprobada' AND d.monto > 0
		GROUP BY u.nombre
		ORDER BY Monto_Total



		/*-- Si t� Nro estudiante termina en 7 o 8
		--4) Obtener el total de donaciones realizadas por cada usuario y filtrar aquellos que hayan donado m�s de $1.000.000- */


		SELECT d.emailOrigen, SUM(DISTINCT d.monto) AS Total_Donaciones
		FROM  Donacion d
		JOIN Usuario u ON u.email = d.emailOrigen
		GROUP BY d.emailOrigen
		HAVING SUM(d.monto) > 1000000
		ORDER BY Total_Donaciones
		


		

