#INSERT, UPDATES E DELETES

	#Insert de valores individuais
	insert into tblGenero (nome)
		values('Romance');
        
        
	#Insert de múltiplos valores
    	insert into tblGenero(nome) values('Animação'),
										  ('Musical'),
                                          ('Policial'),
                                          ('Fantasia');
		
	

#Tabela de classificação
insert into tblClassificacao (nome) values  ('+10'), 
											('+12'),
                                            ('+14'), 
                                            ('+16'), 
                                            ('+18'), 
                                            ('Livre');
                                            
select * from tblClassificacao;
select * from tblFilme;
    
    #Tabela de  Filme
    
    insert into  tblFilme (nome,
						 duracao,
                         dataLancamento,
						dataReLancamento,
                        sinopse,
                        nomeOriginal,
                        fotoCapa,
                        idClassificacao
                        )values
                        ('UM SONHO DE LIBERDADE',
                        '02:20:00',
                        '1995-01-25',
                        null,
                        'Em 1946, Andy Dufresne (Tim Robbins), um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicídio de sua esposa e do amante dela. Ele é mandado para uma prisão que é o pesadelo de qualquer detento, a Penitenciária Estadual de Shawshank, no Maine. Lá ele irá cumprir a pena perpétua. Andy logo será apresentado a Warden Norton (Bob Gunton), o corrupto e cruel agente penitenciário, que usa a Bíblia como arma de controle e ao Capitão Byron Hadley (Clancy Brown) que trata os internos como animais. Andy faz amizade com Ellis Boyd Redding (Morgan Freeman), um prisioneiro que cumpre pena há 20 anos e controla o mercado negro da instituição.',
                        'The Shawshank Redemption',
                        'filme01.jpg',
					    4
                        ),
                        ('O REI LEÃO', 
						  '01:29:00', 
						  '1994-07-08', 
						  '2011-10-26',
						  'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.',
						  'The Lion King', 
						  'filme-o_rei_leao-capa.jpg', 
						  6
                          );
                                
                          
                          
  # Tabela Filme Genero
  
  insert into tblFilmeGenero (idFilme, IdGenero)
                             values (1, 1),
								    (2, 2),
                                    (2, 3),
                                    (2, 4);
                                    
 #Update 
 update tblFilme set duracao = '03:00:00' where idFilme = 1;                                
       
  
#Delete 
delete from tblGenero
    where idGenero = 6;
  
 select * from tblFilme;      
 select * from tblClassificacao; 
 select * from tblGenero;
 
 
 
 INSERT INTO tblFilme (nome, duracao, dataLancamento, dataRelancamento, sinopse, nomeOriginal, fotoCapa, idClassificacao, qtde)
               # FORREST GUMP - O CONTADOR DE HISTÓRIAS
	  VALUES ('FORREST GUMP - O CONTADOR DE HISTÓRIAS', 
			  '02:20:00', 
              '1994-12-07', 
              null, 
              'Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks), um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais, como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran.',
              'Forrest Gump', 
              'FORREST.jpg', 
              4,
              3),
              
              # À ESPERA DE UM MILAGRE
              ('À ESPERA DE UM MILAGRE', 
              '03:09:00', 
              '2000-03-10', 
              null,
              '1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks) é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros. Aos poucos, desenvolve-se entre eles uma relação incomum, baseada na descoberta de que o prisioneiro possui um dom mágico que é, ao mesmo tempo, misterioso e milagroso.',
              'The Green Mile', 
              'filme-o_rei_leao-capa.jpg', 
              4,
              4);
    
    
UPDATE `dbfilmesturmab`.`tblFilme` SET `dataRelancamento` = '2000-10-18' WHERE (`idFilme` = '3');
UPDATE `dbfilmesturmab`.`tblFilme` SET `dataRelancamento` = '2007-05-07' WHERE (`idFilme` = '4');
UPDATE `dbfilmesturmab`.`tblFilme` SET `dataRelancamento` = '2000-03-20' WHERE (`idFilme` = '1');

