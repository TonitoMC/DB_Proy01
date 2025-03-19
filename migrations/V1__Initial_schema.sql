CREATE TABLE IF NOT EXISTS pacientes (
  id serial PRIMARY KEY,
  nombre varchar NOT NULL,
  fecha_nacimiento date,
  telefono varchar NOT NULL,
  sexo varchar,
  antecedentes jsonb
);

CREATE TABLE IF NOT EXISTS citas (
  id serial PRIMARY KEY,
  paciente_id int  NOT NULL REFERENCES pacientes (id),
  fecha timestamp NOT NULL,
  duracion time NOT NULL
);

CREATE TABLE IF NOT EXISTS diagnosticos (
  id serial PRIMARY KEY,
  tratamiento int NOT NULL,
  recomendacion varchar
);

CREATE TABLE IF NOT EXISTS consultas (
  id serial PRIMARY KEY,
  paciente_id int NOT NULL REFERENCES pacientes (id),
  motivo varchar NOT NULL,
  evaluacion jsonb,
  diagnostico_id int NOT NULL REFERENCES diagnosticos (id)
);

CREATE TABLE IF NOT EXISTS tratamientos (
  id serial PRIMARY KEY,
  componente_activo varchar NOT NULL,
  presentacion varchar NOT NULL,
  dosificacion float NOT NULL,
  tiempo time NOT NULL
);

CREATE TABLE IF NOT EXISTS examenes (
  id serial PRIMARY KEY,
  paciente_id int NOT NULL REFERENCES pacientes (id),
  consulta_id  int NOT NULL REFERENCES consultas (id),
  tipo varchar NOT NULL,
  fecha date,
  ruta_archivo varchar
);
