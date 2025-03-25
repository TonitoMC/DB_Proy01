-- V8__Final_revisions
-- Update some column types after testing

alter table consultas add column if not exists fecha date not null;

alter table consultas drop column if exists diagnostico_id;

ALTER TABLE tratamientos 
ALTER COLUMN tiempo TYPE INTERVAL USING tiempo::INTERVAL,
ALTER COLUMN frecuencia TYPE INTERVAL USING frecuencia::INTERVAL;

ALTER TABLE horarios_laborales
  DROP COLUMN IF EXISTS dia_semana,
  ADD COLUMN IF NOT EXISTS dia_semana int not null;

CREATE UNIQUE INDEX IF NOT EXISTS idx_cuestionario_unico_activo
ON cuestionarios (nombre)
WHERE activo = true;
