#FUNCTIONS EE PROCUDERES

# ( ͡👁️ ͜ʖ ͡👁️)

#DELIMITER --> especiica qual sera o simbolo para encerramento da function
#DETERMINISTIC --> Para especificar que o retorno  da função sera o mesmo tipo da entrada de argumentos (caso houver) ou quando não existir argumentos de entrada
# NOT DETERMINISTIC --> Para especificar que o retorno da função sera diferente do tipo de dados da entrada dos argumentos


DROP FUNCTION saudation;

DELIMITER ( ͡👁️ ͜ʖ ͡👁️)
CREATE FUNCTION saudation(usuario CHAR(20))

    RETURNS CHAR(50) #define o tipo de dados de retorno da function
    DETERMINISTIC
		BEGIN
        #Declaração de variaveis da function
		  DECLARE ʕ•́ᴥ•̀ʔっhoraAtual TIME;
          DECLARE ʕ•́ᴥ•̀ʔっhora CHAR(2);
          DECLARE mensagem CHAR(50);
          
          #Para atribuir um dado a uma varivel utilizamos o comando set
          SET ʕ•́ᴥ•̀ʔっhoraAtual = "03:00:00";
          SET ʕ•́ᴥ•̀ʔっhora = HOUR(ʕ•́ᴥ•̀ʔっhoraAtual);
          
			IF ʕ•́ᴥ•̀ʔっhora >= 5 AND ʕ•́ᴥ•̀ʔっhora < 12 THEN
				SET mensagem = "Bom dia!";
			ELSEIF ʕ•́ᴥ•̀ʔっhora >= 12 AND ʕ•́ᴥ•̀ʔっhora < 18 THEN
				SET mensagem = "Boa tarde!";
			ELSEIF ʕ•́ᴥ•̀ʔっhora >= 18 AND ʕ•́ᴥ•̀ʔっhora <= 23 THEN
				SET mensagem = "Vou te contar um segredo meia noite!";
			ELSE
				SET mensagem = "Vai durmi!";
			END IF;
            
            RETURN CONCAT(mensagem, " ", usuario);
            
		END ( ͡👁️ ͜ʖ ͡👁️)
        
        
SELECT saudation('Gabriel') as mensagemBraba;



