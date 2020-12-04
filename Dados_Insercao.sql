# Inserção dos PACIENTES

insert into PACIENTES(idPacientes, CPF, Nome, Data_Nascimento) values(1, '94847807090', 'Bondon Rumsey', '4/3/1999');
insert into PACIENTES(idPacientes, CPF, Nome, Data_Nascimento) values(2, '16374265009', 'Raddie Harden', '2/1/1961');
insert into PACIENTES(idPacientes, CPF, Nome, Data_Nascimento) values(3, '43053693038', 'Ardis Mechi', '7/6/1995');
insert into PACIENTES(idPacientes, CPF, Nome, Data_Nascimento) values(4, '62744286079', 'Tana Aseef', '5/18/2011');
insert into PACIENTES(idPacientes, CPF, Nome, Data_Nascimento) values(5, '23638911047', 'Mozes De La Haye', '1/6/1962');
insert into PACIENTES(idPacientes, CPF, Nome, Data_Nascimento) values(6, '01774540088', 'Mufinella Heffy', '5/5/2005');
insert into PACIENTES(idPacientes, CPF, Nome, Data_Nascimento) values(7, '30315271000', 'Jammie Moran', '9/28/1980');
insert into PACIENTES(idPacientes, CPF, Nome, Data_Nascimento) values(8, '62939447047', 'Jacquenette Brass', '6/7/2011');
insert into PACIENTES(idPacientes, CPF, Nome, Data_Nascimento) values(9, '14782718098', 'Shaina Isherwood', '5/26/1994');
insert into PACIENTES(idPacientes, CPF, Nome, Data_Nascimento) values(10, '75109203024', 'Julius Messer', '2/28/2017');

# Inserção dos RESPONSÁVEIS

insert into RESPONSÁVEL(Nome, Pacientes_idPacientes) values('Kassandra Scandrett', 1);
insert into RESPONSÁVEL(Nome, Pacientes_idPacientes) values('Klara Rehor', 2);
insert into RESPONSÁVEL(Nome, Pacientes_idPacientes) values('Monti Mitchley', 3);
insert into RESPONSÁVEL(Nome, Pacientes_idPacientes) values('Clement Yellep', 4);
insert into RESPONSÁVEL(Nome, Pacientes_idPacientes) values('Carlyn Ottee', 5);
insert into RESPONSÁVEL(Nome, Pacientes_idPacientes) values('Armin Erley', 6);
insert into RESPONSÁVEL(Nome, Pacientes_idPacientes) values('Moss Follet', 7);
insert into RESPONSÁVEL(Nome, Pacientes_idPacientes) values('Eugen Krol', 8);
insert into RESPONSÁVEL(Nome, Pacientes_idPacientes) values('Vivi Dargie', 9);
insert into RESPONSÁVEL(Nome, Pacientes_idPacientes) values('Nesta Pegram', 10);

# Inserção dos MÉDICOS

insert into MÉDICOS(Registro, Nome, Especialidade) values(1, 'Giavani Tillett', 'clínica médica');
insert into MÉDICOS(Registro, Nome, Especialidade) values(2, 'Wilma Avrahamof', 'clínica médica');
insert into MÉDICOS(Registro, Nome, Especialidade) values(3, 'Petr MacKey', 'cirurgia geral');
insert into MÉDICOS(Registro, Nome, Especialidade) values(4, 'Antonella Cheverell', 'Cardiologia');
insert into MÉDICOS(Registro, Nome, Especialidade) values(5, 'Allyn Gage', 'Pneumologia');

# Inserção dos DEPARTAMENTOS

insert into DEPARTAMENTO(Numeração) values(1);
insert into DEPARTAMENTO(Numeração) values(2);
insert into DEPARTAMENTO(Numeração) values(3);
insert into DEPARTAMENTO(Numeração) values(4);
insert into DEPARTAMENTO(Numeração) values(5);

# Inserção dos ENFERMEIROS

