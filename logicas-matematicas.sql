#concat() --> Permite realizar a concatenção de dados

select concat('filme: ', nome) as nomeFilme, nome,
            concat('O filme ', nome, ' tem duração de:' , duracao ) as resultado
			from tblfilme;
            
#concat_ws --> permite realizar a concatenação de dados ,utilizando um caracter de separação entre dados

select concat_ws(' - ', nome, duracao, dataLancamento) as resultado
from tblfilme;            

#locate() --> retorna a posição da palavra ou caracter desejado

select locate(' rei ', sinopse) as resultado, sinopse
           from tblfilme; 
           
select reverse(nome) as resultado
           from tblfilme;     
           
  #length ou char_length --> retorna a qtde de caracteres de uma coluna
  
  select length(nome) as qtde, nome
         from tblfilme;
         
 select char_length(nome) as qtde, nome
         from tblfilme;
         
  #insert() --> Permite inserir um novo conteudo dentro do texto de uma coluna
  #Após colocar a tabela que iremos alterar,devemos definir a posição onde queremos inserir o texto,depois,devemos definir a quantidade de caracteres que sera removido e por fim,novo conteudo que sera inseriso

	
 select insert(sinopse, locate('prisão', sinopse), length('prisão'), '<b>prisão</b>') as resultado
        from tblFilme;       
  
  
  #substr() --> Permite retirar um pedaço de um conteúdo 
  
  select concat(substr(sinopse, 1, locate('.',sinopse)), ' <a href="pagina.php" Saiba mais...</>"') as resultado
  from tblfilme;
  
  #replace() --> permite localizar um conteudo e substituir por outra coisa
  
  select replace(sinopse, 'prisão', '<b>prisão</b>');
  
  alter table tblfilme
   add column valor float;
   
   update tblfilme set valor = ' 8.00' where idFilme  =  4;
   
   select nome, qtde, valor
   from tblfilme;
   
   select nome, qtde, valor,round((qtde * valor ),2) as valorTotal
   from tblfilme;
  
  
  select nome,sinopse,concat("R$ ", valor)  as valorSemDesconto , concat("R$ ", round((valor * 0.9 ),2)) as valorComDesconto
    from tblfilme;
  
  select nome,sinopse,concat('R$ ', round(valor, 2)) as ValorOriginal, concat('R$ ', round((valor - (valor * 50)/100), 2)) as valorDesconto 
    from tblfilme;
  
       
		
        
        
       