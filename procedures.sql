DROP PROCEDURE procListarFilmes;

DELIMITER $$
CREATE PROCEDURE procListarFilmes(IN idGenero INT)
	BEGIN
		IF idGenero > 0 THEN
			SELECT tblFilme.nome AS nomeFilme, tblFilme.dataLancamento, tblGenero.nome AS nomeGenero
			FROM tblFilme INNER JOIN tblFilmeGenero ON tblFilme.idFilme = tblFilmeGenero.idFilme
						  INNER JOIN tblGenero ON tblGenero.idGenero = tblFilmeGenero.idGenero
			WHERE tblGenero.idGenero = idGenero;
		ELSEIF idGenero = 0 THEN
			SELECT tblFilme.nome AS nomeFilme, tblFilme.dataLancamento, tblGenero.nome AS nomeGenero
			FROM tblFilme INNER JOIN tblFilmeGenero ON tblFilme.idFilme = tblFilmeGenero.idFilme
						  INNER JOIN tblGenero ON tblGenero.idGenero = tblFilmeGenero.idGenero;
		END IF;
    END $$
		
    CALL procListarFilmes(0);
    
    DELIMITER $$
create procedure procListarFilmes (IN idGenero int)
	BEGIN
		
        declare sqlPrincipal text;
        declare sqlCriterioGenero text;
        declare sqlCompleto text;
        
        set sqlPrincipal = 
        'select tblFilme.nome as nomeFilme, tblFilme.dataLancamento,
				   tblGenero.nome as nomeGenero
			from   tblFilme
				inner join tblFilmeGenero
					on tblFilme.idFilme = tblFilmeGenero.idFilme
				inner join tblGenero
					on tblGenero.idGenero = tblFilmeGenero.idGenero
        ';
        
        
        
		#Condição para listar os filmes com filtro pelo id do Gênero
        
        set @comandoPrincipal := 'select tblFilme.nome as nomeFilme, tblFilme.dataLancamento,
            tblGenero.nome as nomeGenero
            from tblfilme
            inner join tblfilmegenero
				on tblFilme.idFilme = tblfilmegenero.idFilme
            inner join tblgenero
				on tblGenero.idGenero = tblGenero.idGenero';
                
		if idGenero > 0 then
			set @comando := concat(@comandoPrincipal, 'where tblGenero.idGenero = ', idGenero);
		else
			set @comando := @comandoPrincipal;

        end if;
        
        PREPARE scriptSQL FROM  @comando;
        EXECUTE scriptSQL;
    END $$
    
    call procListarFilmes(0);