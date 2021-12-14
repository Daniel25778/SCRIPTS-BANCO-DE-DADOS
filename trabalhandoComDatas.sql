#Retorna a data atual do Servidor

select curdate() as dataAtual;
select current_date() as dataAtual;

#Retorna a hora atual do Servidor

select curtime() as dataAtual;
select current_time() as dataAtual;


#Retorna a data e hora atual do servidor

select concat("Data e Hora: ",current_timestamp())  as dataAtual;

#FUNÇÕES DE FORMATAÇÃO DE HORA

select time_format(curtime(), '%H') as hora;
select time_format(curtime(), '%i') as minuto;
select time_format(curtime(), '%s') as segundo;
select time_format(curtime(), '%H:%i') as horaMinuto;
select time_format(curtime(), '%r') as horaAMPM; #00 até 12 (am ou pm)
select time_format(curtime(), '%T') as hora24H; #00 até  24 

#hour(), minute(), second()

select hour(curtime()) as hora;
select minute(curtime()) as minuto;
select second(curtime()) as segundos;

#timediff() --> calcula a diferença de horas
select timediff(curtime(), '06:00:00') as diferencaHora;

#FUNÇÕES DE FORMATAÇÃO DE DATA 

select date_format(curdate(), '%d') as diaSemana; 
select date_format(curdate(), '%w') as NumeroDiaSemana; # -->Segunda = 1 ... Domingo = 0 
select date_format(curdate(), '%a') as diaSemanaAbreviado; # -->Segunda = 1 ... Domingo = 0 
select date_format(curdate(), '%m') as mesNumero;
select date_format(curdate(), '%b') as mesAbreviado;
select date_format(curdate(), '%M') as mes;
select date_format(curdate(), '%D') as dia;
select date_format(curdate(), '%y') as anoAbreviado;
select date_format(curdate(), '%Y') as ano;


select date_format(curdate(), '%Y-%m-%d') as dataFormatadaEUA;
select date_format(curdate(), '%d-%m-%Y') as dataFormatadaBR;

select day(curdate()) as dia;
select month(curdate()) as mes;
select year(curdate()) as ano;
select yearweek(curdate()) as ano;

#datediff() --> calcula a diferença de dias
select datediff(curdate(), '2021-11-06') as diferencaDias;

select week(curdate()) as numeroDaSemana;
select weekofyear(curdate()) as numeroDaSemana;

#segunda = 0 ... Domingo = 6
select weekday(curdate()) as diaDaSemana;


#Retorna o ano e o numero da semana daquele dia 
select yearweek(curdate()) as numeroAnoSemanaDia;

select dayofyear(curdate()) as numeroDiaAno;