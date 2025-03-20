-- V6__Restrictions

-- Adds restrictions such as Default values, Uniques and Checks.

ALTER TABLE cuestionarios
  -- Unique constraint for version & name
  ADD CONSTRAINT unique_nombre_version UNIQUE(nombre, version),
  -- Default to false in activo
  ALTER COLUMN activo SET DEFAULT false;

ALTER TABLE preguntas_cuestionarios
  -- Unique constraint for cuestionario & pregunta, prevents duplicates
  ADD CONSTRAINT unique_cuestionario_pregunta UNIQUE(cuestionario_id, pregunta_id);

ALTER TABLE preguntas
  -- Unique constraint for name / type, prevents storing duplicate questions
  ADD CONSTRAINT unique_name_type UNIQUE(nombre, tipo);

ALTER TABLE consultas
  -- Default motivo to Consulta General
  ALTER COLUMN motivo SET DEFAULT 'Consulta General';

ALTER TABLE pacientes
  -- Telefono unico
  ADD CONSTRAINT unique_phone UNIQUE(telefono);
