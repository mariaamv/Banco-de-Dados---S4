use horariosdelaboratorios;

insert into Professor (matricula_prof, nome_prof, data_nasc)
values (100, "Samuel", "1999-12-12");
insert into Professor (matricula_prof, nome_prof, data_nasc)
values (101, "Lyrane", "1990-05-12");
insert into Professor (matricula_prof, nome_prof, data_nasc)
values (102, "Danísio", "1960-06-06");
 
 select * from Professor;
 
 insert into Disciplina (id_disciplina, nome_disciplina, carga_horaria)
 values (200, "Banco de Dados");
 insert into Disciplina (id_disciplina, nome_disciplina, carga_horaria)
 values (201, "Metemática");
 insert into Disciplina (id_disciplina, nome_disciplina, carga_horaria)
 values (202, "Sistema de Comunicação");
 
 select * from Disciplina;
 
 insert into  Horarios (id_horario, dia_semana)
 values (300, "Sexta-Feira");
 insert into  Horarios (id_horario, dia_semana)
 values (301, "Segunda-Feira");
 insert into  Horarios (id_horario, dia_semana)
 values (302, "Terça-Feira");
 
 select * from Horarios;