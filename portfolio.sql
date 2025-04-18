CREATE DATABASE faculdade;  
USE faculdade; 

CREATE TABLE curso ( id_curso INT AUTO_INCREMENT PRIMARY KEY, nome_curso VARCHAR(100) NOT NULL,  
duracao INT NOT NULL  
 
); 

CREATE TABLE aluno ( id_aluno INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(100) NOT NULL,  
data_nascimento DATE,  
email VARCHAR(100)  
 
); 

CREATE TABLE professor ( id_professor INT AUTO_INCREMENT PRIMARY KEY,  
nome VARCHAR(100) NOT NULL,  
especialidade VARCHAR(100),  
email VARCHAR(100)  
 
); 

CREATE TABLE disciplina ( id_disciplina INT AUTO_INCREMENT PRIMARY KEY,  
nome_disciplina VARCHAR(100) NOT NULL, 
 carga_horaria INT, 
 id_curso INT, FOREIGN KEY (id_curso)  
REFERENCES curso(id_curso)  
 
); 

CREATE TABLE turma ( id_turma INT AUTO_INCREMENT PRIMARY KEY, id_disciplina INT,  
id_professor INT, 
 semestre VARCHAR(10), 
 horario VARCHAR(50), 
 FOREIGN KEY (id_disciplina) 
 REFERENCES disciplina(id_disciplina), 
 FOREIGN KEY (id_professor)  
REFERENCES professor(id_professor) 
  
); 

CREATE TABLE matricula ( id_matricula INT AUTO_INCREMENT PRIMARY KEY, 
 id_aluno INT,  
id_turma INT,  
nota DECIMAL(5,2), 
 FOREIGN KEY (id_aluno)  
REFERENCES aluno(id_aluno), 
 FOREIGN KEY (id_turma)  
REFERENCES turma(id_turma) 
 ); 