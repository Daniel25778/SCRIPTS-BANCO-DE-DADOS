#Select

/*
   select - Especifica as colunas que serão visualizadas
    
    from - Especifica as tabelas que serão utilizadas na consulta
    
    where - Especifica o critério de filtro 
    
*/

#Permite visualizar todas as colunas e todos os registros de uma tabela(*)

select * from tblFilme;

#Permite visualizar colunas especificas da tabela 
select tblFilme.nome, tblFilme.sinopse from tblFilme;