-- V2__Modify_schema.sql
-- Description: Modifies the schema to support dynamic questionnaires & other restriction changes

-- Creacion de tablas nuevas

CREATE TABLE IF NOT EXISTS preguntas (
  id serial PRIMARY KEY,
  nombre varchar NOT NULL,
  tipo varchar NOT NULL
);

CREATE TABLE IF NOT EXISTS cuestionarios (
  id serial PRIMARY KEY,
  nombre varchar NOT NULL,
  version varchar NOT NULL,
  activo boolean DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS preguntas_cuestionarios (
  id serial PRIMARY KEY,
  cuestionario_id int REFERENCES cuestionarios (id) NOT NULL,
  pregunta_id int REFERENCES preguntas (id) NOT NULL,
  orden int NOT NULL
);

CREATE TABLE IF NOT EXISTS antecedentes (
  id serial PRIMARY KEY,
  paciente_id int REFERENCES pacientes(id) NOT NULL,
  medicos varchar,
  familiares varchar,
  oculares varchar,
  alergicos varchar,
  otros varchar
);

CREATE TABLE IF NOT EXISTS consultas_preguntas (
  id serial PRIMARY KEY,
  consulta_id int REFERENCES consultas(id) NOT NULL,
  pregunta_id int REFERENCES preguntas(id) NOT NULL,
  ojo varchar(20),
  valor_texto varchar,
  valor_entero int,
  valor_booleano boolean,
  comentario varchar(150)
);

ALTER TABLE pacientes
  DROP COLUMN antecedentes;

ALTER TABLE consultas
  DROP COLUMN evaluacion;
