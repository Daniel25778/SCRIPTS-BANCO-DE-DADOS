#Select

/*
   select - Especifica as colunas que serão visualizadas
    
    from - Especifica as tabelas que serão utilizadas na consulta
    
    where - Especifica o critério de filtro 
    
*/

#Permite visualizar todas as colunas e todos os registros de uma tabela(*)

select * from tblFilme;


#Utilizar o " . " depois da tabela que voce quer visualizar os itens ,para especificar o uso
select tblFilme.* from tblFilme;


#Permite visualizar colunas especificas da tabela 
select Filme.nome, Filme.sinopse from tblFilme as Filme;


#As --> significa alias (Permite criar um apelido para um nome de uma coluna ou de uma tabela)
select nome as nomeFilme, duracao, sinopse
     from tblFilme;
     
 select nome, sinopse
     from tblfilme 
     where idfilme = 2;
     
#OPERAÇÕES DE COMPARAÇÃO
# >
# <
# <=
# >=   
# < >
#OPERADORES LÓGICOS
#not, or, and

#like --> Busca pela igualdade do valor
#like %var no inicio ---> Busca pelo o término da string
#like var% no fim --> Busca pelo o inicio da String
#like %var% no inicio e no fim --> busca por qualquer parte de string
select nome, sinopse
     from tblfilme 
     where nome like '%sonho%';
     
     
     
     alter table tblFilme 
		add column qtde int;
        
        update tblFilme set qtde = 8 where idFilme = 2;
        
        
         #Selecionar filmes em que "quantidade" está entre 6 e 10
        select * from tblFilme
           where qtde <=6;
           
            select * from tblFilme
           where qtde >=6  and qtde <=10;
           
            #Selecionar filmes em que "quantidade" não está entre 6 e 10
           select * from tblFilme
           where qtde <=6  or qtde >=10;
        
         #Selecionar filmes em que "quantidade" não está entre 6 e 10
          select * from tblFilme
           where not(qtde >=6  and qtde <=10); 
           
           select * from tblFilme
              where qtde >1 and qtde <3 or qtde >4 and qtde <6 or qtde >7 and qtde <9 or qtde >9 and qtde <11;
              
		   # in --> permite buscar no mesmo atributo por varios valores,não precisando escrveer o atributo varias vezes (OBS :Só funciona quando o operador logico é o and)
              
              #Selecionando onde "quantidade" é igual a 2, 5, 8, ou 10
              select * from tblFilme
                  where qtde not in(2,5,8,10);
              
              
              # between --> retorna os dados  em range (intervalo) de valores
              select * from tblFilme
                   where qtde between 6 and 10;
                   
			  select * from tblFilme
                   where qtde  not between 6 and 10;
           
        /*Ordenação de Dados 
        
        order by asc --> ordena de forma crescente
        order by desc --> ordena de forma decrescente
        
	     limit --> Limitar a quantidade de respostas que o banco vai trazer a partir do seu script de select
         count --> Retorna a quantidade de itens no select 
         
         */
         
        select * from tblFilme order by nome asc;
        select * from tblFilme order by nome desc;
        
	    select * from tblFilme order by nome asc, duracao desc;

		#Somente o primeiro registro da tabela 
         select * from tblFilme order by idFilme asc limit 1;
        
        
		#Somente o último registro da tabela
         select * from tblFilme order by idFilme desc limit 1;
        
        select count(*) from tblFilme;
        
         select count(*) as qtdeFilmes from tblFilme;
         
         select count(nome) as qtdeFilmes,
				count(dataRelancamento) as qtdeFilmesDataRelancamento
                from tblFilme;
       
        select count(*) as qtdeClassificacao from tblFilme
                 where idClassificacao = 4;
                 
                 
         #min retorna o menor valor do select
         #max retorna o maior valor do select      
         
        select min(qtde) as qtdeMinima from tblFilme; 
        select max(qtde) as qtdeMaxima from tblFilme;   
        
        
        SELECT 
    tblFilme.nome AS nomeFilme,
    tblFilme.duracao,
    tblFilme.dataLancamento,
    tblGenero.nome AS nomeGenero
FROM
    tblFilme,
    tblGenero,
    tblFilmeGenero
