-- -----------------------------------
-- Cria as relações
-- ----------------------------------

-- Relação entre os pacientes na uti e medicamentos

select 
	a.Estágio, b.Nome as Nome_Medicamento ,count(a.Pacientes_idPacientes) as Numero_Pacientes
from
	medicação as b 
    right join 
	( select
		c.Estágio, d.Pacientes_idPacientes
	from	
		uti as d, gravidade as c
	where 
		c.Pacientes_idPacientes = d.Pacientes_idPacientes) as a
    on a.Estágio = b.Gravidade_Estágio
group by
	b.Nome , a.Estágio;
    
-- Relação entre os pacientes em quartos sociais e medicamentos
  
select 
	a.Estágio, b.Nome as Nome_Medicamento ,count(a.Pacientes_idPacientes) as Numero_Pacientes
from
	medicação as b 
    right join 
	( select
		c.Estágio, d.Pacientes_idPacientes
	from	
		quarto_social as d, gravidade as c
	where 
		c.Pacientes_idPacientes = d.Pacientes_idPacientes) as a
    on a.Estágio = b.Gravidade_Estágio
group by
	b.Nome , a.Estágio;
    
-- Quantidade de médicos e enfermeiros por Turno

select
	 a.Dia_da_semana, a.Turno, count( distinct b.Médicos_Registro) as Numero_Médicos , count( distinct b.Enfermeiros_Registro) as Numero_Enfermeiros
from
	plantão as a
    left join 
	(
	select
		d.Dia_da_semana, d.Turno,  c.Médicos_Registro , d.Enfermeiros_Registro
	from
	plantão_médico as c
	left join plantão_enfermeiro as d
    on
		c.Turno = d.Turno and 
        c.Dia_da_semana = d.Dia_da_semana
    ) as b
    on
		a.Dia_da_semana = b.Dia_da_semana
		and a.Turno = b.Turno
group by a.Dia_da_semana, a.Turno;

	
    
-- Mortes com base no remédio
    
select
		a.Nome as Medicação, count(b.Pacientes_idPacientes) as Mortes
from
	medicação as a
	left join 
		(select 
			a.Pacientes_idPacientes, b.Estágio
		from 
			obitos as a , gravidade as b
		where
			a.Pacientes_idPacientes = b.Pacientes_idPacientes) as b
	on 
		a.Gravidade_Estágio = b.Estágio
group by 
	a.Nome;
    
-- Equipamentos disponiveis com base no departamento

	select
		a.N_Ventiladores, a.Departamento_Numeração, count( distinct b.Pacientes_IdPacientes) as Quarto_Social, count( distinct c.Pacientes_IdPacientes) as Uti
	from
		Equipamentos as a
		left join 
			quarto_social as b
			on a.Departamento_Numeração = b.Departamento_Numeração
		left join
				uti as c
				on a.Departamento_Numeração = c.Departamento_Numeração
	group by 
		a.Departamento_Numeração;
            
            
            
-- --------------------------------------------------------------------
            
-- PROCEDURE
-- Pega o Número de morte que o hospital teve com base na gravidade dos pacientes

DELIMITER $$
CREATE PROCEDURE Obitos_Mes(in mes int)
BEGIN
select 
	b.Estágio, a.Data_Obito, count(a.Pacientes_idPacientes) as Numero_pacientes
from 
	 gravidade as b
     right join obitos as a
	on
		a.Pacientes_idPacientes = b.Pacientes_idPacientes
where month(a.Data_Obito) = mes
group by b.Estágio;
END $$
DELIMITER ;

CALL Obitos_Mes(9);
		
-- View
-- View apresenta a quantidade de obtidos com base em um persentual de pessoas na mesm gravidade

drop view if exists Obitos_Modelo;

create view Obitos_Modelo as
select a.Causa_Obito, count(a.Pacientes_idPacientes) as Numero_Mortes ,
	case
		when count(a.Pacientes_idPacientes)/b.Pacientes_TT = NULL then CONCAT(FORMAT(00.00,2),'%')
        else CONCAT(FORMAT(100*count(a.Pacientes_idPacientes)/b.Pacientes_TT,2),'%') end as Porcentagem_Mortes
from
	obitos as a , (select count(*) as Pacientes_TT from pacientes) as b
group by a.Causa_Obito;	

-- Resultado obtido dá view

select a.Causa_Obito, count(a.Pacientes_idPacientes) as Numero_Mortes ,
	case
		when count(a.Pacientes_idPacientes)/b.Pacientes_TT = NULL then CONCAT(FORMAT(00.00,2),'%')
        else CONCAT(FORMAT(100*count(a.Pacientes_idPacientes)/b.Pacientes_TT,2),'%') end as Porcentagem_Mortes
from
	obitos as a , (select count(*) as Pacientes_TT from pacientes) as b
group by a.Causa_Obito;	


    