use horariosdelaboratorios;

insert into Professor (matricula_prof, nome_prof, data_nasc)
values (100, "Samuel", "1999-12-12");
insert into Professor (matricula_prof, nome_prof, data_nasc)
values (101, "Lyrane", "1990-05-12");
insert into Professor (matricula_prof, nome_prof, data_nasc)
values (102, "Danísio", "1960-06-06");
 
 select * from Professor;
 
 update Professor set data_nasc = "1999-12-12" where matricula_prof = 100; 
 select * from Professor;
 update Professor set data_nasc = "1990-05-12" where matricula_prof = 101; 
 select * from Professor;
 update Professor set data_nasc = "1960-06-06" where matricula_prof = 102; 
 select * from Professor;
 
 insert into Disciplina (id_disciplina, nome_disciplina, carga_horaria)
 values (200, "Banco de Dados");
 insert into Disciplina (id_disciplina, nome_disciplina, carga_horaria)
 values (201, "Metemática");
 insert into Disciplina (id_disciplina, nome_disciplina, carga_horaria)
 values (202, "Sistema de Comunicação");
 
 select * from Disciplina;
 
 