WHERE
    tblFilme.idFilme = tblFilmeGenero.idFilme
        AND tblGenero.idGenero = tblFilmeGenero.idGenero;
        
        # FORMA 02 DE FAZER RELACIONAMENTO - (NO FROM)
        #INNER JOIN --> RETORNA DADOS QUE FORAM RELACIONADOS ENTRE A TABELA DA ESQUERDA E QUE CONTEM RELAÇÃO COM A TABELA DA DIREITA
                             #ESSA FORMA DE RELACIONAR CRIA UMA PERFORMANCE(PROCESSAMENTO) MAIS RAPIDO NA GEREÇÃO DO RESULTADO
        
#INNER JOIN

select tblFilme.nome as nomeFilme, tblFilme.duracao,
       tblFilme.dataLancamento, tblGenero.nome as nomeGenero
from tblFilme inner join tblFilmeGenero
	      on tblFilme.idFilme = tblFilmeGenero.idFilme
       inner join tblGenero
		  on tblGenero.idGenero = tblFilmeGenero.idFilme
          order by nomeGenero;
 	

#LEFT JOIN


select tblFilme.nome as nomeFilme, tblFilme.duracao,
       tblFilme.dataLancamento, tblGenero.nome as nomeGenero
from tblFilme left join tblFilmeGenero
	      on tblFilme.idFilme = tblFilmeGenero.idFilme
       left join tblGenero
		  on tblGenero.idGenero = tblFilmeGenero.idFilme
          order by nomeGenero;


#RIGHT JOIN

  select tblFilme.nome as nomeFilme, tblFilme.duracao,
       tblFilme.dataLancamento, tblGenero.nome as nomeGenero
from tblFilme right join tblFilmeGenero
	      on tblFilme.idFilme = tblFilmeGenero.idFilme
      right join tblGenero
		  on tblGenero.idGenero = tblFilmeGenero.idFilme
          order by nomeGenero;
          
          
#APLICANDO FULL JOIN NO MYSQL --> COMO O MYSQL NÃO POSSUI O COMANDO FULL JOIN ,PARA REPRESENATR ESSE RESULTADO É NECESSARIO UTILIZAR O COMANDO UNION (O COMANDO UNION)
#SERVE PARA UNIR DOIS OU MAIS SCRIPTS DE SELECT ),  

select tblFilme.nome as nomeFilme, tblFilme.duracao,
       tblFilme.dataLancamento, tblGenero.nome as nomeGenero
from tblFilme left join tblFilmeGenero
	      on tblFilme.idFilme = tblFilmeGenero.idFilme
       left join tblGenero
		  on tblGenero.idGenero = tblFilmeGenero.idFilme

  union all       
        
   select tblFilme.nome as nomeFilme, tblFilme.duracao,
       tblFilme.dataLancamento, tblGenero.nome as nomeGenero
