create database horariosdelaboratorios;
use horariosdelaboratorios;

create table Professor (
	matricula_prof int primary key not null auto_increment,
    nome_prof varchar(45) not null,
    data_nasc date not null
);

create table ProfessorDisciplina (
	Professor_matricula_prof int not null references Professor(matricula_prof),
    Disciplina_id_disciplina int not null references Disciplina(id_disciplina)
);

create table Disciplina (
	id_disciplina int primary key not null,
    nome_disciplina varchar(45) not null,
    carga_horaria datetime not null
);

create table DisciplinaTurma (
	Disciplina_id_disciplina int not null references Disciplina(id_disciplina),
    Turma_id_turma int not null references Turma(id_turma)
);

create table Turma (
	id_turma int primary key not null,
    nome_turma varchar(45) not null
);

create table DisciplinaHorarios (
	Disciplina_id_disciplina int not null references Disciplina(id_disciplina),
    Horarios_id_horarios int not null references Horarios(id_horarios)
);

create table horarios (
	id_horario int primary key not null,
    dia_semana date not null
);

create table Aluno (
	matricula_aluno int primary key not null,
    nome_aluno varchar(45) not null,
    curso_aluno varchar(45) not null
);