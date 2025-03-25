-- V7 Restrictions and Triggers
-- Implements revised restrictions

-- Secures 1:1 relationship between antecedentes and pacientes
ALTER TABLE antecedentes
  ADD CONSTRAINT unique_paciente_id UNIQUE(paciente_id);

-- Default cita duration to 20mins
ALTER TABLE citas
  ALTER COLUMN duracion SET DEFAULT (TIME '00:20:00');

-- Modify questionnaire & add unique restriction
ALTER TABLE consultas_preguntas
  DROP COLUMN IF EXISTS ojo,
  ADD COLUMN IF NOT EXISTS valores_textos varchar[],
  ADD COLUMN IF NOT EXISTS valores_enteros int[],
  ADD COLUMN IF NOT EXISTS valores_booleanos bool[],
  ADD CONSTRAINT check_textos_max2
    CHECK (array_length(valores_textos, 1) IS NULL
    OR array_length(valores_textos, 1) <=2),
  ADD CONSTRAINT check_enteros_max2
    CHECK (array_length(valores_enteros, 1) IS NULL
    OR array_length(valores_enteros, 1) <= 2),
  ADD CONSTRAINT check_booleanos_max2
    CHECK (array_length(valores_booleanos, 1) IS NULL
    OR array_length(valores_booleanos, 1) <= 2),
  ADD CONSTRAINT unique_consulta_pregunta UNIQUE(consulta_id, pregunta_id);

ALTER TABLE preguntas
  ADD COLUMN IF NOT EXISTS bilaterial bool NOT NULL;

