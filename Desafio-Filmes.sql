-- 1
select
Nome, Ano
from Filmes

-- 2
select Nome, Ano, Duracao from Filmes
order by Ano

-- 3
select Nome, Ano, Duracao from Filmes
where Nome = 'De Volta para o Futuro'

-- 4
select Nome, Ano, Duracao from Filmes
where Ano = 1997

-- 5
select Nome, Ano, Duracao from Filmes
where Ano > 2000

-- 6
select Nome, Ano, Duracao from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao

-- 7
select 
count(*) Quantidade, 
Ano 
from Filmes
group by Ano
order by Quantidade desc

-- 8
select PrimeiroNome, UltimoNome, Genero from Atores
where Genero = 'M'

-- 9
select PrimeiroNome, UltimoNome, Genero from Atores
where Genero = 'F'
order by PrimeiroNome

-- 10
select
Filmes.Nome,
Generos.Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id

-- 11
select 
Filmes.Nome,
Generos.Genero
from Filmes
inner join FilmesGenero on FilmesGenero.IdFilme = Filmes.Id
inner join Generos on FilmesGenero.IdGenero = Generos.Id
where Genero = 'Mistério'

-- 12
select
Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel
from Filmes
inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
inner join Atores on ElencoFilme.IdAtor = Atores.Id