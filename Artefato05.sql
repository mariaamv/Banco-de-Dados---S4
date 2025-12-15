use horariosdelaboratorios;

-- inserção de dados no banco de dados

insert into Professor (matricula_prof, nome_prof, data_nasc)
values (100, "Samuel", "1999-12-12");
insert into Professor (matricula_prof, nome_prof, data_nasc)
values (101, "Lyrane", "1990-05-12");
insert into Professor (matricula_prof, nome_prof, data_nasc)
values (102, "Danísio", "1960-06-06");
 
 select * from Professor;
 
 insert into Disciplina (id_disciplina, nome_disciplina, carga_horaria)
 values (200, "Programação Web");
 insert into Disciplina (id_disciplina, nome_disciplina, carga_horaria)
 values (201, "POO");
 insert into Disciplina (id_disciplina, nome_disciplina, carga_horaria)
 values (202, "Matemática");
 
 select * from Disciplina;
 
 insert into  Horarios (id_horario, dia_semana)
 values (300, "Sexta");
 insert into  Horarios (id_horario, dia_semana)
 values (301, "Segunda");
 insert into  Horarios (id_horario, dia_semana)
 values (302, "Terça");
 
 select * from Horarios;
 
 insert into Aluno (matricula_aluno, nome_aluno, curso_aluno)
 values (2024, "Luma", "Farmácia");
 insert into Aluno (matricula_aluno, nome_aluno, curso_aluno)
 values (2023, "Fernanda", "Sistemas de Informaçâo");
 insert into Aluno (matricula_aluno, nome_aluno, curso_aluno)
 values (2025, "Werych", "Ciências da Computação");
 
 select * from Aluno;
 
 insert into Laboratorio (id_lab, nome_lab)
 values (400, "Lab.Info");
 insert into Laboratorio (id_lab, nome_lab)
 values (401, "Lab.Eletro");
 insert into Laboratorio (id_lab, nome_lab)
 values (402, "Lab.Mec");
 
 select * from Laboratorio;
 
 update laboratorio set nome_lab = "Lab Eng.Elet"
 where id_lab = 400;
 
 select * from Laboratorio;
 
  insert into Aula (Professor_matricula_prof, Disciplina_id_disciplina, Horarios_id_horario)
  values(100, 200, 300);
  insert into Aula (Professor_matricula_prof, Disciplina_id_disciplina, Horarios_id_horario)
  values(101, 201, 301);
  insert into Aula (Professor_matricula_prof, Disciplina_id_disciplina, Horarios_id_horario)
  values(101, 201, 301);
 
 select * from Aula;
 
 insert into LaboratorioHorarios (Laboratorio_id_lab, Horario_id_horario)
 values(400, 300);
 insert into LaboratorioHorarios (Laboratorio_id_lab, Horario_id_horario)
 values(401, 301);
 insert into LaboratorioHorarios (Laboratorio_id_lab, Horario_id_horario)
 values(402, 302);
 
 select * from Laboratoriohorarios;
 
 insert into Alunodisciplina (Aluno_matricula_aluno, Disciplina_id_disciplina)
 values(2024, 300);
 insert into Alunodisciplina (Aluno_matricula_aluno, Disciplina_id_disciplina)
 values(2023, 301);
 insert into Alunodisciplina (Aluno_matricula_aluno, Disciplina_id_disciplina)
 values(2025, 302);
 
 select * from AlunoDisciplina;
 
 -- Listando nome de professores e sua data de nasc
 select nome_prof, data_nasc
 from Professor;
 
 -- Listando nome da disciplina e sua carga horária
 select nome_disciplina, carga_horaria 
 from Disciplina;
 
 -- Listando o aluno pelo seu curso
 select nome_aluno, curso_aluno
 from Aluno 
 where curso_aluno = "Ciências da Computação";
 
 -- atualizar carga horária de uma disciplina
update Disciplina
set carga_horaria = 80
where id_disciplina = 200;

-- remover aluno específico
delete from aluno Aluno
where matricula_aluno = 2025;

-- nome do professor, disciplina e dia da semana da aula
select Professor.nome_prof, Disciplina.nome_disciplina, horarios.dia_semana
from aula
join Professor professor on aula.Professor.nome_prof = professor.matricula_prof
join Disciplina disciplina on aula.Disciplina.id_disciplina = disciplina.id_disciplina
join horarios.dia_semana on aula.Horarios.id_horario = Horarios.id_horario;

-- disciplina cada professor ministra
select Professor.nome_prof, Disciplina.nome_disciplina
from Aula 
join Professor professor on Aula.Professor_matricula_prof = Professor.matricula_prof
join Disciplina disciplina on aula.Disciplina_id_disciplina = Disciplina.id_disciplina;

