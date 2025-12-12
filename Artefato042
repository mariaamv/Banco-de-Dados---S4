create database horariosdelaboratorios;
use horariosdelaboratorios;

create table Professor (
	matricula_prof int primary key not null auto_increment,
    nome_prof varchar(45) not null,
    data_nasc date not null
);

create table Disciplina (
	id_disciplina int primary key not null,
    nome_disciplina varchar(45) not null,
    carga_horaria datetime not null
);

create table horarios (
	id_horario int primary key not null,
    dia_semana date not null
);

create table LaboratorioHorarios (
	Laboratorio_id_lab int not null references Laboratorio(id_lab),
    Horarios_id_horario int not null references Horarios(id_horario)
);

create table laboratorio (
	id_lab int primary key not null,
    nome_lab int not null
);

create table AlunoDisciplina (
	Aluno_matricula_aluno int not null references Aluno(matricula_aluno),
    Disciplina_id_disciplina int not null references Disciplina(id_disciplina)
);
create table Aluno (
	matricula_aluno int primary key not null,
    nome_aluno varchar(45) not null,
    curso_aluno varchar(45) not null
);

create table Aula (
	Professor_matricula_prof int not null references Professor(matricula_prof),
    Disciplina_id_disciplina int not null references Disciplina(id_disciplina),
	Horarios_id_horario int not null references Horarios(id_horario)
);

drop table ProfessorDisciplina;
drop table DisciplinaTurma;
drop table Turma;
drop table DisciplinaHorarios;

