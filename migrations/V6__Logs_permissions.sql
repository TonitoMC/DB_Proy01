-- V6__Logs_permissions.sql

-- Adds audit logs, users & user permissions.
-- Creates table 'tutores' to manage contact information for underage patients

-- telefono is now null for underage patients
ALTER TABLE pacientes
  ALTER COLUMN telefono DROP NOT NULL;

CREATE TABLE IF NOT EXISTS tutores (
  id serial PRIMARY KEY,
  paciente_id int NOT NULL REFERENCES pacientes (id),
  nombre varchar NOT NULL,
  telefono varchar NOT NULL,
  parentesco varchar NOT NULL,
  es_contacto_principal bool NOT NULL
);

-- Usuarios to manage different users
CREATE TABLE IF NOT EXISTS usuarios (
  id serial PRIMARY KEY,
  username varchar NOT NULL,
  password_hash varchar NOT NULL,
  correo varchar NOT NULL
);

CREATE TABLE IF NOT EXISTS roles (
  id serial PRIMARY KEY,
  nombre varchar NOT NULL,
  descripcion varchar NOT NULL
);

CREATE TABLE IF NOT EXISTS permisos (
  id serial PRIMARY KEY,
  name varchar NOT NULL,
  descripcion varchar NOT NULL
);

CREATE TABLE IF NOT EXISTS usuarios_roles (
  id serial PRIMARY KEY,
  usuario_id int NOT NULL REFERENCES usuarios (id),
  rol_id int NOT NULL REFERENCES roles (id)
);

CREATE TABLE IF NOT EXISTS roles_permisos (
  id serial PRIMARY KEY,
  rol_id int NOT NULL REFERENCES roles (id),
  permiso_id int NOT NULL REFERENCES permisos (id)
);

-- Special date for date-specific time slots
CREATE TABLE IF NOT EXISTS horarios_especiales (
  id serial PRIMARY KEY,
  fecha date NOT NULL,
  hora_apertura time NOT NULL,
  hora_cierre time NOT NULL
);

-- Day-of-the-week specific time slots (as defaults)
CREATE TABLE IF NOT EXISTS horarios_laborales (
  id serial PRIMARY KEY,
  dia_semana varchar NOT NULL,
  hora_apertura time NOT NULL,
  hora_cierre time NOT NULL
);