from tblFilme right join tblFilmeGenero
	      on tblFilme.idFilme = tblFilmeGenero.idFilme
      right join tblGenero
		  on tblGenero.idGenero = tblFilmeGenero.idFilme
          order by nomeGenero;    
          
          
  select tblFilme.nome as nomeFilme, 
         tblFilme.nomeOriginal as nomeOriginalFilme,
         tblClassificacao.nome as nomeClassificacao,
         tblGenero.nome as nomeGenero, 
         tblAtor.nome as nomeAtor
         from tblFilme,tblAtor,tblClassificacao,tblGenero
         where tblAtor.dataNascimento > "1965-01-01"
         order by nomeFilme,nomeOriginal,nomeClassificacao,nomeGenero,nomeAtor asc;
        
    select tblFilme.nome as nomeFilme, 
         tblFilme.nomeOriginal as nomeOriginalFilme,
         tblClassificacao.nome as nomeClassificacao,
         tblGenero.nome as nomeGenero, 
         tblAtor.nome as nomeAtor
         from tblClassificacao inner join tblFilme
                   on tblClassificacao.idClassificacao = tblFilme.idClassificacao
              inner join tblFilmeGenero
                  on tblFilme.idFilme = tblFilmeGenero.idFilme
               inner join tblGenero
                  on tblGenero.idGenero = tblFilmeGenero.idGenero 
			  inner join tblFilmeAtor
                  on tblFilme.idFilme = tblFilmeAtor.idAtor
              inner join tblAtor
			     on tblAtor.idAtor = tblFilmeAtor.idAtor
         where year(tblAtor.dataNascimento ) >= "1965"
         order by nomeFilme,nomeOriginal,nomeClassificacao,nomeGenero,nomeAtor asc;   
     
 select tblFilme.nome as nomeFilme, 
        tblFilme.dataLancamento as dataLancamentoFilme,
        tblFilme.sinopse as sinopseFilme,
        tblclassificacao.nome as nomeClassificacao,
		tblGenero.nome as nomeGenero,
        tblAtor.nome as nomeAtor,
        tblDiretor.nome as nomeDiretor,
        tblRoteirista.nome as nomeRoteirista,
        tblAtor.dataNascimento as dataNascimentoAtor,
        tblNacionalidade.nome as nacionalidadeAtor
        from tblClassificacao inner join tblFilme
                   on tblClassificacao.idClassificacao = tblFilme.idClassificacao
                   
            inner join tblFilmeGenero
                  on tblFilme.idFilme = tblFilmeGenero.idFilme       
			inner join tblGenero
                  on tblGenero.idGenero = tblFilmeGenero.idGenero 
                  
		    inner join tblFilmeAtor
                  on tblFilme.idFilme = tblFilmeAtor.idAtor
            inner join tblAtor
			      on tblAtor.idAtor = tblFilmeAtor.idAtor
                  
            inner join tblFilmeDiretor
                  on tblFilme.idFilme = tblFilmeDiretor.idDiretor
            inner join tblDiretor
			      on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
              
			inner join tblFilmeRoteirista
                  on tblFilme.idFilme = tblFilmeRoteirista.idFilme
            inner join tblRoteirista
			      on tblRoteirista.idRoteirista = tblFilmeRoteirista.idRoteirista  
             
             inner join tblAtornacionalidade
                  on tblAtor.idAtor = tblAtorNacionalidade.idAtor
             inner join tblNacionalidade
			      on tblnacionalidade.idNacionalidade = tblAtorNacionalidade.idNacionalidade 
                  
	
         order by nomeFilme asc, nomeAtor desc;  
         
         #CRIANDO UMA VIEW NO BD
        # View - é uma tabela virtual criada com base em um select,
        # que já é pré processada pelo banco de dados, e permite dar uma resposta muito mais ágil
        # do que executar o script manualmente.
        
        
        CREATE VIEW vwListarFilmes AS 
        select tblFilme.nome as nomeFilme, 
        tblFilme.dataLancamento as dataLancamentoFilme,
        tblFilme.sinopse as sinopseFilme,
        tblclassificacao.nome as nomeClassificacao,
		tblGenero.nome as nomeGenero,
        tblAtor.nome as nomeAtor,
        tblDiretor.nome as nomeDiretor,
        tblRoteirista.nome as nomeRoteirista,
        tblAtor.dataNascimento as dataNascimentoAtor,
        tblNacionalidade.nome as nacionalidadeAtor
        from tblClassificacao inner join tblFilme
                   on tblClassificacao.idClassificacao = tblFilme.idClassificacao
                   
            inner join tblFilmeGenero
                  on tblFilme.idFilme = tblFilmeGenero.idFilme       
			inner join tblGenero
                  on tblGenero.idGenero = tblFilmeGenero.idGenero 
                  
		    inner join tblFilmeAtor
                  on tblFilme.idFilme = tblFilmeAtor.idAtor
            inner join tblAtor
			      on tblAtor.idAtor = tblFilmeAtor.idAtor
                  
            inner join tblFilmeDiretor
                  on tblFilme.idFilme = tblFilmeDiretor.idDiretor
            inner join tblDiretor
			      on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
              
			inner join tblFilmeRoteirista
                  on tblFilme.idFilme = tblFilmeRoteirista.idFilme
            inner join tblRoteirista
			      on tblRoteirista.idRoteirista = tblFilmeRoteirista.idRoteirista  
             
             inner join tblAtornacionalidade
                  on tblAtor.idAtor = tblAtorNacionalidade.idAtor
             inner join tblNacionalidade
			      on tblnacionalidade.idNacionalidade = tblAtorNacionalidade.idNacionalidade 
                  
	
         order by nomeFilme asc, nomeAtor desc; 
         
         
         show tables;
         
         select * from vwListarFilmes