insert into ENFERMEIROS(Registro, Nome) values(1, 'Falito Staite');
insert into ENFERMEIROS(Registro, Nome) values(2, 'Winni Grgic');
insert into ENFERMEIROS(Registro, Nome) values(3, 'Dredi Allright');
insert into ENFERMEIROS(Registro, Nome) values(4, 'Theo Demchen');
insert into ENFERMEIROS(Registro, Nome) values(5, 'Nickie Antrum');

# Inserção das GRAVIDADES 

insert into GRAVIDADE(Estágio, Pacientes_idPacientes) values(1, 1);
insert into GRAVIDADE(Estágio, Pacientes_idPacientes) values(2, 2);
insert into GRAVIDADE(Estágio, Pacientes_idPacientes) values(3, 3);
insert into GRAVIDADE(Estágio, Pacientes_idPacientes) values(3, 4);
insert into GRAVIDADE(Estágio, Pacientes_idPacientes) values(1, 5);
insert into GRAVIDADE(Estágio, Pacientes_idPacientes) values(1, 6);
insert into GRAVIDADE(Estágio, Pacientes_idPacientes) values(2, 7);
insert into GRAVIDADE(Estágio, Pacientes_idPacientes) values(3, 8);
insert into GRAVIDADE(Estágio, Pacientes_idPacientes) values(3, 9);
insert into GRAVIDADE(Estágio, Pacientes_idPacientes) values(2, 10);

# Inserção das MEDICAÇÕES

insert into MEDICAÇÃO(Nome, Gravidade_Estágio) values('Fexofenadine',3);
insert into MEDICAÇÃO(Nome, Gravidade_Estágio) values('Cetirizine Hydrochloride',1);
insert into MEDICAÇÃO(Nome, Gravidade_Estágio) values('PHENTERMINE HYDROCHLORIDE',2);
insert into MEDICAÇÃO(Nome, Gravidade_Estágio) values('Standardized Timothy Grass Pollen',4);
insert into MEDICAÇÃO(Nome, Gravidade_Estágio) values('Hydromorphone Hydrochloride',5);

# Inserção dos PLANTÕES SEGUNDA-FEIRA

insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(1, 1, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(1, 1, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(1, 3, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(1, 3, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(1, 4, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(1, 4, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(1, 5, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(1, 5, 'Noturno');

# Inserção dos PLANTÕES TERÇA-FEIRA

insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(2, 1, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(2, 1, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(2, 3, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(2, 3, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(2, 4, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(2, 4, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(2, 5, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(2, 5, 'Noturno');

# Inserção dos PLANTÕES QUARTA-FEIRA

insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(3, 1, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(3, 1, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(3, 3, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(3, 3, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(3, 4, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(3, 4, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(3, 5, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(3, 5, 'Noturno');

# Inserção dos PLANTÕES QUINTA-FEIRA

insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(4, 1, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(4, 1, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(4, 3, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(4, 3, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(4, 4, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(4, 4, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(4, 5, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(4, 5, 'Noturno');

# Inserção dos PLANTÕES SEXTA-FEIRA

insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(5, 1, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(5, 1, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(5, 3, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(5, 3, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(5, 4, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(5, 4, 'Noturno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(5, 5, 'Diurno');
insert into PLANTÃO(Dia_da_Semana, Departamento_Numeração, Turno) values(5, 5, 'Noturno');

# Inserção dos PLANTÕES-ENFERMEIRO

insert into PLANTÃO_ENFERMEIRO(Dia_da_Semana, Departamento_Numeração, Turno, Enfermeiros_Registro) values(1, 1,'Diurno',1);
insert into PLANTÃO_ENFERMEIRO(Dia_da_Semana, Departamento_Numeração, Turno, Enfermeiros_Registro) values(2, 2,'Noturno',1);
insert into PLANTÃO_ENFERMEIRO(Dia_da_Semana, Departamento_Numeração, Turno, Enfermeiros_Registro) values(4, 5,'Diurno',2);
insert into PLANTÃO_ENFERMEIRO(Dia_da_Semana, Departamento_Numeração, Turno, Enfermeiros_Registro) values(5, 1,'Noturno',2);
insert into PLANTÃO_ENFERMEIRO(Dia_da_Semana, Departamento_Numeração, Turno, Enfermeiros_Registro) values(2, 2,'Diurno',3);
insert into PLANTÃO_ENFERMEIRO(Dia_da_Semana, Departamento_Numeração, Turno, Enfermeiros_Registro) values(3, 4,'Noturno',3);
insert into PLANTÃO_ENFERMEIRO(Dia_da_Semana, Departamento_Numeração, Turno, Enfermeiros_Registro) values(1, 3,'Diurno',4);
insert into PLANTÃO_ENFERMEIRO(Dia_da_Semana, Departamento_Numeração, Turno, Enfermeiros_Registro) values(3, 3,'Noturno',4);
insert into PLANTÃO_ENFERMEIRO(Dia_da_Semana, Departamento_Numeração, Turno, Enfermeiros_Registro) values(1, 4,'Diurno',5);
insert into PLANTÃO_ENFERMEIRO(Dia_da_Semana, Departamento_Numeração, Turno, Enfermeiros_Registro) values(3, 5,'Noturno',5);

# Inserção dos PLANTÕES-MÉDICO

insert into PLANTÃO_MÉDICO(Dia_da_Semana, Departamento_Numeração, Turno, Médicos_Registro) values(1, 1,'Diurno',1);
insert into PLANTÃO_MÉDICO(Dia_da_Semana, Departamento_Numeração, Turno, Médicos_Registro) values(3, 2,'Noturno',1);
insert into PLANTÃO_MÉDICO(Dia_da_Semana, Departamento_Numeração, Turno, Médicos_Registro) values(2, 5,'Diurno',2);
insert into PLANTÃO_MÉDICO(Dia_da_Semana, Departamento_Numeração, Turno, Médicos_Registro) values(3, 1,'Noturno',2);
insert into PLANTÃO_MÉDICO(Dia_da_Semana, Departamento_Numeração, Turno, Médicos_Registro) values(1, 2,'Diurno',3);
insert into PLANTÃO_MÉDICO(Dia_da_Semana, Departamento_Numeração, Turno, Médicos_Registro) values(3, 4,'Noturno',3);
insert into PLANTÃO_MÉDICO(Dia_da_Semana, Departamento_Numeração, Turno, Médicos_Registro) values(4, 3,'Diurno',4);
insert into PLANTÃO_MÉDICO(Dia_da_Semana, Departamento_Numeração, Turno, Médicos_Registro) values(3, 3,'Noturno',4);
insert into PLANTÃO_MÉDICO(Dia_da_Semana, Departamento_Numeração, Turno, Médicos_Registro) values(5, 4,'Diurno',5);
insert into PLANTÃO_MÉDICO(Dia_da_Semana, Departamento_Numeração, Turno, Médicos_Registro) values(3, 5,'Noturno',5);

# Inserção dos QUARTOS_SOCIAIS

insert into QUARTO_SOCIAL(Nª_da_Sala, Departamento_Numeração, Pacientes_idPacientes) values(1, 2,1);
insert into QUARTO_SOCIAL(Nª_da_Sala, Departamento_Numeração, Pacientes_idPacientes) values(2, 2,5);
insert into QUARTO_SOCIAL(Nª_da_Sala, Departamento_Numeração, Pacientes_idPacientes) values(1, 4,3);
insert into QUARTO_SOCIAL(Nª_da_Sala, Departamento_Numeração, Pacientes_idPacientes) values(2, 4,4);
insert into QUARTO_SOCIAL(Nª_da_Sala, Departamento_Numeração, Pacientes_idPacientes) values(1, 3,2);

# Inserção dos TELEFONES_PACIENTES

insert into TELEFONE_PACIENTE(idTelefone, Pacientes_idPacientes) values('(10) 15921-1311', 4);
insert into TELEFONE_PACIENTE(idTelefone, Pacientes_idPacientes) values('(70) 28415-6106', 1);
insert into TELEFONE_PACIENTE(idTelefone, Pacientes_idPacientes) values('(72) 12581-8169', 2);
insert into TELEFONE_PACIENTE(idTelefone, Pacientes_idPacientes) values('(45) 35108-2517', 3);
insert into TELEFONE_PACIENTE(idTelefone, Pacientes_idPacientes) values('(56) 67003-2806', 5);
insert into TELEFONE_PACIENTE(idTelefone, Pacientes_idPacientes) values('(22) 23468-4663', 6);
insert into TELEFONE_PACIENTE(idTelefone, Pacientes_idPacientes) values('(78) 11746-1225', 7);
insert into TELEFONE_PACIENTE(idTelefone, Pacientes_idPacientes) values('(22) 36556-9450', 8);
insert into TELEFONE_PACIENTE(idTelefone, Pacientes_idPacientes) values('(22) 19910-2251', 9);
insert into TELEFONE_PACIENTE(idTelefone, Pacientes_idPacientes) values('(32) 55379-2051', 10);

# Inserção dos TELEFONES_RESPONSÁVEIS

insert into TELEFONE_RESPONSÁVEL(idTelefone_Responsável, Responsável_Nome) values('(44) 50456-5044', 1);
insert into TELEFONE_RESPONSÁVEL(idTelefone_Responsável, Responsável_Nome) values('(19) 75918-6410', 2);
insert into TELEFONE_RESPONSÁVEL(idTelefone_Responsável, Responsável_Nome) values('(24) 86546-6751', 3);
insert into TELEFONE_RESPONSÁVEL(idTelefone_Responsável, Responsável_Nome) values('(37) 14455-9917', 4);
insert into TELEFONE_RESPONSÁVEL(idTelefone_Responsável, Responsável_Nome) values('(58) 54180-1752', 5);
insert into TELEFONE_RESPONSÁVEL(idTelefone_Responsável, Responsável_Nome) values('(56) 37631-2122', 6);
insert into TELEFONE_RESPONSÁVEL(idTelefone_Responsável, Responsável_Nome) values('(64) 55551-3978', 7);
insert into TELEFONE_RESPONSÁVEL(idTelefone_Responsável, Responsável_Nome) values('(11) 64171-8212', 8);
insert into TELEFONE_RESPONSÁVEL(idTelefone_Responsável, Responsável_Nome) values('(62) 63971-1241', 9);
insert into TELEFONE_RESPONSÁVEL(idTelefone_Responsável, Responsável_Nome) values('(29) 59833-3767', 10);

# Inserção das UTIS

insert into UTI(Nª_da_Sala, Departamento_Numeração, Pacientes_idPacientes) values(1, 2,6);
insert into UTI(Nª_da_Sala, Departamento_Numeração, Pacientes_idPacientes) values(2, 3,7);
insert into UTI(Nª_da_Sala, Departamento_Numeração, Pacientes_idPacientes) values(1, 4,8);
insert into UTI(Nª_da_Sala, Departamento_Numeração, Pacientes_idPacientes) values(2, 4,9);
insert into UTI(Nª_da_Sala, Departamento_Numeração, Pacientes_idPacientes) values(1, 3,10);

# Insersão dos Obitos

insert into Obitos (Causa_Obito, Data_Obito, Pacientes_idPacientes) values ( 'AVC', '2020/09/08 13:00:15',1);
insert into Obitos (Causa_Obito, Data_Obito, Pacientes_idPacientes) values ( 'Parada Respiratória', '2020/09/03 00:25:01',4);
insert into Obitos (Causa_Obito, Data_Obito, Pacientes_idPacientes) values ( 'Covid', '2020/10/01 03:01:53', 2);
insert into Obitos (Causa_Obito, Data_Obito, Pacientes_idPacientes) values ( 'Parada Respiratória', '2020/09/14 07:00:09',8);
insert into Obitos (Causa_Obito, Data_Obito, Pacientes_idPacientes) values ( 'Parada Cardíaca', '2020/07/01 18:05:23',6);

# Inserção Equipamentos

insert into Equipamentos ( N_Ventiladores, Departamento_Numeração) values(5 , 1);
insert into Equipamentos ( N_Ventiladores, Departamento_Numeração) values(2 , 2);
insert into Equipamentos ( N_Ventiladores, Departamento_Numeração) values(8 , 3);
insert into Equipamentos ( N_Ventiladores, Departamento_Numeração) values(1 , 4);
insert into Equipamentos ( N_Ventiladores, Departamento_Numeração) values(3 , 5);




