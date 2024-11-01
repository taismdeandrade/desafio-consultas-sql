-- 1 Buscar nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- 2 Buscar nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

-- 4 Buscar os filmes lan�ados em 1997
SELECT * FROM Filmes
WHERE Ano = 1997

-- 5 Buscar os filmes lan�ados AP�S o ano 2000
SELECT * FROM Filmes
WHERE Ano Like '200%'

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150

-- 7 Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela Quantidade em ordem decrescente
SELECT Ano,
COUNT(1) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'

-- 9 Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 Buscar o nome do filme e o g�nero
Select Nome, Genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11 Buscar o nome do filme e o g�nero do tipo "Mist�rio"
Select Nome, Genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero 
WHERE Genero = 'Mist�rio'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes 
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