INSERT INTO tblAtor (nome, nomeArtistico, dataNascimento, dataFalecimento, biografia, foto, idSexo)
               # FORREST GUMP - O CONTADOR DE HISTÓRIAS
	  VALUES ('Thomas Jeffrey Hanks', 
			  'Tom Hanks', 
              '1956-07-09', 
              null, 
              'Tom Hanks iniciou a carreira no cinema aos 24 anos, com um papel no filme de baixo orçamento Trilha de Corpos. Logo migrou para a TV, onde estrelou por dois anos a série Bosom Buddies. Nela passou a trabalhar com comédia, algo com o qual não estava habituado, rendendo convites para pequenas participações nas séries Táxi, Caras & Caretas e Happy Days.',
              'fotoHanks.png', 
              1),
              ('Robin Virginia Gayle Wright', 
			  'Robin Wright Penn', 
              '1966-04-08', 
              null, 
              'Robin Wright nasceu em Dallas, Texas, filha de Gayle Gaston, uma vendedora de cosméticos, e Freddie Wright, funcionário de uma empresa farmacêutica. A atriz ficou famosa por seus papeis em House of Cards, Mulher-Maravilha, Corpo Fechado e Forrest Gump - O Contador de Histórias.Wright foi criada em San Diego, Califórnia. ',
              'fotoRobin.png', 
              2);
              
   INSERT INTO tblAtor(nome, nomeArtistico, dataNascimento, dataFalecimento, biografia, foto, idSexo) VALUES
#Um sonho de um liberdade
(
  'Bob Gunton',
  null,
  '1945-11-15',
  null,
  'ESTADO CIVIL
Atividade Ator
Nacionalidade Americano
Nascimento 15 de novembro de 1945
Idade 76 anos',
'bob.jpg',
1
),
(
  'MORGAN FREEMAN',
  null,
  '1937-06-01',
  null,
  'ESTADO CIVIL
Atividades Ator, Produtor de set, Produtor Executivo mais
Nacionalidade Americano
Nascimento 1 de junho de 1937 (Memphis, Tennesee, EUA)
Idade 84 anos',
'morganf.jpg',
1
);

INSERT INTO tblAtor(nome, nomeArtistico, dataNascimento, dataFalecimento, biografia, foto, idSexo) VALUES
#O rei leão
(
  'GARCIA JÚNIOR',
  null,
  '1967-03-02',
  null,
  null,
'garciajunior.jpg',
1
),
(
  'JORGEH RAMOS',
  null,
  '1941-02-03',
  '2014-12-01',
  'locutor, poeta, jornalista, pintor e dublador brasileiro. Conhecido por ser a voz mais famosa de trailers no Brasil e por seu bordão: sexta-feira nos cinemas, trabalhou em diversos estúdios do Rio de Janeiro.',
  'jorgehjunior.jpg',
  1
);           
  
  
  INSERT INTO tblAtor(nome, nomeArtistico, dataNascimento, dataFalecimento, biografia, foto, idSexo)
               # À ESPERA DE UM MILAGRE
	  VALUES ('DAVID MORSE', 
			  null, 
              '1957-10-11',
              null, 
              'David Morse é filho de Jacquelyn (professora) e de Charles Morse (encarregado de vendas). Tem três irmãs. Casou-se com Susan Duff a 19 de Junho de 1982. O casal teve três filhos e reside atualmente em Filadélfia, Pensilvânia.',
              'fotodavidmorse.png', 
              1);
              
   INSERT INTO `dbfilmesturmab`.`tbldiretor` (`idDiretor`, `nome`, `dataNascimento`, `nomeArtistico`, `biografia`, `foto`, `idSexo`) 
                              VALUES ('1', 
                              'Robert Lee Zemeckis', 
                              '1952-05-14', 
                              '', 
                              'Especialista em efeitos especiais, Robert Zemeckis é um dos partidários dos filmes do também diretor Steven Spielberg, que já produziu vários de seus filmes; - Trabalhando geralmente com seu parceiro de roteiros Bob Gale, os primeiros filmes de Robert apresentou ao público seu talento para comédias tipo pastelão', 'fotoRobert.png', '1');           
              
  
  
  INSERT INTO tbldiretor (nome, dataNascimento, nomeArtistico, biografia, foto, idSexo) VALUES
	#Um sonho de liberdade
	('FRANK DARABONT', 
    '1959-01-28', 
    'Ardeth Bey', 
    '- É o autor dos roteiros de "A Hora do Pesadelo 3", "A Mosca 2" e "Frankenstein de Mary Shelley".
	 - Trabalhou como roteirista na série de TV norte-americana "O Jovem Indiana Jones"', 
    'frankdara.png', 
    '1');
    
INSERT INTO tbldiretor (nome, dataNascimento, nomeArtistico, biografia, foto, idSexo) VALUES
	#O rei leão
	('ROGER ALLERS', 
    '1949-06-29', 
    'null', 
    'Roger Allers é um diretor, roteirista, artista de storyboard, cartunista e dramaturgo americano. Ele é mais conhecido por co-dirigir o filme de animação tradicional de maior bilheteria na história, O Rei Leão da Walt Disney Animation Studios, e por escrever a adaptação da Broadway, O Rei Leão.', 
    'rogeraller.png', 
    '1');
    
    INSERT INTO tbldiretor (nome, dataNascimento, nomeArtistico, biografia, foto, idSexo) VALUES
	#A espera de um milagre
	('FRANK DARABONT', 
    '1959-01-28', 
    'null', 
    '- É o autor dos roteiros de "A Hora do Pesadelo 3", "A Mosca 2" e "Frankenstein de Mary Shelley".

- Trabalhou como roteirista na série de TV norte-americana "O Jovem Indiana Jones".', 
    'frankdarabont.png', 
    '1');
  
  
  INSERT INTO tblsexo (nome) VALUES ('M'), ('F');
  
   #tblFilmeAtor - Um sonho de liberdade
    INSERT INTO tblfilmeator (idFilme, idAtor) VALUES (1, 3), (1, 4);
    
    #tblFilmeAtor - O rei leão
    INSERT INTO tblfilmeator (idFilme, idAtor) VALUES (2, 5), (2, 6);
    
    #tblFilmeAtor - FORREST GUMP - O CONTADOR DE HISTÓRIAS
    INSERT INTO tblfilmeator (idFilme, idAtor) VALUES (3, 1), (3, 2);
    
    #tblFilmeAtor - À ESPERA DE UM MILAGRE
    INSERT INTO tblfilmeator (idFilme, idAtor) VALUES (4, 7), (4, 8);
    
    INSERT INTO tblnacionalidade(nome) VALUES ('Brasileiro'),( 'Estadunidense'),('sulafricano'),( 'albanês'),( 'alemão'),( 'argentino'),( 'australiano'),( 'austríaco'),( 'japonês');
    
    INSERT INTO tblatornacionalidade (idAtor, idNacionalidade) VALUES ('1', '2'),(2, 2),(3, 2),(4, 2),(5, 1),(6, 1),(7, 2),(8, 2);

    INSERT INTO tbldiretornacionalidade (idDiretor, idNacionalidade) VALUES (1, 5),(2, 4),(3, 2);
    INSERT INTO tbldiretorSexo (idDiretor, idSexo) VALUES (1, 1),(2, 1),(3, 1);
    INSERT INTO tblFilmeDiretor (idDiretor, idFilme) VALUES (1, 3),(2, 4),(2, 1),(3, 2);


	INSERT INTO dbfilmesturmab.tblatorsexo (idAtor, idSexo) VALUES (1, 1),(2, 2),(3, 1),(4, 1),(5, 1),(6, 1),(7, 1),(8, 1);

	INSERT INTO tblEstudio (nome) VALUES ('Columbia Pictures'),('Disney'),('Paramount'),('Warner Bros');
    
    INSERT INTO tblFilmeEstudio (idEstudio, idFilme) VALUES (1,1),(2,2),(3,3),(4,4);
    
    INSERT INTO tblroteirista (nome, foto) VALUES ('Stephen Edwin King', 'fotoSthephen'),('Jonathan Roberts', 'fotoJonathan'),('Winston Groom', 'fotoWinston'),('Frank Darabont', 'fotoFrank');
    INSERT INTO tblRoteiristaSexo (idRoteirista, idSexo) VALUES (1, 1),(2, 1),(3, 1),(4, 1);
    
    
    INSERT INTO dbfilmesturmab.tblfilmeroteirista (idRoteirista, idFilme) VALUES (1, 1),(2, 2),(3, 3),(4, 4);

    INSERT INTO tblRoteiristaNacionalidade (idRoteirista, idNacionalidade) VALUES (1, 2),(2, 2),(3, 2),(4, 5);
